view: algorithm_class_by_cookie_domain {
  derived_table: {
    sql: SELECT * FROM tmp_looker.algo_class_by_cookie_domain
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cookiedomain {
    type: string
    sql: ${TABLE}.cookiedomain ;;
  }

  dimension: algorithm {
    type: string
    sql: ${TABLE}.algorithm ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [cookiedomain, algorithm, total]
  }
}
