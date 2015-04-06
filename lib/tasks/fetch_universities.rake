task :fetch_universities => :environment do
require 'nokogiri'
require 'open-uri'
def get_string_between(my_string, start_at, end_at)
    my_string = "#{my_string}"
    ini = my_string.index(start_at)
    return my_string if ini == 0
    ini += start_at.length
    length = my_string.index(end_at, ini).to_i - ini
    my_string[ini,length]
end
urls=["http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+1","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+2","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+3","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+4","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+5","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+6","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+7","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+8","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+9","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+10","http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data/page+11"]
listuniv=[]
listtuit=[]
listcountry=[]
urls.each do |url|
doc = Nokogiri::HTML(open(url))
	doc.css(".search_tuition_display").each do |tuition| 
	t=get_string_between(tuition,">","<span class")
	m=t.to_s.gsub(/\s+/, "")
	if m!=""
  	listtuit.push(m)
  	end
  	end
  doc.css(".school-name").each do |schoolname|
  	u=get_string_between(schoolname,">","<") 
  	listuniv.push(u)	 
  end
  doc.css(".location").each do |location|
    l=get_string_between(location,",","</p") 
    listcountry.push(l)   
  end
end
count=listuniv.count
College.destroy_all
for i in 0..count-1
 	College.create(:Name => listuniv.fetch(i), :TuitionFees => listtuit.fetch(i), :Country => listcountry.fetch(i))
end
end