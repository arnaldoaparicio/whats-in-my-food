require 'rails_helper'

RSpec.describe 'Food Search Results' do
  it 'shows search results for sweet potatoes' do
    visit "/foods?utf8=#{URI.encode('✓')}&q=sweet+potatoes&commit=Search"
    expect(page).to have_content('Results')
  end
end
