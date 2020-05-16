#!/usr/local/bin/ruby
print "Content-type:text/html\n\n"

# index.rb 基本###

t_title="経過報告サイト"
t_title_sub="栽培"

t_body=<<EOT
<br>
EOT


t_css=<<EOT
body {
   background-color:deepskyblue;
}
EOT



whtml=DATA.read

whtml.gsub!("%title%",t_title)
whtml.gsub!("%title_sub%",t_title_sub)
whtml.gsub!("%css%",t_css)
whtml.gsub!("%body%",t_body)

print whtml


__END__
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>%title%</title>
<style>
%css%
</style>
</head>
<body>
<h1>%title%</h1>
<hr>
<h2>%title_sub%</h2>
<div>
%body%
</div>
<script>
</script>
</body>
</html>
