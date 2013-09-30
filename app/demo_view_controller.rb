class DemoViewController < UIViewController
  stylesheet :demo

  layout do
    @show_notice = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :show_notice)
    @show_activity_notice = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :show_activity_notice)
    @show_success_notice = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :show_success_notice)
    @show_error_notice = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :show_error_notice)

    @hide_notice = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :hide_notice)
    @visibility = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :visibility)
  end

  def viewDidLoad
    super

    # Create statusbar
    @statusbar = StatusBar.new
    
    # Other statusbar examples
    # statusbar = Statusbar.new

    # Add actions to buttons
    @show_notice.when(UIControlEventTouchUpInside){ @statusbar.show_notice("Hello World") }
    @show_activity_notice.when(UIControlEventTouchUpInside){ @statusbar.show_activity_notice("Somethings is happening") }
    @show_success_notice.when(UIControlEventTouchUpInside){ @statusbar.show_success_notice("Great success") }
    @show_error_notice.when(UIControlEventTouchUpInside){ @statusbar.show_error_notice("Awww... did't work out") }

    @hide_notice.when(UIControlEventTouchUpInside){ @statusbar.hide_notice }
    @visibility.when(UIControlEventTouchUpInside){ p "Statusbar Visible: #{@statusbar.visible?}" }

  end

  def shouldAutorotate
    # Restyle buttons when rotating
    UIView.beginAnimations(nil, context: nil)
    view.restyle!
    UIView.commitAnimations
    true
  end
  
end