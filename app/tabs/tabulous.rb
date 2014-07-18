Tabulous.setup do

  tabs do

    account_tab do
      text          { 'Account' }
      link_path     { edit_user_registration_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('devise/registrations') }
    end

    filters_tab do
      text          { 'Filters' }
      link_path     { users_filters_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('list').of_controller('filters') }
    end

    sensors_tab do
      text          { 'Sensors' }
      link_path     { '#' }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('users/sensors') }
    end

    hvac_tab do
      text          { 'HVAC Units' }
      link_path     { '#' }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('users/hvac') }
    end

    contractors_tab do
      text          { 'Contractors' }
      link_path     { '#' }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('users/contractors') }
    end
    

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    renderer :bootstrap

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  

end
