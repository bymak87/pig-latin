require_relative 'spec_helper.rb'


describe "PigLatin" do
   describe ".translation" do

    it "tests and translates if it starts with vowels" do
      expect(PigLatin.translation("egg")).to eq("eggway")
    end

    it "tests and translates if it is a 'y' consonant" do
      expect(PigLatin.translation("yellow")).to eq("ellowyay")
    end

    it "tests and translates if it starts with consonants" do
      expect(PigLatin.translation("hello")).to eq("ellohay")
      expect(PigLatin.translation("three")).to eq("eethray")
      expect(PigLatin.translation("pray")).to eq("aypray")
    end


    it "tests and translates a 'y' vowel" do
      expect(PigLatin.translation("rhythm")).to eq("ythmrhay")
    end

   end
end
