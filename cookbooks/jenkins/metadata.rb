name "jenkins"

%w{ tomcat }.each do |cb|
  depends cb
end