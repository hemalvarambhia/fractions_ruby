# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: "rspec -cfd" do
  watch(%r{(?:.+)\.rb}){"spec"}
  watch('spec/spec_helper.rb')  { "spec" }
end

