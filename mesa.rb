class Table
  attr_reader :table, :income
  def initialize(table, *income)
      @table = table
      @income = income.map(&:to_i)
  end
  def max
    @income.max
  end
  def average
    @income.inject(&:+) / @income.size
  end
end

tables_income = []
data = []

File.open('casino.txt', 'r') { |file| data = file.readlines}
data.each do |t|
  ls = t.split(', ')
  tables_income << Table.new(*ls)
end

tables_income.each do |l|
  print l.income
  print l.table+'-'
  print l.max
  print l.average
  print "\n"
end
