instructors = ["rose", "james", "charlie", "carl"]
students = ["anne", "martin", "david", "solomon", "bea", "blessie", "marie"]
instructors.each do |name|
	Instructor.create!(:email => "#{name}@shinkyokushin.com.ph", :password => "password", :password_confirmation => "password")
end

puts "Creating instructors"

instructors.each do |name|
	sir = Instructor.find_by_email("#{name}@shinkyokushin.com.ph")
	sir.dojos.create!(:name => "#{name.capitalize} Dojo", :description => "description description", :avatar => File.open(Rails.root.join("app","assets","images","#{name}_dojo.jpg")))
end

puts "Creating Dojos"

students.each do |student|
	User.create!(:email => "#{student}@shinkyokushin.com.ph", :password => "password", :password_confirmation => "password", :dojo_id => rand(1..4))
end

puts "Creating Students.."