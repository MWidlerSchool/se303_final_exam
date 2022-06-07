# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
  first = "Mr. Dursley was the director of a firm called Grunnings, which made drills."
  conclusion = "And that was it."
  first + getNewlines(5) + conclusion
end

def getNewlines(reps)
  result = ""
  for i in 1..reps
    result << "\n"
  end
  result
end
