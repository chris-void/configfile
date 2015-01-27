<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: flymake-cursor.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=flymake-cursor.el" />
<link type="text/css" rel="stylesheet" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" />
<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
<meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: flymake-cursor.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=flymake-cursor.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for flymake-cursor.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=flymake-cursor.el" /><meta content="width=device-width" name="viewport" />
<script type="text/javascript" src="/outliner.0.5.0.62-toc.js"></script>
<script type="text/javascript">

  function addOnloadEvent(fnc) {
    if ( typeof window.addEventListener != "undefined" )
      window.addEventListener( "load", fnc, false );
    else if ( typeof window.attachEvent != "undefined" ) {
      window.attachEvent( "onload", fnc );
    }
    else {
      if ( window.onload != null ) {
	var oldOnload = window.onload;
	window.onload = function ( e ) {
	  oldOnload( e );
	  window[fnc]();
	};
      }
      else
	window.onload = fnc;
    }
  }

  // https://stackoverflow.com/questions/280634/endswith-in-javascript
  if (typeof String.prototype.endsWith !== 'function') {
    String.prototype.endsWith = function(suffix) {
      return this.indexOf(suffix, this.length - suffix.length) !== -1;
    };
  }

  var initToc=function() {

    var outline = HTML5Outline(document.body);
    if (outline.sections.length == 1) {
      outline.sections = outline.sections[0].sections;
    }

    if (outline.sections.length > 1
	|| outline.sections.length == 1
           && outline.sections[0].sections.length > 0) {

      var toc = document.getElementById('toc');

      if (!toc) {
	var divs = document.getElementsByTagName('div');
	for (var i = 0; i < divs.length; i++) {
	  if (divs[i].getAttribute('class') == 'toc') {
	    toc = divs[i];
	    break;
	  }
	}
      }

      if (!toc) {
	var h2 = document.getElementsByTagName('h2')[0];
	if (h2) {
	  toc = document.createElement('div');
	  toc.setAttribute('class', 'toc');
	  h2.parentNode.insertBefore(toc, h2);
	}
      }

      if (toc) {
        var html = outline.asHTML(true);
        toc.innerHTML = html;

	items = toc.getElementsByTagName('a');
	for (var i = 0; i < items.length; i++) {
	  while (items[i].textContent.endsWith('â')) {
            var text = items[i].childNodes[0].nodeValue;
	    items[i].childNodes[0].nodeValue = text.substring(0, text.length - 1);
	  }
	}
      }
    }
  }

  addOnloadEvent(initToc);
  </script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://emacswiki.org/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><body class="http://www.emacswiki.org/emacs"><div class="header"><div class="menu"><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a href="http://www.emacswiki.org/emacs/HowTo" class="local">HowTo</a> <a href="http://www.emacswiki.org/emacs/Glossary" class="local">Glossary</a> <a href="http://www.emacswiki.org/emacs/RecentChanges" class="local">RecentChanges</a> <a href="http://www.emacswiki.org/emacs/News" class="local">News</a> <a href="http://www.emacswiki.org/emacs/Problems" class="local">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><div class="alert alert-danger" role="alert">We <a href="http://www.emacswiki.org/emacs/2015-01-03">moved to a new host</a> at the beginning of 2015. Please <a href="http://www.emacswiki.org/emacs/Comments_on_2015-01-03">report any issues</a> you find.</div></span><form method="get" action="http://www.emacswiki.org/emacs" enctype="multipart/form-data" accept-charset="utf-8" class="search"><p><label for="search">Search:</label> <input type="text" name="search"  size="20" id="search" accesskey="f" /> <label for="searchlang">Language:</label> <input type="text" name="lang"  size="10" id="searchlang" /> <input type="submit" name="dosearch" value="Go!" /></p></form></div><h1><a rel="nofollow" title="Click to search for references to this page" href="http://www.emacswiki.org/emacs?search=%22flymake-cursor%5c.el%22">flymake-cursor.el</a></h1></div><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs/download/flymake-cursor.el">Download</a></p><pre><span class="comment">;;; flymake-cursor.el --- displays flymake error msg in minibuffer after delay</span>
