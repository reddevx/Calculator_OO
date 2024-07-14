class Menu < Base
  def initialize
    super
  end

  def show_options
    puts 'Digite uma das opções abaixo: '
    @operations.keys.each{|operation| puts operation}
  end

  def select_option
    @option = gets.chomp
  end
end