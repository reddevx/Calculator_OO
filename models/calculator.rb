class Calculator < Base
  def initialize(operator)
    super
    @operator = operator
    fetch_numbers
  end

  def call
    @operations[@operator].call

    show_result
  end
  
  private

  def fetch_numbers
    puts 'Olá, digite o primeiro número: '
    @number_1 = gets.chomp.to_i

    puts 'Primeiro numero cadastrado, digite o segundo número: '
    @number_2 = gets.chomp.to_i
  end

  def sum
    @result = @number_1 + @number_2
  end
  
  def subtract
    @result = @number_1 - @number_2
  end

  def multiply
    @result = @number_1 * @number_2
  end

  def divide
    @result = @number_1 / @number_2
  end

  def show_result
    puts "O resultado da sua conta de #{@number_1} #{@operator} #{@number_2} é: #{@result}"
  end
end



