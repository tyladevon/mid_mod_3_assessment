require 'rails_helper'

describe 'As a User, when I visit the dashboard' do
  describe "When I select 'Gryffindor and click Search'" do
    it 'I am redirected to a search page and can see the Members of that house' do
      visit '/'
      select "Gryffindor", from: :house
      click_on 'Search For Members'
      expect(current_path).to eq('/search')
      expect(page).to have_content("21 house members for Gryffindor")
      expect(page).to have_css(".members, count: 21")

      within(first(".members")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".role")
        expect(page).to have_css(".house")
        expect(page).to have_css(".patronus")
      end
    end
  end
end
