
def begins_with_r(array)
i = 0
while i < array.length
  if array[i][0] != "r"
    return false
  end
  i += 1
end
  true
end

def contain_a(array)
  i = 0
  result_array = []
  while i < array.length
    if array[i].include?("a")
      result_array << array[i]
    end
    i += 1
  end
  result_array
end

def first_wa(array)
  i = 0
  while i < array.length
    if array[i].to_s.start_with?("wa")
      return array[i]
    end
    i += 1
  end
  nil
end

def remove_non_strings(array)
  i = 0
  while i < array.length
    if !(array[i].is_a? String)
      array.slice!(i)
    else
      i += 1
    end
  end
  array
end

def count_elements(array)
  i = 0
  j = 0
  count = 0
  comp_ary = array.uniq
  new_ary = []
  while i < comp_ary.length

    while j < array.length
      if comp_ary[i] == array[j]
        count += 1
      end
      j+=1
    end
    new_ary << comp_ary[i].merge({:count => count})
    count = 0
    j = 0
    i += 1

  end
new_ary
end

array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
puts count_elements(array)
