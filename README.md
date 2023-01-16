![banques-us-remboursent-mal-fraude-paiements-instantanes-InCyber](https://user-images.githubusercontent.com/91103250/209026863-75ec5efe-4f38-4e83-8fec-c80f8fc7c0b3.jpg)

# Modelo Preditivo - Fraude Bancária
O objetivo dessa análise é identificar uma possível fraude com base nos dados pessoas de cada cliente, como idade, renda, risco de crédito e etc. O dataset foi disponibilizado 
no Kaggle de maneira pública.

Fonte do dataset: https://www.kaggle.com/datasets/sgpjesus/bank-account-fraud-dataset-neurips-2022

## Dicionário de Dados
Variáveis:

- fraud bool: Marcador para Fraude (1 se é fraude, 0 se é legítimo).
- income: Renda anual das aplicações em quartis. Valores entre [0, 1].
- name_email_similarity: Métrica de similaridade entre e-mail e nome de quem aplicou. Quanto maior o valor, maior a similaridade. Valores entre [0, 1].
- prev_address_months_count: Número de meses registrados no endereço de quem aplicou, em outras palavras a residência anterior de quem apliccou, se disponível. Valores entre [−1, 380] meses (-1 para valores missing).
- current_address_months_count: Meses que o requerente está registrado no endereço atual. Valores entre [−1, 406] meses (-1 para valores missing).
- customer_age: Idade do requerente segmentado por décadas (exemplo, 20-29 é representado como 20).
- days_since_request: Número de dias que passaram desde que a aplicação foi feita. Valores entre [0, 78] dias.
- intended_balcon_amount: Qauntidade transferida inicialmente. Valores entre [−1, 108].
- payment_type: Tipo de plano de crédito. 5 valores possíveis (anônimo).
- zip_count_4w: Número de aplicações com o mesmo código postal nas últimas 4 semanas. Valores entre [1, 5767].
- velocity_6h: Velocidade do total de aplicações realizadas nas últimas 6 horas, ou seja, número médio de aplicações por hora nas últimas 6 horas. Varia entre [−211, 24763].
- velocity_24h: Velocidade do total de aplicações realizadas nas últimas 24 horas, ou seja, número médio de aplicações por hora nas últimas 24 horas. Varia entre [1329, 9527].
- velocity_4w: Velocidade do total de aplicações realizadas nas últimas 4 semanas, ou seja, número médio de aplicações por hora nas últimas 4 semanas. Varia entre [2779, 7043].
- bank_branch_count_8w: Número total de aplicações na agência bancária selecionada nas últimas 8 semanas. Varia entre [0, 2521].
- date_of_birth_distinct_emails_4w: Número de e-mails para candidatos com a mesma data de nascimento nas últimas 4 semanas. Varia entre [0, 42].
- employment_status: Situação profissional do requerente. 7 valores possíveis (anônimos).
- credit_risk_score: Pontuação interna do risco do aplicativo. Varia entre [−176, 387].
- email_is_free: Domínio do e-mail do aplicativo (gratuito ou pago).
- housing_status: Situação residencial atual do requerente. 7 valores possíveis (anônimos).
- phone_home_valid: Validade do telefone residencial fornecido.
- phone_mobile_valid: Validade do telefone celular fornecido.
- bank_months_count: Quantos anos tem a conta anterior (se mantida) em meses. Varia entre [−1, 31] meses (-1 para valores missing).
- has_other_cards: Se o requerente tiver outros cartões da mesma empresa bancária.
- proposed_credit_limit: Limite de crédito proposto pelo requerente. Varia entre [200, 2000].
- foreign_request: se o país de origem do pedido for diferente do país do banco.
- source: Fonte online de aplicação. Navegador (INTERNET) ou aplicativo móvel (APP).
- session_length_in_minutes: Duração da sessão do usuário no site bancário em minutos. Varia entre [−1, 107] minutos
- device_os: Sistema operacional do dispositivo que fez o pedido. Os valores possíveis são: Windows, Mac, Linux, X11 ou outro.
- keep_alive_session: Opção do usuário ao sair da sessão.
- device_distinct_emails_8w: Número de e-mails distintos no site bancário do dispositivo usado nas últimas 8 semanas. Varia entre [0, 3].
- device_fraud_count: Número de aplicativos fraudulentos com dispositivo usado. Varia entre [0, 1].
- month: Mês em que foi feito o pedido. Varia entre [0, 7].

Informações do Dataset:
- Total de Registros: 1.000.000
- Total de Atributos: 32
