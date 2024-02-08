currentDirectory=$(basename "$PWD");
echo '<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  <title>Booty Archive</title>
  <style>
    	html {
	      line-height: 1.5;
	      color: #1a1a1a;
	      background-color: #fdfdfd;
    	}
   	 body {
	      margin: 0 auto;
	      max-width: 36em;
	      padding-left: 50px;
	      padding-right: 50px;
	      padding-top: 50px;
	      padding-bottom: 50px;
	      hyphens: auto;
	      overflow-wrap: break-word;
	      text-rendering: optimizeLegibility;
	      font-kerning: normal;
   	 }
	h1 {
		text-align: center;
	}
	a {
		margin-top: 2rem;
		font-size: 1.3rem;
		color: #1a1a1a;
		text-decoration: none;
	}
	.flex {
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		justify-content: center;
	}
    	.portals {
		flex: 0 1 10em;
		position: relative;
		margin: 0.6rem;
		padding: 3rem;
		background: 
			linear-gradient(90deg, rgba(160 270 170 / 0%), rgba(30 90 170 / 0%)),
			no-repeat var(--url);
		background-position: 
			left top,
			right top;
		border-radius: 20px;
		font-size: 1.8rem;
	}
	.portals:hover {
		  opacity: 0.85;
	}
	.portals:active {
		  box-shadow: 0.1rem -0.1rem 0.1rem 1px rgba(0, 0, 0, 0.15);
	}
  </style>
</head>
<body>
<h1>Booty Archive</h1>
<div class="flex">' > index.html

for element in *;
	do
		if [ -d "$element" ]; then
			echo "<a href='$element/html/$element.html' class=portals style='--url: url(\"$element/$element.png\");'><b>$element</b></a><br>" >> index.html;	
		fi
done;

echo '</div>
</body>
</html>' >> index.html

exit
