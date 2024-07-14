class Base
  def initialize(_operator = nil)
    @operations = {
      '+' => -> {self.sum}, 
      '-' => -> {self.subtract}, 
      '*' => -> {self.multiply}, 
      '/' => -> {self.divide}, 
    }
  end
end
