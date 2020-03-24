class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :questionPrompt, :editorText, :finalText, :difficulty
  has_many :battles
end
