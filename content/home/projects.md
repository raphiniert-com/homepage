+++
# A Projects section created with the Portfolio widget.
widget = "portfolio"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 65  # Order that this section will appear.

title = "Projects"
subtitle = "Selected work in AI, NLP, and healthcare"

[content]
  # Page type to display. E.g. project.
  page_type = "project"
  
  # Filter toolbar (optional).

  # Default filter index (e.g. 0 corresponds to the first `[[filter_button]]` instance below).
  filter_default = 0
  
  [[content.filter_button]]
    name = "Featured"
    tag = "Featured"

  # [[content.filter_button]]
  #   name = "All"
  #   tag = "*"
  
  [[content.filter_button]]
    name = "Language Models"
    tag = "Language Models"
  
  [[content.filter_button]]
    name = "Medical NLP"
    tag = "Medical NLP"
  
  [[content.filter_button]]
    name = "Search & IR"
    tag = "Search and IR"
  
  [[content.filter_button]]
    name = "Medical Informatics"
    tag = "Medical Informatics"
  
  [[content.filter_button]]
    name = "Other"
    tag = "Other"

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "2"

  # Toggle between the various page layout types.
  #   1 = List
  #   3 = Card
  #   5 = Showcase
  view = 3

  # For Showcase view, flip alternate rows?
  flip_alt_rows = false

[design.background]
  # Background color / gradient / image optional

[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
+++
