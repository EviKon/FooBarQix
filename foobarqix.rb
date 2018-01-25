class FooBarQix
  def calculator(digit)
    if digit % 3 == 0 || digit.to_s.include?('3')
      'Foo'
    elsif digit % 5 == 0 || digit.to_s.include?('5')
      'Bar'
    elsif digit % 7 == 0
      'Qix'
    else
      digit
    end
  end
end
