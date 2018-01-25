class FooBarQix
  def calculator(digit)
    if digit % 3 == 0
      'Foo'
    elsif digit % 5 == 0
      'Bar'
    else
      digit
    end
  end
end
