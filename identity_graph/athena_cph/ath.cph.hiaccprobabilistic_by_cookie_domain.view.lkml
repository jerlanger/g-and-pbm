view: hiaccprobabilistic_by_cookie_domain {
  derived_table: {
    sql: SELECT cookiedomain,
        SUM(CASE WHEN hiaccprobabilistic >0 AND hiaccprobabilistic <0.025 THEN 1 ELSE 0 END) bucket_1,
        SUM(CASE WHEN hiaccprobabilistic >=0.025 AND hiaccprobabilistic <0.05 THEN 1 ELSE 0 END) bucket_2,
        SUM(CASE WHEN hiaccprobabilistic >=0.05 AND hiaccprobabilistic <0.075 THEN 1 ELSE 0 END) bucket_3,
        SUM(CASE WHEN hiaccprobabilistic >=0.075 AND hiaccprobabilistic <0.1 THEN 1 ELSE 0 END) bucket_4,
        SUM(CASE WHEN hiaccprobabilistic >=0.1 AND hiaccprobabilistic <0.125 THEN 1 ELSE 0 END) bucket_5,
        SUM(CASE WHEN hiaccprobabilistic >=0.125 AND hiaccprobabilistic <0.15 THEN 1 ELSE 0 END) bucket_6,
        SUM(CASE WHEN hiaccprobabilistic >=0.15 AND hiaccprobabilistic <0.175 THEN 1 ELSE 0 END) bucket_7,
        SUM(CASE WHEN hiaccprobabilistic >=0.175 AND hiaccprobabilistic <0.2 THEN 1 ELSE 0 END) bucket_8,
        SUM(CASE WHEN hiaccprobabilistic >=0.2 AND hiaccprobabilistic <0.225 THEN 1 ELSE 0 END) bucket_9,
        SUM(CASE WHEN hiaccprobabilistic >=0.225 AND hiaccprobabilistic <0.25 THEN 1 ELSE 0 END) bucket_10,
        SUM(CASE WHEN hiaccprobabilistic >=0.25 AND hiaccprobabilistic <0.275 THEN 1 ELSE 0 END) bucket_11,
        SUM(CASE WHEN hiaccprobabilistic >=0.275 AND hiaccprobabilistic <0.3 THEN 1 ELSE 0 END) bucket_12,
        SUM(CASE WHEN hiaccprobabilistic >=0.3 AND hiaccprobabilistic <0.325 THEN 1 ELSE 0 END) bucket_13,
        SUM(CASE WHEN hiaccprobabilistic >=0.325 AND hiaccprobabilistic <0.35 THEN 1 ELSE 0 END) bucket_14,
        SUM(CASE WHEN hiaccprobabilistic >=0.35 AND hiaccprobabilistic <0.375 THEN 1 ELSE 0 END) bucket_15,
        SUM(CASE WHEN hiaccprobabilistic >=0.375 AND hiaccprobabilistic <0.4 THEN 1 ELSE 0 END) bucket_16,
        SUM(CASE WHEN hiaccprobabilistic >=0.4 AND hiaccprobabilistic <0.425 THEN 1 ELSE 0 END) bucket_17,
        SUM(CASE WHEN hiaccprobabilistic >=0.425 AND hiaccprobabilistic <0.45 THEN 1 ELSE 0 END) bucket_18,
        SUM(CASE WHEN hiaccprobabilistic >=0.45 AND hiaccprobabilistic <0.475 THEN 1 ELSE 0 END) bucket_19,
        SUM(CASE WHEN hiaccprobabilistic >=0.475 AND hiaccprobabilistic <0.5 THEN 1 ELSE 0 END) bucket_20,
        SUM(CASE WHEN hiaccprobabilistic >=0.5 AND hiaccprobabilistic <0.525 THEN 1 ELSE 0 END) bucket_21,
        SUM(CASE WHEN hiaccprobabilistic >=0.525 AND hiaccprobabilistic <0.55 THEN 1 ELSE 0 END) bucket_22,
        SUM(CASE WHEN hiaccprobabilistic >=0.55 AND hiaccprobabilistic <0.575 THEN 1 ELSE 0 END) bucket_23,
        SUM(CASE WHEN hiaccprobabilistic >=0.575 AND hiaccprobabilistic <0.6 THEN 1 ELSE 0 END) bucket_24,
        SUM(CASE WHEN hiaccprobabilistic >=0.6 AND hiaccprobabilistic <0.625 THEN 1 ELSE 0 END) bucket_25,
        SUM(CASE WHEN hiaccprobabilistic >=0.625 AND hiaccprobabilistic <0.65 THEN 1 ELSE 0 END) bucket_26,
        SUM(CASE WHEN hiaccprobabilistic >=0.65 AND hiaccprobabilistic <0.675 THEN 1 ELSE 0 END) bucket_27,
        SUM(CASE WHEN hiaccprobabilistic >=0.675 AND hiaccprobabilistic <0.7 THEN 1 ELSE 0 END) bucket_28,
        SUM(CASE WHEN hiaccprobabilistic >=0.7 AND hiaccprobabilistic <0.725 THEN 1 ELSE 0 END) bucket_29,
        SUM(CASE WHEN hiaccprobabilistic >=0.725 AND hiaccprobabilistic <0.75 THEN 1 ELSE 0 END) bucket_30,
        SUM(CASE WHEN hiaccprobabilistic >=0.75 AND hiaccprobabilistic <0.775 THEN 1 ELSE 0 END) bucket_31,
        SUM(CASE WHEN hiaccprobabilistic >=0.775 AND hiaccprobabilistic <0.8 THEN 1 ELSE 0 END) bucket_32,
        SUM(CASE WHEN hiaccprobabilistic >=0.8 AND hiaccprobabilistic <0.825 THEN 1 ELSE 0 END) bucket_33,
        SUM(CASE WHEN hiaccprobabilistic >=0.825 AND hiaccprobabilistic <0.85 THEN 1 ELSE 0 END) bucket_34,
        SUM(CASE WHEN hiaccprobabilistic >=0.85 AND hiaccprobabilistic <0.875 THEN 1 ELSE 0 END) bucket_35,
        SUM(CASE WHEN hiaccprobabilistic >=0.875 AND hiaccprobabilistic <0.9 THEN 1 ELSE 0 END) bucket_36,
        SUM(CASE WHEN hiaccprobabilistic >=0.9 AND hiaccprobabilistic <0.925 THEN 1 ELSE 0 END) bucket_37,
        SUM(CASE WHEN hiaccprobabilistic >=0.925 AND hiaccprobabilistic <0.95 THEN 1 ELSE 0 END) bucket_38,
        SUM(CASE WHEN hiaccprobabilistic >=0.95 THEN 1 ELSE 0 END) bucket_39
        FROM auto_sellable.sellable_pair
        WHERE date_p='20190910'
        AND region_p = 'US'
        AND hashIsSellable
        GROUP BY 1
        ORDER BY 1
 ;;
  }

  suggestions: no

  dimension: dummy_three {
    case: {
      when: {
        label: "(0,0.025)"
        sql: 1=1;;
      }
      when: {
        label: "[0.025,0.05)"
        sql: 1=1;;
      }
      when: {
        label: "[0.05,0.075)"
        sql: 1=1;;
      }
      when: {
        label: "[0.075,0.1)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.1,0.125)"
        sql: 1=1;;
      }
      when: {
        label: "[0.125,0.15)"
        sql: 1=1;;
      }
      when: {
        label: "[0.15,0.175)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.175,0.2)"
        sql: 1=1;;
      }
      when: {
        label: "[0.2,0.225)"
        sql: 1=1;;
      }
      when: {
        label: "[0.225,0.25)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.25,0.275)"
        sql: 1=1;;
      }
      when: {
        label: "[0.275,0.3)"
        sql: 1=1;;
      }
      when: {
        label: "[0.3,0.325)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.325,0.35)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.35,0.375)"
        sql: 1=1;;
      }
      when: {
        label: "[0.375,0.4)"
        sql: 1=1;;
      }
      when: {
        label: "[0.4,0.425)"
        sql: 1=1 ;;
      }
      when: {
        label: "[0.425,0.45)"
        sql: 1=1;;
      }
      when: {
        label: "[0.45,0.475)"
        sql: 1=1;;
      }
    }
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cookiedomain {
    type: string
    sql: ${TABLE}.cookiedomain ;;
  }

  measure: bucket_1 {
    type: sum
    label: "(0,0.025)"
    sql: ${TABLE}.bucket_1 ;;
  }

  measure: bucket_2 {
    type: sum
    label: "[0.025,0.05)"
    sql: ${TABLE}.bucket_2 ;;
  }

  measure: bucket_3 {
    type: sum
    label: "[0.05,0.075)"
    sql: ${TABLE}.bucket_3 ;;
  }

  measure: bucket_4 {
    type: sum
    label: "[0.075,0.1)"
    sql: ${TABLE}.bucket_4 ;;
  }

  measure: bucket_5 {
    type: sum
    label: "[0.1,0.125)"
    sql: ${TABLE}.bucket_5 ;;
  }

  measure: bucket_6 {
    type: sum
    label: "[0.125,0.15)"
    sql: ${TABLE}.bucket_6 ;;
  }

  measure: bucket_7 {
    type: sum
    label: "[0.15,0.175)"
    sql: ${TABLE}.bucket_7 ;;
  }

  measure: bucket_8 {
    type: sum
    label: "[0.175,0.2)"
    sql: ${TABLE}.bucket_8 ;;
  }

  measure: bucket_9 {
    type: sum
    label: "[0.2,0.225)"
    sql: ${TABLE}.bucket_9 ;;
  }

  measure: bucket_10 {
    type: sum
    label: "[0.225,0.25)"
    sql: ${TABLE}.bucket_10 ;;
  }

  measure: bucket_11 {
    type: sum
    label: "[0.25,0.275)"
    sql: ${TABLE}.bucket_11 ;;
  }

  measure: bucket_12 {
    type: sum
    label: "[0.275,0.3)"
    sql: ${TABLE}.bucket_12 ;;
  }

  measure: bucket_13 {
    type: sum
    label: "[0.3,0.325)"
    sql: ${TABLE}.bucket_13 ;;
  }

  measure: bucket_14 {
    type: sum
    label: "[0.325,0.35)"
    sql: ${TABLE}.bucket_14 ;;
  }

  measure: bucket_15 {
    type: sum
    label: "[0.35,0.375)"
    sql: ${TABLE}.bucket_15 ;;
  }

  measure: bucket_16 {
    type: sum
    label: "[0.375,0.4)"
    sql: ${TABLE}.bucket_16 ;;
  }

  measure: bucket_17 {
    type: sum
    label: "[0.4,0.425)"
    sql: ${TABLE}.bucket_17 ;;
  }

  measure: bucket_18 {
    type: sum
    label: "[0.425,0.45)"
    sql: ${TABLE}.bucket_18 ;;
  }

  measure: bucket_19 {
    type: sum
    label: "[0.45,0.475)"
    sql: ${TABLE}.bucket_19 ;;
  }

  set: detail {
    fields: [
      cookiedomain,
      bucket_1,
      bucket_2,
      bucket_3,
      bucket_4,
      bucket_5,
      bucket_6,
      bucket_7,
      bucket_8,
      bucket_9,
      bucket_10,
      bucket_11,
      bucket_12,
      bucket_13,
      bucket_14,
      bucket_15,
      bucket_16,
      bucket_17,
      bucket_18,
      bucket_19
    ]
  }
}
