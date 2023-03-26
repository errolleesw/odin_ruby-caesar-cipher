require './spec/spec_helper' # this is the path to the spec_help file
require_relative '../script/script.rb' # this is the path to the script to run.


RSpec.describe 'Caesar Cipher tests' do
  describe 'Caesar Cipher test' do
    it 'return the encrypted word "test" with  a caesar shift of 5' do
      expected_output = "yjxy"
      expect(caesar_cipher("test", 5)).to eq(expected_output)
    end

    it 'string with non-alphanumeric characters "What a string!" with a caesar shift of 5' do
      expected_output = "Bmfy f xywnsl!"
      expect(caesar_cipher("What a string!", 5)).to eq(expected_output)
    end
  end
end
