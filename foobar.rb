class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a = a.map{|item| item.to_i + 2}
    a.delete_if {|n| n % 2 == 1}
    a = a.uniq
    a.delete_if {|n| n >= 10}
    a.inject(0) {|sum, i| sum + i}
  end
end
