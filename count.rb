# coding: utf-8
def print_ngram(ngram_hash)
  a = ngram_hash.to_a
  a.sort_by!{|i| i[1]}
  a.reverse!
  a.each do |k, v|
    puts "#{k}\t#{v}"
  end
end

unigram = Hash.new 0
$stdin.each_line do |line|
  line.split(/\|/).each do |tok|
    next unless tok =~ /[ก-์]/
    unigram[tok] += 1
  end
end                   

print_ngram(unigram)
