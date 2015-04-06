task :tester => :environment do
def get_string_between(my_string, start_at, end_at)
    my_string = "#{my_string}"
    ini = my_string.index(start_at)
    puts ini
    return my_string if ini == 0
    ini += start_at.length
    puts ini
    puts my_string
    one=my_string.index(end_at, ini).to_i
    puts one
    length = one - ini
    puts length
    my_string[ini,length]
end
line="Vasundhara"
t=get_string_between(line,"s","a")
puts t
end