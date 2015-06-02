require "cuba"

list = File.read("skylanders.txt").split("\n")

Cuba.define do

  on get, root do
    skylander = list.sample

    res.headers["Content-Type"] = "application/json"
    res.write('{"skylander":"%s"}' % skylander)
  end

end
