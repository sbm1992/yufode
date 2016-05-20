class Food < ActiveRecord::Base
     has_many :connects
     
     def avg
         sum = 0
         connects.each do |c|
             sum += c.score
         end
         if connects.count == 0
             0
         else
             sum.to_f / connects.count
         end
     end
end
