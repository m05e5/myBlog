# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(
    name: "Gustave John Doe#{i}", 
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Oqk6CV4a1DSvkFJxOUjRoKuZ7pE-Ri7AkA&usqp=CAU",
    bio: "The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
    the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
    a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
    Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 "
  )
end

Post.create(
  title: "Hello world", 
  text: "Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 3,
)

Post.create(
  title: "The cat and the mouse", 
  text: "Lorem Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 2,
)

Post.create(
  title: "The cat and the mouse", 
  text: "Blog  is a discussion or informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 2, 
)
Post.create(
  title: "My hero academia", 
  text: "Discussion or informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 2, 
)
Post.create(
  title: "Naruto shippuden", 
  text: "Informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 1, 
)
Post.create(
  title: "The lion king", 
  text: "Website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 1, 
)
Post.create(
  title: "Kimetsu no yaiba", 
  text: "Traffic blog  is a discussion or informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 1, 
)
Post.create(
  title: "Ao haru ride", 
  text: "A blog  is a discussion or informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 2, 
)
Post.create(
  title: "My little monster", 
  text: "A blog  is a discussion or informational website published on the World Wide Web consisting of discrete, 
  often informal diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other  
  systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or 
  add content to a blog.
  The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 ", 
  user_id: 3, 
)

Like.create(user_id: 1, post_id: 1)
Like.create(user_id: 1, post_id: 2)

Comment.create(
  text: 'The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated 
  the posting of content by non-technical users who did not have much experience with HTML', 
  user_id: 1, 
  post_id: 2)
Comment.create(
  text: 'content by non-technical users who did not have much experience with HTML or computer programming. Previously, 
  a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, ', 
  user_id: 2, 
  post_id: 2
)
Comment.create(
  text: 'occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think 
  tanks, advocacy groups, and similar institutions', 
  user_id: 3, 
  post_id: 2
)
Comment.create(
  text: 'by non-technical users who did not have much experience with HTML or computer 
  had been required to publish content on the Web, and early 
  Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0', 
  user_id: 4, 
  post_id: 1
)
Comment.create(
  text: 'discussion at the top of the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes', 
  user_id: 1, 
  post_id: 1
)
Comment.create(
  text: 'informational website  the web page. Until 2009, blogs were usually the work of a single individual,
  citation needed occasionally of a small group, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes', 
  user_id: 1, 
  post_id: 1
)
Comment.create(
  text: 'entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post, and often covered a single subject or topic. In the 2010s,  MABs emerged, featuring
  the writing of multiple authors and sometimes', 
  user_id: 5, 
  post_id: 3
)
Comment.create(
  text: 'diary-style text entries posts. Posts are typically displayed in reverse chronological order, so that 
  the most recent post appears,  MABs emerged, featuring
  the writing of multiple authors and sometimes', 
  user_id: 1, 
  post_id: 3
)
 
