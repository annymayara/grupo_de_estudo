def func1
   for i in 0..3
      puts "Thread 1 em: #{Time.now}"
      sleep(2)
   end
end

def func2
   for i in 0..3
      puts "Thread 2 em: #{Time.now}"
      sleep(1)
   end
end

puts "Inicio em: #{Time.now}"
puts " "

t1=Thread.new{func1()}
t2=Thread.new{func2()}

t1.join
t2.join

#thr.join
#The calling thread will suspend execution and run thr. Does not return until thr exits. 
#Any threads not joined will be killed when the main program exits.

puts " "
puts "Acabou em: #{Time.now}"