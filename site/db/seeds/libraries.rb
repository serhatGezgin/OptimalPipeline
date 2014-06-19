if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'libraries').blank?
      user.plugins.create(:name => 'libraries',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Libraries',
    :link_url => '/libraries',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/libraries(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end