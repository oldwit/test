module Mainpage

  def base_url
    'http://t.hostelworld.com/'
  end
  
  def main_page_search_field
    '#home-search-keywords'
  end
  
  def main_page_change_focus
    '#home-search-keywords'
  end
  
  def main_page_search_button
    '.orange_button'
  end

end

module SearchResultPage
  def search_result_page_sort_button
    '.topfilter.sort-button'
  end
  
  def search_result_page_sort_by_name
    '#sortByName'
  end
  
  def search_result_page_sort_by_price
    '#sortByPrice'    
  end
  
  def get_elements_by_prices
    @elements=@driver.find_elements(:css=>'.price .dormroom')
    @prices=[]
    @elements.each do |e|
      @prices<<e.text.gsub(/[a-z, A-Z,\s]/,'').to_f
    end
    return @prices
  end
  
  def get_elements_by_names
    @elements=@driver.find_elements(:css=>'h2 .hwta-property-link')
    @names=[]
    @elements.each do |e|
      @names<<e.text.gsub(/\W/,'')
    end
    return @names
  end
  
end
  
  