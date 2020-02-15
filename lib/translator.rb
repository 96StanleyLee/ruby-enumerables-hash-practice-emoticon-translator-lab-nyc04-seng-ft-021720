require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emoticons.each do |meaning,emoticons|
    new_hash['get_meaning'][emoticons[1]] = meaning
    new_hash['get_emoticon'][emoticons[0]] = emoticons[1]
  end 
  
  new_hash
end


def get_japanese_emoticon(file_path, emoticon)
  
  result = load_library(file_path)['get_emoticon'][emoticon]
  
  puts result
  
end 