- view: Web_Analytics_Details
  
  sql_table_name: LOOKER.webanalytics_data
  fields:


  - dimension: W_DATE
    type: date
    label: 'Date'
    sql: ${TABLE}.W_DATE

  - dimension: REGION
    type: string
    sql: ${TABLE}.REGION

  - dimension: SESSIONS
    type: string
    sql: ${TABLE}.SESSIONS

  - dimension: PERCENT_NEW_SESSIONS
    type: string
    sql: ${TABLE}.PERCENT_NEW_SESSIONS

  - dimension: NEW_USERS
    type: string
    sql: ${TABLE}.NEW_USERS
    
  - dimension: BOUNCE_RATE
    type: string
    sql: ${TABLE}.BOUNCE_RATE

  - dimension: PAGES_BY_SESSION
    type: string
    sql: ${TABLE}.PAGES_BY_SESSION
    
    
  
  - dimension: AVG_SESSION_DURATION
    type: string
    sql: ${TABLE}.AVG_SESSION_DURATION
    
    
    
  # measures
  
  - measure: SESSIONS_m
    type: sum
    label: 'Sessions'
    value_format: '#,###'
    sql: ${SESSIONS}

  - measure: PERCENT_NEW_SESSIONS_m
    label: 'New Sessions Percentage'
    value_format: '0\%'
    type: sum
    sql: ${PERCENT_NEW_SESSIONS}

  - measure: NEW_USERS_m
    type: sum
    value_format: '#,###'
    label: 'New Users'
    sql: ${NEW_USERS}
    
  - measure: BOUNCE_RATE_m
    type: sum
    value_format: '0\%'
    label: 'Bounce Rate'
    sql: ${BOUNCE_RATE}

  - measure: PAGES_BY_SESSION_m
    type: sum
    value_format: '0.0000'
    label: 'Pages / Sessions'
    sql: ${PAGES_BY_SESSION}
    
    
  
 
    
    
  
 