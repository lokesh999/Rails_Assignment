namespace :user do
 task pro: :environment do
  User.find_each do |user|
  user.id=Random.rand(10) 
 puts "#{user.id}"
   end
 end
end
