defmodule Blockchain.BloomTest do
  use ExUnit.Case
  alias Blockchain.Bloom

  @default_filter 364236115780354413527177740824718248475191169123433179704674083584030171707548895141763338864017157468044931245187476551639917006481686358559826056819612140499456696964058447681377941080842953023782344796365486712958202642967905678562795813182653349819408730761190197772532753708011416878102770310284058867224260870159690230717337345574083724951534664321152788810106636281468311475567122070065682554961594780791945980493299780947753165983844578885074727735505366654109046841451940478976

  describe "EthBloom.create/1" do
    test "creates bloom filter" do
      filter = Bloom.create("rock")

      assert filter == @default_filter
    end
  end

  describe "EthBloom.add/2" do
    test "adds element to bloom filter" do
      new_filter = EthBloom.add(@default_filter, "punk")

      assert Bloom.contains?(new_filter, "punk")
    end
  end
end
