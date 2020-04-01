Given("I am on the homepage") do
    visit root_path # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click on the posts button") do
    click_on 'Posts' # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be redirected to the posts page") do
    expect(page).to have_content('Posts') # Write code here that turns the phrase above into concrete actions
  end
  
  Given("I am on the posts page") do
    get posts_url
  end
  
  When("I click on the new post button") do
    click_on 'New Post' 
  end
  
  Then("I should be redirected to the new page") do
    expect(page).to have_content('New Post') 
  end
  
  Given("I am on the new page") do
    get new_post_url 
  end
  
  And("I fill in the title form") do
    fill_in 'title', with: @post.title 
  end
  
  And("I fill in the content form") do
    fill_in 'content', with: @post.content 
  end
  
  And("I fill in the user form") do
    fill_in 'user_id', with: @post.user_id 
  end
  
  When("I click on the create post button") do
    click_on 'Create Post'
  end
  
  Then("I should see that my post was successfully created") do
    message = 'Post was successfully created.'
    expect(page).to have_content(message)
  end