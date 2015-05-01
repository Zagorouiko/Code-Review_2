require('rspec')
require('word')

  describe(Word) do
    describe('#words') do
      it('returns the word') do
        test_words = Word.new('cat')
        expect(test_words.words()).to(eq('cat'))
      end
    end
  end
