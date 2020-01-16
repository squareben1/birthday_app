feature 'home page' do 
  scenario 'it prints "hello there" on home page' do 
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end