Given(/^there is a list called "(.*?)" with items:$/) do |list_title, table|
  list = FactoryGirl.build(:list, title: list_title)
  list.save!

  table.hashes.each do |record|
    item                         = FactoryGirl.build(:item)
    item.text                    = record['text']           unless record['text'].blank?
    item.position                = record['position']       unless record['position'].blank?
    item.description             = record['description']    unless record['description'].blank?
    item.save!
    list.items << item
  end
end

Given(/^there are lists$/) do |table|
  table.hashes.each do |record|
    list                         = FactoryGirl.build(:list)
    list.title                   = record['title']           unless record['title'].blank?
    list.save!
  end
end