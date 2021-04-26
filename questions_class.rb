class Question_Generator

  def gen_question
  "#{rand(1..20)} + #{rand(1..20)}"
  end

  def eval_answer? (q_string, answer)
    eval(q_string) == answer ? true : false
  end 
end


