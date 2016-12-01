view: Web_T {
  sql_table_name: LOOKER.WEB_T ;;

  dimension: BOUNCE_RATE {
    type: string
    sql: ${TABLE}.BOUNCE_RATE ;;
  }

  dimension: NEW_SESSIONS {
    type: string
    sql: ${TABLE}.NEW_SESSIONS ;;
  }

  dimension: PAGE_VIEWS {
    type: string
    sql: ${TABLE}.PAGE_VIEWS ;;
  }

  dimension: PAGES__SESSIONS {
    type: string
    sql: ${TABLE}.PAGES__SESSIONS ;;
  }

  dimension: SESSIONS_T {
    type: string
    sql: ${TABLE}.SESSIONS_T ;;
  }

  dimension: USERS {
    type: string
    sql: ${TABLE}.USERS ;;
  }

  dimension: YEAR_ {
    type: string
    sql: ${TABLE}.YEAR_ ;;
  }

  dimension: MONTH {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: BROWSER {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  dimension: SESSION_BY_BROWSER {
    type: string
    sql: ${TABLE}.SESSION_BY_BROWSER ;;
  }

  dimension: PAGE_NAME {
    type: string
    sql: ${TABLE}.PAGE_NAME ;;
  }

  dimension: SESSIONS_P {
    type: string
    sql: ${TABLE}.SESSIONS_P ;;
  }

  dimension: CHANNEL {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: SESSIONS_C {
    type: string
    sql: ${TABLE}.SESSIONS_C ;;
  }

  # MEASURES

  measure: BOUNCE_RATE_m {
    type: sum
    label: "Bounce Rate"
    sql: ${BOUNCE_RATE}*100 ;;
  }

  measure: NEW_SESSIONS_m {
    type: sum
    label: "New Sessions"
    value_format: "#,##0"
    sql: ${NEW_SESSIONS}*100 ;;
  }

  measure: PAGE_VIEWS_m {
    type: sum
    label: "Page Views"
    sql: ${PAGE_VIEWS} ;;
  }

  measure: PAGES__SESSIONS_m {
    type: sum
    label: "Pages/Sessions"
    sql: ${PAGES__SESSIONS} ;;
  }

  measure: SESSIONS_T_m {
    type: sum
    label: "Sessions"
    sql: ${SESSIONS_T} ;;
  }

  measure: USERS_m {
    type: sum
    label: "Users"
    sql: ${USERS} ;;
  }

  measure: SESSION_BY_BROWSER_m {
    type: sum
    label: "Sessions Per Browser "
    value_format: "#,##0"
    sql: ${SESSION_BY_BROWSER} ;;
  }

  measure: PAGE_NAME_m {
    type: sum
    sql: ${PAGE_NAME}. ;;
  }

  measure: SESSIONS_P_m {
    type: sum
    label: "Sessions Per Page "
    value_format: "#,##0"
    sql: ${SESSIONS_P} ;;
  }

  measure: SESSIONS_C_m {
    type: sum
    label: "Total Sessions"
    value_format: "#,##0"
    sql: ${SESSIONS_C} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
