feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Battle!"
  end

  scenario 'players fill in their names and see them on screen' do
    visit('/')
    fill_in 'player_1_name', with: 'Adam'
    fill_in 'player_2_name', with: "Simon"
    click_button 'Submit'
    expect(page).to have_content "player 1 = Adam"
    expect(page).to have_content "player 2 = Simon"
  end
end

feature "Viewing HP" do
  scenario "As player 1, I can see player 2's HP" do
    visit("/play")
    expect(page).to have_content "Player 2 HP: 100"
  end
end
