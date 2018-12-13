feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Battle!"
  end

  scenario 'players fill in their names and see them on screen' do
    sign_in_and_play
    expect(page).to have_content "player 1 = Adam"
    expect(page).to have_content "player 2 = Simon"
  end
end

feature "Viewing HP" do
  scenario "As player 1, I can see player 2's HP" do
    sign_in_and_play
    expect(page).to have_content "Player 2 HP: 100"
  end
end
