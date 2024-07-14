require_relative 'models/base'
require_relative 'models/calculator'
require_relative 'models/menu'

class App
  def call
    menu = Menu.new
    menu.show_options

    calculator = Calculator.new(menu.select_option)
    calculator.call
  end
end

App.new.call
