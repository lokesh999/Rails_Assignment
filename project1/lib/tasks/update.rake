namespace :update do
 task pro: :environment do
  Post.find_each do |post|
    if post.comment < "97".to_i
        puts post.id
     end
  end
 end
end
