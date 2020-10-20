def determinant(matrix, n)
  det = 0

  temp = Array.new(n) { Array.new(n) {0} }

  if n == 1
    return matrix[0][0]
  elsif n == 2
    det = matrix[0][0]*matrix[1][1] - matrix[0][1]*matrix[1][0]
    return det
  else
    for p in 0..(n-1)
      h = 0
      k = 0
      for i in 1..(n-1)
        for j in 0..(n-1)
          if j==p
            next
          end
          temp[h][k] = matrix[i][j]
          k += 1
          if k == (n-1)
            h += 1
            k = 0
          end
        end
      end
      det = det + matrix[0][p] * ((-1)**p) * determinant(temp, n-1)
    end
    return det
  end
end

empty = 0
matrix = []
while empty != 2
  line = gets.chomp
  if line == ''
    empty += 1
    next
  else
    empty = 0
  end

  array = line.split(',').map(&:to_i)
  matrix.push(array)
end

square = true
matrixLength = matrix.length
matrix.each do |n|
  if matrixLength != n.length
    square = false
    break
  end
end

if square
  detValue = determinant(matrix, matrix.length)
  puts "Определитель = #{detValue}"
else
  puts "Матрица не является квадратной"
end

