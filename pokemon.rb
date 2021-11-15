class Pokemon
    attr_accessor :attack, :hp
  def initialize(attack, hp)
        @hp = hp
        @attack = attack
  end 
end

class Test < Pokemon#成功
    zenigame = Pokemon.new(16,50)
    pikachu = Pokemon.new(13,30)

    if pikachu.attack > zenigame.attack
         hp = zenigame.hp
    elsif zenigame.attack > pikachu.attack
         hp = pikachu.hp
    elsif pikachu.attack == zenigame.attack
        puts("引き分け")
         hp = 0
    end
    
    while hp > 0 do
        if pikachu.attack > zenigame.attack
            hp = hp - pikachu.attack
            p("ピカチュウの攻撃：#{pikachu.attack}ダメージ")
            p("ゼニガメの残りHP：#{hp}")
            p("ピカチュウの残りHP：#{pikachu.hp}")
            if hp < 0 then
                p("ピカチュウの勝利!!")
            end
        elsif zenigame.attack > pikachu.attack
            hp = hp - zenigame.attack
            p("ゼミガメの攻撃：#{zenigame.attack}ダメージ")
            p("ピカチュウの残りHP：#{hp}")
            p("ゼニガメの残りHP：#{pikachu.hp}")
            if hp < 0 then
                p("ゼニガメの勝利!!")
            end
        end
    end    
end

Test