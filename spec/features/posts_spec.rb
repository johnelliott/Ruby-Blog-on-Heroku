require 'rails_helper'
# require 'database_cleaner' (and put in Gemfile if needed)
# DatabaseCleaner.strategy = :truncation
# Then, when you need to clean the D
# DatabaseCleaner.clean

feature "View Posts" do
  scenario "List no Posts"
    visit  posts_path
    expect(page).find (‘h1).to have_content (/Posts/)
    expect(page).to have_content ("No posts available") 
  end

scenario "List all Posts" do
  end

  scenario "Add new Posts" do
end


# scenario "Delete a psot and redirect to index page" do
#   post = create_post
#   visit posts_path(post)
#   click_on 'Delete'
#   expect
