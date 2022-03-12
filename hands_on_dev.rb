# Cantidato: Erick Vinicius.
# Resolução dos exercicios propostos para o processo seletivo.

# ---------------
# Atividade 2.1
# Dado um número n, retorne o número de números ímpares positivos abaixo de n:

puts "============================================= \n"
puts "Atividade 1 \n\n"
puts "Me diga um número n, que eu tirei os valores impares positivos abaixo dele."
print "Digite o valor de n: "
n = gets.chomp.to_i
n -= 1

oddNumberList = []

while 0 < n do
    if n % 2 != 0
        oddNumberList << n
    end
    n -= 1
end

print "\nNúmeros ímpares positivos abaixo de n: #{oddNumberList.sort}"

puts "\n\n============================================= \n"
print "Aperte qualquer tecla para continuar... \n"
gets.chomp

# ---------------
# Atividade 2.2 
# Escreva uma função que verifique se uma determinada string (não diferencia maiúsculas de minúsculas) é um palíndromo.

puts "============================================= \n"
puts "Atividade 2 \n\n"

# Função responsavél de verificar se a palavra é um palíndromo 
def isPlindrome(word)
    
    word = word.delete(" ").downcase
    wordReverse = word.reverse
    
    if wordReverse == word
        return true
    else 
        return false
    end
    
end

puts "Será que é Palíndromo???"
print "digite uma Palavra: "
word = gets.chomp

result = isPlindrome(word)

puts "\nÉ Palíndromo: #{result}"

puts "\n\n============================================= \n"
print "Aperte qualquer tecla para continuar... \n"
gets.chomp

# ---------------
# Atividade 2.3
# Escreva uma função que retorne o valor máximo e mínimo de uma determinada lista repassada:

puts "============================================= \n"
puts "Atividade 3 \n\n"

def maxAndMin(list)

    max = list[0]
    min = list[0]

    for item in list do
        
        if item > max 
            max = item
        end
        if item < min
            min = item
        end
    end

    return {valueMax: max, valueMin: min}

end

listValues = [4,6,2,1,9,63,-134,566]
# listValues = [-52, 56, 30, 29, -54, 0, -110]
# listValues = [42, 54, 65, 87, 0]
# listValues = [5]

print "Olha essa lista #{listValues} \n"
valueMaxAndMin = maxAndMin(listValues)

puts "Vou encontrar o valor maior e o menor \n..."
sleep(0.5)
puts "Encontrei !!!"
puts "min = #{valueMaxAndMin[:valueMin]}, max = #{valueMaxAndMin[:valueMax]}"

puts "\n\n============================================= \n"
print "Aperte qualquer tecla para continuar... \n"
gets.chomp

# ---------------
# Atividade 2.4
# Escreva uma função que irá elevar ao quadrado cada dígito de um número e concatená-los. 
# Por exemplo, se executarmos 9119 através da função, 811181 sairá, porque 9² é 81 e 1² é 1.

puts "============================================= \n"
puts "Atividade 4 \n\n"

def square(list)

    numberSquared = ""

    for item in list do
        numberSquared += (item.to_i ** 2 ).to_s
    end

    return numberSquared

end

puts "Me fale uma sequência de números que irei elevar eles ao quadrado e concatená-los."
print "Digite a sequência de números: "
n = gets.chomp

listNumber = n.chars

puts "\nResultado: #{square(listNumber)} \n"

puts "\n\n============================================= \n"
print "Aperte qualquer tecla para continuar... \n"
gets.chomp

# ---------------
# Atividade 2.5
# Faça um programa que filtre uma lista de strings e retorne uma lista apenas com o nome de seus amigos.
# Se um nome tem exatamente 4 letras, pode ter certeza que é amigo seu, caso contrário, não é seu amigo

puts "============================================= \n"
puts "Atividade 5 \n\n"

def friendOrFoe(list)

    listFriends = []

    for item in list do
        if item.length == 4
            listFriends << item
        end
    end

    return listFriends
end

listNomes = ["João", "Augusto", "Pedro", "José"]
# listNomes = ["Augusto", "Pedro", "Gustavo", "Raí"]
# listNomes = ["Mari"]

puts "Olha algumas pessoas que conheço #{listNomes}"

listFriends = friendOrFoe(listNomes)

print "Mas meu(s) amigo(s) é/são: #{listFriends}"

puts "\n\n============================================= \n"
print "Aperte qualquer tecla para continuar... \n"
gets.chomp

# ---------------
# Atividade 2.6
# Construa uma torre em forma de pirâmide dado um número inteiro positivo de andares. 
# Um bloco de torre é representado com o caractere "*".

puts "============================================= \n"
puts "Atividade 6 \n\n"

def createTower(towerSize)
    listTower = []
    cont = towerSize
    
    towerSize.times do
        blankSpaces = " " * (towerSize - cont)
        listTower << blankSpaces + "*" * (cont * 2 - 1) + blankSpaces
        cont -= 1
    end

    return listTower.reverse!
end

puts "Vamos construir uma torre!!!"
print "Digite o número de andares da torre: "
numberOfFloors = gets.chomp.to_i

puts createTower(numberOfFloors)
