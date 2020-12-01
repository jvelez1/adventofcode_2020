class AssertionError < StandardError
end

def assert(a, b)
  raise AssertionError, "#{a} != #{b}" unless a == b
end

def find_multiples_by_combination(entries, combination)
  entries.combination(combination).find { |e| e.sum == 2020 }.inject(&:*)
end

entries = File.read('entry.txt').split("\n").map(&:to_i)

p find_multiples_by_combination(entries, 2)
p find_multiples_by_combination(entries, 3)

assert(find_multiples_by_combination([1721, 979, 366, 299, 675, 1456], 2), 514579)
assert(find_multiples_by_combination([1721, 979, 366, 299, 675, 1456], 3), 241861950)