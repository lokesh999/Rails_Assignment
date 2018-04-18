namespace :date do
 task pro: :environment do
  Post.find_each(start: 1,finish: 100) do |post|
   post.created_at = "2008-04-18"
  end
 end
end
