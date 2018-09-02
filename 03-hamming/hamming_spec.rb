gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'pryq'
require_relative 'hamming'

describe Hamming do
  it  " 01 Check identical strands" do
    expect(Hamming.compute('A', 'A')).must_equal 0
  end

  it " 02 Check long identical strands" do
    expect (Hamming.compute('GGACTGA', 'GGACTGA')).must_equal 0
  end

  it "03 Check complete distance in single nucleotide strands" do
    expect(Hamming.compute('A', 'G')).must_equal 1
  end

  it "04 Check complete distance in small strands" do
    expect(Hamming.compute('AG', 'CT')).must_equal 2
  end

  it "05 Check small distance in small strands" do
    expect(Hamming.compute('AT', 'CT')).must_equal 1
  end

  it "06 Check small distance" do
    expect(Hamming.compute('GGACG', 'GGTCG')).must_equal 1
  end

  it "07 Check small distance in long strands" do
    expect(Hamming.compute('ACCAGGG', 'ACTATGG')).must_equal 2
  end

  it "08 Check non_unique character in first strand" do
    expect(Hamming.compute('AGA', 'AGG')).must_equal 1
  end

  it "09 Check non unique character in second strand" do
    expect(Hamming.compute('AGG', 'AGA')).must_equal 1
  end

  it "10 Check large_distance" do
    expect(Hamming.compute('GATACA', 'GCATAA')).must_equal 4
  end

  it "11 Check large distance in off by one strand" do
    expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).must_equal 9
  end

  it "12 Check Empty Strands" do
    expect(Hamming.compute('', '')).must_equal 0
  end

  it "13 Check disallow first strand longer" do
    expect ( proc { Hamming.compute('AATG', 'AAA') }).must_raise ArgumentError
  end

  it "14 Check disallow second strand longer" do

    expect( proc { Hamming.compute('ATA', 'AGTG') }).must_raise ArgumentError
  end
end
