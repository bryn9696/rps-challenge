feature 'Offers choice between one or two-player games' do
  scenario 'lets user select one-player game on the start screen' do
    visit('/')
    choose("mode", option: "single_player")
    click_button('Continue')
    expect(page).to have_content 'Single Player Mode'
  end
end

feature 'Lets players choose their names' do
  scenario 'single player\'s name can be entered in form and posted back to server' do
    visit('/')
    choose("mode", option: "single_player")
    click_button('Continue')
    fill_in('player_1', with: 'bryn')
    click_button('Let\'s play!')
    expect(page).to have_content 'bryn VS computer'
  end
end

feature 'Player can choose their weapon' do
  scenario 'human player can select rock, paper or scissor' do
    start_single_player
    choose("move", option: "Scissor")
    click_button("bryn's move")
    expect(page).to have_content "bryn played Scissor"
  end
end

feature 'Computer player plays against the human player' do
  scenario 'computer plays rock, paper or scissors at random' do
    start_single_player
    choose("move", option: "Scissor")
    allow_any_instance_of(Player).to receive(:makemove).and_return('Rock')
    click_button("bryn's move")
    expect(page).to have_content "computer played Rock"
  end
end