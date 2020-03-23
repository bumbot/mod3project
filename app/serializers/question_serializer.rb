class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :questionPrompt, :editorText, :finalText
  has_many :battles
end
