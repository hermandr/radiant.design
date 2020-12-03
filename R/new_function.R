output$new_function <- renderUI({
  register_print_output("summary_sample_size", ".summary_sample_size")

  ## one output with components stacked
  ss_output_panels <- tagList(
    tabPanel("Summary", verbatimTextOutput("summary_sample_size"))
  )

  stat_tab_panel(
    menu = "Design > Sample",
    tool = "Sample size (single)",
    data = NULL,
    tool_ui = "ui_sample_size",
    output_panels = ss_output_panels
  )
})
