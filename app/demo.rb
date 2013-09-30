Teacup::Stylesheet.new :demo do

  style UIButton,
    width: "50%-15",
    height: 40,
    layer: {
      borderWidth: 1,
      borderColor: "#c8c7cc".uicolor.CGColor,
      cornerRadius: 8
    }

  style :show_notice,
    x: 10,
    y: 30,
    title: 'Notice'

  style :show_activity_notice,
    x: "50%+5",
    y: 30,
    title: 'Activity Notice'

  style :show_success_notice,
    x: 10,
    y: 80,
    title: 'Success Notice'

  style :show_error_notice,
    x: "50%+5",
    y: 80,
    title: 'Error Notice'

  style :hide_notice,
    x: 10,
    y: "100%-50",
    title: 'Hide Notice'

  style :visibility,
    x: "50%+5",
    y: "100%-50",
    title: 'Notice Visible?'

end