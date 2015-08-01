def begins_with_r(array)
  array.all? { |elem| elem.start_with?('r') }
end

def contain_a(array)
  array.select { |elem| elem.include?('a') }
end

def first_wa(array)
  array.find { |elem| elem.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.delete_if { |elem| !elem.is_a?(String) }
end

def count_elements(array)
  h = Hash.new(0)
  array.each { |name| h[name] += 1 }
  h.keys.map { |k| k[:count] = h[k]; k}
end

def merge_data(keys, data)
  keys.map { |v| v[:first_name] == "blake" ? v.merge(data[0]["blake"]) : v.merge(data[0]["ashley"]) }
end

def find_cool(array)
  array.map { |p| p if p[:temperature] == "cool" }.compact
end

def organize_schools(school_hash)
  h = Hash.new { |hash, value| hash[value] = [] }
  school_hash.map { |k, v| h[v[:location]] << k }; h
end