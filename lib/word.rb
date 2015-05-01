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

  define_singleton_method(:all) do
    @@word_list
  end

  define_method(:save) do
    @@word_list.push(self)
  end

  define_singleton_method(:clear) do
    @@word_list = []
  end
end
