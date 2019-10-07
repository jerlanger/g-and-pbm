view: unique_piiidentifier_by_cookie_domain {
  derived_table: {
    sql: SELECT cookiedomain, approx_distinct(piiidentifier) total
      FROM auto_sellable.sellable_pair
      WHERE date_p = '20190910'
      GROUP BY 1
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

  measure: total {
    type: sum
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [cookiedomain, total]
  }
}
