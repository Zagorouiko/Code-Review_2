class Word
  @@word_list =[]

  define_method(:initialize) do |words|
    @words = words
    @id = @@word_list.length().+(1)
    @word_definition = []
  end

  define_method(:words) do
    @words
  end

  define_method(:id) do
    @id
  end

  define_method(:word_definition) do
    @word_definition
  end
end
