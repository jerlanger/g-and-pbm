connection: "athena_copenhagen"

include: "*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: unified_client_id_health_stats_excessive_growth {
  label: "Growth Rate"
  description: "Growth rate of Unified ID clusters for health analysis"
}

explore: unified_client_id_health_stats_histogram {
  label: "Histogram"
}

explore: largest_UUIDs_top_20 {
  label: "Top 20 latest and largest UUIDs "
}

explore: one_day_growth_per_size_range {
  label: "One day Growth per size range"
}