<span class="comment">;;</span>
<span class="comment">;; Author     : ??</span>
<span class="comment">;; origin     : http<span class="builtin">://paste</span>.lisp.org/display/60617,1/raw</span>
<span class="comment">;; Maintainer : Dino Chiesa &lt;dpchiesa@hotmail.com&gt;</span>
<span class="comment">;;            : Donald Curtis &lt;dcurtis@milkbox.net&gt;</span>
<span class="comment">;; Created    : May 2011</span>
<span class="comment">;; Modified   : December 2012</span>
<span class="comment">;; Version    : 0.1.5</span>
<span class="comment">;; Keywords   : languages mode flymake</span>
<span class="comment">;; X-URL      : http<span class="builtin">://www</span>.emacswiki.org/emacs/flymake-cursor.el</span>
<span class="comment">;; Last-saved : &lt;2012-Dec-20 09:49:28&gt;</span>
<span class="comment">;;</span>
<span class="comment">;; -------------------------------------------------------</span>
<span class="comment">;;</span>
<span class="comment">;; License: None.  This code is in the Public Domain.</span>
<span class="comment">;;</span>
<span class="comment">;;</span>
<span class="comment">;; Additional functionality that makes flymake error messages appear</span>
<span class="comment">;; in the minibuffer when point is on a line containing a flymake</span>
<span class="comment">;; error. This saves having to mouse over the error, which is a</span>
<span class="comment">;; keyboard user's annoyance.</span>
<span class="comment">;; -------------------------------------------------------</span>
<span class="comment">;;</span>
<span class="comment">;; This flymake-cursor module displays the flymake error in the</span>
<span class="comment">;; minibuffer, after a short delay.  It is based on code I found roaming</span>
<span class="comment">;; around on the net, unsigned and unattributed. I suppose it's public</span>
<span class="comment">;; domain, because, while there is a <span class="string">"License"</span> listed in it, there</span>
<span class="comment">;; is no license holder, no one to own the license.</span>
<span class="comment">;;</span>
<span class="comment">;; This version is modified slightly from that code. The post-command fn</span>
<span class="comment">;; defined in this code does not display the message directly. Instead</span>
<span class="comment">;; it sets a timer, and when the timer fires, the timer event function</span>
<span class="comment">;; displays the message.</span>
<span class="comment">;;</span>
<span class="comment">;; The reason to do this: the error message is displayed only if the</span>
<span class="comment">;; user doesn't do anything, for about one second. This way, if the user</span>
<span class="comment">;; scrolls through a buffer and there are myriad errors, the minibuffer</span>
<span class="comment">;; is not constantly being updated.</span>
<span class="comment">;;</span>
<span class="comment">;; If the user moves away from the line with the flymake error message</span>
<span class="comment">;; before the timer expires, then no error is displayed in the minibuffer.</span>
<span class="comment">;;</span>
<span class="comment">;; I've also updated the names of the defuns. They all start with flyc now.</span>
<span class="comment">;;</span>
<span class="comment">;; To use this, include this line in your .emacs<span class="builtin">:</span></span>
<span class="comment">;;</span>
<span class="comment">;;    ;; enhancements for displaying flymake errors</span>
<span class="comment">;;    (<span class="keyword">require</span> '<span class="constant">flymake-cursor</span>)</span>
<span class="comment">;;</span>
<span class="comment">;; You can, of course, put that in an eval-after-load clause.</span>
<span class="comment">;;</span>
<span class="comment">;; -------------------------------------------------------</span>
<span class="comment">;;</span>
<span class="comment">;; Update 2012-03-06 by Donald Curtis</span>
<span class="comment">;; --</span>
<span class="comment">;; Added some autoload statements and the closing comment to make</span>
<span class="comment">;; compatible with package.el parser.</span>
<span class="comment">;;</span>
<span class="comment">;; Update 2012-12-20 by Jeremy Moore</span>
<span class="comment">;; --</span>
<span class="comment">;; Alter post-command-hook's local value via add-hook so that it plays</span>
<span class="comment">;; nicely with other packages.</span>
<span class="comment">;;</span>


(<span class="keyword">require</span> '<span class="constant">cl</span>)

(<span class="keyword">defvar</span> <span class="variable">flyc--e-at-point</span> nil
  <span class="string">"Error at point, after last command"</span>)

(<span class="keyword">defvar</span> <span class="variable">flyc--e-display-timer</span> nil
  <span class="string">"A timer<span class="comment">; when it fires, it displays the stored error message."</span>)</span>

(<span class="keyword">defun</span> <span class="function">flyc/maybe-fixup-message</span> (errore)
  <span class="string">"pyflake is flakey if it has compile problems, this adjusts the
message to display, so there is one <span class="comment">;)"</span></span>
  (<span class="keyword elisp">cond</span> ((not (or (eq major-mode 'Python) (eq major-mode 'python-mode) t)))
        ((null (flymake-ler-file errore))
         <span class="comment">;; normal message do your thing</span>
         (flymake-ler-text errore))
        (t <span class="comment">;; could not compile error</span>
         (format <span class="string">"compile error, problem on line %s"</span> (flymake-ler-line errore)))))

(<span class="keyword">defun</span> <span class="function">flyc/show-stored-error-now</span> ()
  <span class="string">"Displays the stored error in the minibuffer."</span>
  (interactive)
  (<span class="keyword elisp">let</span> ((editing-p (= (minibuffer-depth) 0)))
   (<span class="keyword elisp">if</span> (and flyc--e-at-point editing-p)
       (<span class="keyword elisp">progn</span>
         (message <span class="string">"%s"</span> (flyc/maybe-fixup-message flyc--e-at-point))
         (setq flyc--e-display-timer nil)))))


(<span class="keyword">defun</span> <span class="function">flyc/-get-error-at-point</span> ()
  <span class="string">"Gets the first flymake error on the line at point."</span>
  (<span class="keyword elisp">let</span> ((line-no (line-number-at-pos))
        flyc-e)
    (<span class="keyword cl">dolist</span> (elem flymake-err-info)
      (<span class="keyword elisp">if</span> (eq (car elem) line-no)
          (setq flyc-e (car (second elem)))))
    flyc-e))


<span class="comment">;;;###<span class="warning">autoload</span></span>
(<span class="keyword">defun</span> <span class="function">flyc/show-fly-error-at-point-now</span> ()
  <span class="string">"If the cursor is sitting on a flymake error, display
the error message in the  minibuffer."</span>
  (interactive)
  (<span class="keyword elisp">if</span> flyc--e-display-timer
      (<span class="keyword elisp">progn</span>
        (cancel-timer flyc--e-display-timer)
        (setq flyc--e-display-timer nil)))
  (<span class="keyword elisp">let</span> ((<span class="warning">error</span>-at-point (flyc/-get-error-at-point)))
    (<span class="keyword elisp">if</span> error-at-point
        (<span class="keyword elisp">progn</span>
          (setq flyc--e-at-point error-at-point)
          (flyc/show-stored-error-now)))))


<span class="comment">;;;###<span class="warning">autoload</span></span>
(<span class="keyword">defun</span> <span class="function">flyc/show-fly-error-at-point-pretty-soon</span> ()
  <span class="string">"If the cursor is sitting on a flymake error, grab the error,
and set a timer for \"pretty soon\". When the timer fires, the error
message will be displayed in the minibuffer.

This allows a post-command-hook to NOT cause the minibuffer to be
updated 10,000 times as a user scrolls through a buffer
quickly. Only when the user pauses on a line for more than a
second, does the flymake error message (<span class="keyword elisp">if</span> any) get displayed.

"</span>
  (<span class="keyword elisp">if</span> flyc--e-display-timer
      (cancel-timer flyc--e-display-timer))

  (<span class="keyword elisp">let</span> ((<span class="warning">error</span>-at-point (flyc/-get-error-at-point)))
    (<span class="keyword elisp">if</span> error-at-point
        (setq flyc--e-at-point error-at-point
              flyc--e-display-timer
              (run-at-time <span class="string">"0.9 sec"</span> nil 'flyc/show-stored-error-now))
      (setq flyc--e-at-point nil
            flyc--e-display-timer nil))))


<span class="comment">;;;###<span class="warning">autoload</span></span>
(<span class="keyword elisp">eval-after-load</span> <span class="string">"flymake"</span>
  '(<span class="keyword elisp">progn</span>

     (<span class="keyword">defadvice</span> <span class="function">flymake-goto-next-error</span> (after flyc/display-message-1 activate compile)
       <span class="string">"Display the error in the mini-buffer rather than having to mouse over it"</span>
       (flyc/show-fly-error-at-point-now))

     (<span class="keyword">defadvice</span> <span class="function">flymake-goto-prev-error</span> (after flyc/display-message-2 activate compile)
       <span class="string">"Display the error in the mini-buffer rather than having to mouse over it"</span>
       (flyc/show-fly-error-at-point-now))

     (<span class="keyword">defadvice</span> <span class="function">flymake-mode</span> (before flyc/post-command-fn activate compile)
       <span class="string">"Add functionality to the post command hook so that if the
cursor is sitting on a flymake error the error information is
displayed in the minibuffer (rather than having to mouse over
it)"</span>
       (add-hook 'post-command-hook 'flyc/show-fly-error-at-point-pretty-soon t t))))


(<span class="keyword">provide</span> '<span class="constant">flymake-cursor</span>)

<span class="comment">;;; flymake-cursor.el ends here</span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="translation bar"><br />  <a href="http://www.emacswiki.org/emacs?action=translate;id=flymake-cursor.el;missing=de_es_fr_it_ja_ko_pt_ru_se_uk_zh" class="translation new" rel="nofollow">Add Translation</a></span><div class="edit bar"><a href="http://www.emacswiki.org/emacs/Comments_on_flymake-cursor.el" accesskey="c" class="comment local edit">Talk</a> <a class="edit" href="http://www.emacswiki.org/emacs?action=edit;id=flymake-cursor.el" accesskey="e" rel="nofollow" title="Click to edit this page">Edit this page</a> <a rel="nofollow" class="history" href="http://www.emacswiki.org/emacs?action=history;id=flymake-cursor.el">View other revisions</a> <a href="http://www.emacswiki.org/emacs?action=admin;id=flymake-cursor.el" class="admin" rel="nofollow">Administration</a></div><div class="time">Last edited 2013-08-22 10:32 UTC by <a title="london.languagelab.com" href="http://www.emacswiki.org/emacs/RyanKaskel" class="author">RyanKaskel</a> <a rel="nofollow" class="diff" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=flymake-cursor.el">(diff)</a></div><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a class="licence" href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
