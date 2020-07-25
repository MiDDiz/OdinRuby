def substrings superstring, dictionary
    values = Hash.new(0)
    # This let us compare a string and a set of words as an array.
    superstring = superstring.is_a?(Array) ? superstring : superstring.split(" ")
    
    superstring.each do |e_supr|
        dictionary.each do |e_dict|
          #Scan is necesary to detect each instance of the substring in the word apreciated. If not used, only one instance of a substring in each word would be counted.
          e_supr.scan(e_dict) do
            values[e_dict] += 1
          end
        end
      end
    values
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts substrings("Howdy partner, sit down! How's it going", dictionary)
  
  