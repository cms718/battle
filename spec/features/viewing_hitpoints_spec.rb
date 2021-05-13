feature 'Testing player 2 hitpoints' do
  scenario 'displaying hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60 HP'
  end
end