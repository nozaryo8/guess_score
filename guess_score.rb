def guess_score(limit,score)
  uplimit = limit 
  downlimit = 0
  guess = limit / 2
  p guess
  if guess == score
    puts "答えは" + guess.to_s + "1回判定しました"
    return 1 
  end
  2.step do |i|
    if score > guess
      downlimit = guess
      guess += (uplimit - guess)/2
    elsif score < guess
      uplimit = guess
      guess -= (guess - downlimit)/2
    end

    guess.ceil
    if guess == score
      puts "答えは" + guess.to_s + "で"+ i.to_s + "回判定しました"
      return guess
    end
    p guess
  end
end

guess_score(100,88)