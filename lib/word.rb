class Word
  @@word_list =[]

  define_method(:initialize) do |words|
    @words = words
    @id = @@word_list.length().+(1)
  end

  define_method(:words) do
    @words
  end

  define_method(:id) do
    @id
  end
end
