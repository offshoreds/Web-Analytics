view: web_analytics {
  sql_table_name: LOOKER.WEB_ANALYTICS ;;

  dimension: pageviews {
    type: string
    sql: ${TABLE}.PAGEVIEWS ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: timestamp_w {
    type: string
    sql: ${TABLE}.TIMESTAMP_W ;;
  }

  dimension: users {
    type: string
    sql: ${TABLE}.USERS ;;
  }

  # measures

  measure: pageviews_m {
    type: sum
    value_format: "#,###"
    label: "Page Views"
    sql: ${pageviews} ;;
  }

  measure: session_id_m {
    label: "Sessions"
    type: number
    value_format: "#,###"
    sql: ${session_id} ;;
  }

  measure: users_m {
    label: "Users"
    type: sum
    value_format: "#,###"
    sql: ${users} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
