def game
    puts "ジャンケン、、、"

def rock_paper_scissors
    puts "[0]:グー,[1]:チョキ,[2]:パー,[3]:戦わない"
    puts "-------------------------------------"

player_hand = gets.to_i
    puts "ポイッ"
    puts "-------------------------------------"

# 0以上3未満の整数を返す
program_hand = rand(3)

if player_hand > 3
    puts "０〜３の選択肢から選び直してください。"
    puts "-------------------------------------"
    return true
elsif player_hand == 3
    puts "ジャンケンを終了します。"
    puts "-------------------------------------"
    return false
end

rock_paper_scissors = ["グー","チョキ","パー"]

puts "あなた:#{rock_paper_scissors[player_hand]},相手:#{rock_paper_scissors[program_hand]},"

if player_hand == program_hand
    puts "あいこで、、、、"
    puts "-------------------------------------"
    return true
elsif (player_hand == 0 && program_hand == 1) || (player_hand ==1 && program_hand == 2) || (player_hand == 2 && program_hand ==0)
    puts "あなたの勝ち！"
    puts "-------------------------------------"
    @result = "win"
    return false
else
    puts "あなたの負け、、、"
    puts "-------------------------------------"
    @result = "lose"
    return false
end
end

next_game = true

while next_game
    next_game=rock_paper_scissors
end

if @result == "win"
    puts "あっち向いて、、、、"
    puts "[0]:上,[1]:下,[2]:左,[3]:右,"
    puts "-------------------------------------"

    player_look = gets.to_i
    puts "ホイッ"
    puts "-------------------------------------"

    program_look = rand(4)

        if player_look > 3
            puts "０〜３の選択肢から選び直してください。"
            puts "-------------------------------------"
            return true
        end

    look_this_way = ["上","下","左","右"]

    puts "あなた:#{look_this_way[player_look]},相手:#{look_this_way[program_look]},"

    if player_look == program_look
        puts "あなたの勝ち"
        puts "-------------------------------------"
        return false
    else
        puts "引き分け"
        return true
    end
end

if @result == "lose"
    puts "あっち向いて、、、、"
    puts "[0]:上,[1]:下,[2]:左,[3]:右,"
    puts "-------------------------------------"

    player_look = gets.to_i
    puts "ホイッ"
    puts "-------------------------------------"

    program_look = rand(4)

        if player_look > 3
            puts "０〜３の選択肢から選び直してください。"
            puts "-------------------------------------"
            return true
        end

    look_this_way = ["上","下","左","右"]

    puts "あなた:#{look_this_way[player_look]},相手:#{look_this_way[program_look]},"

    if player_look == program_look
        puts "あなたの負け"
        puts "-------------------------------------"
        return false
    else
        puts "引き分け"
        return true
    end
end
end

next_game = true

while next_game
    next_game = game
end