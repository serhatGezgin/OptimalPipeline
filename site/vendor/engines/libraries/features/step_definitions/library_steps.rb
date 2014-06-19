Given /^I have no libraries$/ do
  Library.delete_all
end

Given /^I (only )?have libraries titled "?([^\"]*)"?$/ do |only, titles|
  Library.delete_all if only
  titles.split(', ').each do |title|
    Library.create(:name => title)
  end
end

Then /^I should have ([0-9]+) librar[y|ies]+?$/ do |count|
  Library.count.should == count.to_i
end
