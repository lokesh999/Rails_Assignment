namespace :demo do
 task pro: :environment do
 Post.find_each(start: 1, finish:100) do  |post| 
      puts post.comment 
   end
   end
end

