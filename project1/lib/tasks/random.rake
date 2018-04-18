namespace :random do
 task pro: :environment do
   Post.find_each do |post|
  # post.comment= Random.rand(101)
    puts "#{post.title} #{post.body} #{post.comment}" if     post.comment>97
          
      
   
   end
  end
end

