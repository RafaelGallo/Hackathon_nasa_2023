# Font: https://opendatasus.saude.gov.br/dataset/srag-2020

# # 1. Imports


import pandas as pd

# ## 2.1 SRAG 2020 - Severe Acute Respiratory Syndrome Database - including COVID-19 data

# In[2]:


df_SUS = pd.read_csv('../SUS-database/INFLUD20-01-05-2023.csv', sep=';')

df_SUS.head()

# Setting up the date field
df_SUS['DT_NOTIFIC'] = pd.to_datetime(df_SUS['DT_NOTIFIC'])

# ### 2.2.1 Selecting the features to be used

features = {
    'DT_NOTIFIC': '''Data de preenchimento da ficha de notificação.''',
    'ID_MUNICIP': '''Município onde está localizada a Unidade Sentinela que realizou a notificação.''',
    'CO_MUN_NOT': '''Município onde está localizada a Unidade Sentinela que realizou a notificação.''',
    'CS_SEXO': '''Sexo do paciente:
    1-Masculino
    2-Feminino
    9-Ignorado''',
    'NU_IDADE_N': '''Idade informada pelo paciente quando não se sabe a data de nascimento. Na falta desse dado é registrada a idade.''',
    'CS_RACA': '''Cor ou raça declarada pelo paciente:
    1-Branca
    2-Preta
    3-Amarela
    4-Parda
    5-Indígena
    9-Ignorado''',
    'CS_ESCOL_N': '''Escolaridade:
    0-Sem escolaridade/Analfabeto
    1-Fundamental 1º ciclo (1ª a 5ª série)
    2-Fundamental 2º ciclo (6ª a 9ª série)
    3- Médio (1º ao 3º ano)
    4-Superior
    5-Não se aplica
    9-Ignorado''',
    'CS_ZONA': '''Zona de residência:
    1-Urbana
    2-Rural
    3-Periurbana
    9-Ignorado''',
    'FEBRE': '''Febre:
    1-Sim
    2-Não
    9-Ignorado''',
    'TOSSE': '''Tosse:
    1-Sim
    2-Não''',
    'GARGANTA': '''Dor de garganta:
    1-Sim
    2-Não
    9-Ignorado''',
    'DISPNEIA': '''Dispneia:
    1-Sim
    2-Não
    9-Ignorado''',
    'DESC_RESP': '''Desconforto respiratório:
    1-Sim
    2-Não
    9-Ignorado''',
    'SATURACAO': '''Saturação de O2 menor que 95%:
    1-Sim
    2-Não
    9-Ignorado''',
    'DIARREIA': '''Diarreia:
    1-Sim
    2-Não
    9-Ignorado''',
    'VOMITO': '''Vômito:
    1-Sim
    2-Não
    9-Ignorado''',
    'FADIGA': '''Fadiga:
    1-Sim
    2-Não
    9-Ignorado''',
    'PERD_OLFT': '''Perda de olfato:
    1-Sim
    2-Não
    9-Ignorado''',
    'PERD_PALA': '''Perda de paladar:
    1-Sim
    2-Não
    9-Ignorado''',
    'FATOR_RISC': '''Fator de risco:
    1-Sim
    2-Não
    9-Ignorado''',
    'CARDIOPATI': '''Paciente possui Doença Cardiovascular Crônica?
    1-Sim
    2-Não
    9-Ignorado''',
    'ASMA': '''Paciente possui Asma?
    1-Sim
    2-Não
    9-Ignorado''',
    'PNEUMOPATI': '''Paciente possui outra pneumopatia crônica?
    1-Sim
    2-Não
    9-Ignorado''',
    'UTI': '''Paciente foi internado?
    1-Sim
    2-Não
    9-Ignorado''',
    'HOSPITAL': '''O paciente foi internado?
    1-Sim
    2-Não
    9-Ignorado''',
    'EVOLUCAO': '''Evolução do paciente:
    1-Cura
    2-Óbito
    3-Óbito por outras causas
    9-Ignorado'''
}

df_SUS = df_SUS[features.keys()]


# ### 2.2.2 Removing data with inconsistent ages

df_SUS['NU_IDADE_N'].unique()

filter = df_SUS['NU_IDADE_N'] >=0
df_SUS = df_SUS[filter]
df_SUS['NU_IDADE_N'].unique()


# ### 2.2.3 Restricting the search to the state of São Paulo

filter = df_SUS['ID_MUNICIP'] == 'SAO PAULO'
df_SUS = df_SUS[filter]
df_SUS.head()


# ## 2.2 POWER_Point_Monthly_Timeseries loading

df_power = pd.read_csv('../POWER_Data_Access_Viewer/POWER_Point_Monthly_Timeseries_2000_2020_023d5627S_046d6552W_LST.csv', sep=';')

df_power.head()


# ### 2.2.1 Data Transformation, Pivot

# Usando a função melt para empilhar os meses
melted_df = pd.melt(df_power, id_vars=['YEAR', 'PARAMETER'], var_name='Month', value_name='Value')

# Pivotando o DataFrame para ter os parâmetros como colunas
pivoted_df = melted_df.pivot_table(index=['YEAR', 'Month'], columns='PARAMETER', values='Value').reset_index()

# Renomeando a coluna 'Month' para 'MONTH'
pivoted_df.rename(columns={'Month': 'MONTH'}, inplace=True)

# ### 2.2.2 Data Clear

filter = pivoted_df['MONTH'] != 'ANN'
pivoted_df = pivoted_df[filter]
pivoted_df.head()

# ## 2.3 Air quality data loading

df = pd.read_csv('../Air-database/dados.csv')
df = df[['dataType','day','value']]


# ### 2.3.1 Data Transformation, Pivot

# Using the pivot function to reorganize the DataFrame
df_pivot = df.pivot(index='day', columns='dataType', values='value')

# Resetting the index to make 'day' become a column again.
df_pivot.reset_index(inplace=True)

# Renaming the columns to remove the name 'dataType'.
df_pivot.columns.name = None
df_pivot['day'] = pd.to_datetime(df_pivot['day'])
df_pivot.head()

# ## 2.4 Merging the SUS (Unified Health System) data with the air quality data and data NASA.

result_df = pd.merge(df_SUS,df_pivot, left_on='DT_NOTIFIC', right_on='day', how='left')
result_df.head()

result_df['MONTH'] = result_df['DT_NOTIFIC'].dt.strftime('%b').str.upper()

result_df['YEAR'] = list(result_df['DT_NOTIFIC'].dt.year)
result_df.head()

result_df2 = result_df.merge(pivoted_df, on=['YEAR', 'MONTH'], how='left')
result_df2.head()


# # 3. Importando dados para o Banco Mysql

from sqlalchemy import create_engine
import mysql.connector
from decouple import config
import dotenv
dotenv.load_dotenv()


DB_USER = config('DB_USER')
DB_PASSWORD = config('DB_PASSWORD')
DB_HOST = config('DB_HOST')
DB_PORT = config('DB_PORT', default=3306, cast=int)
DB_DATABASE = config('DB_DATABASE')

# Crie um engine SQLAlchemy para MySQL
engine = create_engine(f"mysql+mysqlconnector://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_DATABASE}")

result_df2.to_sql('tb_data', engine, if_exists='replace', index=False)

result_df2.columns


pivoted_df['YEAR'].unique()
