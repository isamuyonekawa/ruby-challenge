def fizz_buzz(get_integer)
  hash = {FizzBuzz: 15, Buzz: 5, Fizz: 3}
  hash.each do |key, value|
    answer = get_integer % value
    return key if answer.zero?
  end
  get_integer
end

loop do
  puts '終了する場合は、endと入力してください'
  get_string = gets.chomp!
  case get_string
  when 'end'
    break
  else
    get_integer = get_string.to_i
  end

  if get_integer < 1
    puts '1以上の数字を入力してください'
  else
    puts fizz_buzz(get_integer)
  end
end
