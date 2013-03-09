load uwaterloo.mat
iterations = zeros(5,1);

[p,i] = pagerank(G, .15);
iterations(1) = i;

[p,i] = pagerank(G, .5);
iterations(2) = i;

[p,i] = pagerank(G, .75);
iterations(3) = i;

[p,i] = pagerank(G, .85);
iterations(4) = i;

[p,i] = pagerank(G, .95);
iterations(5) = i;

iterations

%iterations =
 %    6            for alpha = .15 
 %   15            for alpha = .5
 %   32            for alpha = .75
 %   51            for alpha = .85
 %  108            for alpha = .95

 
%top 20 rankings for alpha = .85

%1: http://www.uwaterloo.ca
%2: http://findoutmore.uwaterloo.ca
%3: http://campaign.uwaterloo.ca
%4: https://uwaterloo.ca/support
%5: http://www.mozilla.org
%6: http://blog.mozilla.com
%7: http://www.uwaterloo.ca/privacy
%8: http://www.mozilla.org/firefox
%9: http://www.google.com/chrome
%10: http://windows.microsoft.com/en-US/internet-explorer/products/ie/home
%11: http://studentservices.uwaterloo.ca/disabilities
%12: http://hr.uwaterloo.ca/mycareer
%13: http://newsrelease.uwaterloo.ca
%14: http://twitter.com/uwaterloo
%15: http://www.youtube.com/user/experiencewaterloo
%16: http://www.findoutmore.uwaterloo.ca/contact
%17: http://www.findoutmore.uwaterloo.ca/visitus/tourform.php
%18: http://www.findoutmore.uwaterloo.ca/chat
%19: http://findoutmore.uwaterloo.ca/visitus/directions.php
%20: http://www.findoutmore.uwaterloo.ca/newsletter/subscribe.php