source plugin/left_pad.vim

describe 'left-pad'
  it 'pads spaces to the left of string if asking length is greater'
    Expect LeftPad('foo', 5) == '  foo'
  end

  it 'does not pad spaces if string equals length'
    Expect LeftPad('foobar', 6) == 'foobar'
  end

  it 'does not pad spaces if string is greater than length'
    Expect LeftPad('foobar', 3) == 'foobar'
  end

  it 'pads using a different character when provided'
    Expect LeftPad('baz', 5, '@') == '@@baz'
  end
end
