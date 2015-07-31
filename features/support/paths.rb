# features/support/paths.rb
def path_to(page_name)
  case page_name
 
  when /^list\sdetail\spage$/i
    then list_path(List.first)

  else
    begin
      # try and match to a path in the rails routes
      page_name =~ /^(.*)?\spage$/
      path_components = $1.split(/\s+/)
      self.send(path_components.push('path').join('_').to_sym)
    rescue NoMethodError, ArgumentError
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end
