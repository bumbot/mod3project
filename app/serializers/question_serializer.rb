class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :prompt, :answer, :testCase
  has_many: :battles
end
