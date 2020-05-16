#!/usr/local/bin/ruby
print "Content-type:text/html\n\n"

# index.rb 基本###

t_title="経過報告サイト (作成中)"
t_title_sub="栽培"


t_css=<<EOT
body{
   background-color:deepskyblue;
   }
.t_l_img{
   width:200px;
   margin:20px;
   }
EOT


img_list=[]
Dir.glob('./img/*.png') do |w|
   img_list.push w
end

top_list=""
img_list.each do |w|
   top_list+="<img class='t_l_img' src='#{w}'>"
end


t_body=<<EOT
#{top_list}
<br>
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
<meta name="description" content="経過報告 画像投稿サイトを作りたい">
<meta name="keywords" content="栽培,成長,投稿サイト,掲示板,コミュニティ">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
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
