//--------------------------//
// * Nouveaux Slide         //
// * jQuery Slideshow       //
// * Written by James Hay   //
// * 21/04/2011             //
//--------------------------//

var gallery;
var thumb;
$.fn.nvxSlide = function(prev,next,thumbs,thumbNext,thumbPrev,showing){
	gallery = $(this);
	gallery.css('position','relative');
	var imgs = gallery.find('img.nvx-slide');
	if(imgs.length > 1)
	{
		for(var i = 0; i < imgs.length; i++)
		{
			var curImage = $(imgs[i]);
			curImage.css('position','absolute');
			curImage.css('top','0px');
			curImage.css('left','0px');
			curImage.css('display','none');
		}
		imgs[0].setAttribute('data-current','true');
		imgs[0].style.display = '';
		setGalleryTraversal(prev,next);
		if(thumbs)
		{
			thumb = $('#' + thumbs);
			thumb.css('position','relative');
			setThumbnailTraversal();
		}
	}
}
function setGalleryTraversal(prev,next){
	$('#' + next).click(function(){
		var curImage = gallery.find('img.nvx-slide[data-current=true]');
		curImage.removeAttr('data-current');
		var nextImg = curImage.next('img.nvx-slide');
		if(nextImg.length == 0){
			nextImg = gallery.find('img.nvx-slide')[0];
			nextImg.setAttribute('data-current','true');
			traverseThumbs(0);			
		}
		else{
			nextImg.attr('data-current','true');
			traverseThumbs(nextImg.prevAll('img.nvx-slide').length);			
		}
		curImage.fadeOut(400);
		$(nextImg).fadeIn(400);
	});
	$('#' + prev).click(function(){
		var curImage = gallery.find('img.nvx-slide[data-current=true]');
		curImage.removeAttr('data-current');
		var prevImg = curImage.prev('img.nvx-slide');
		if(prevImg.length == 0){
			var imgs = gallery.find('img.nvx-slide');
			prevImg = imgs[imgs.length - 1];
			traverseThumbs(imgs.length - 1);
			prevImg.setAttribute('data-current','true');
		}
		else{
			traverseThumbs(prevImg.prevAll('img.nvx-slide').length);
			prevImg.attr('data-current','true');
		}
		curImage.fadeOut(400);
		$(prevImg).fadeIn(400);
	});
}
function setThumbnailTraversal(){
	var thumbSlides = thumb.find('div.nvx-thumbslide');
	if(thumbSlides.length > 0)
	{
		thumbSlides.hide();
		$(thumbSlides[0]).show();
		var thumbs = $(thumbSlides[0]).find('div.nvx-thumb');
		$(thumbs[0]).attr('class','nvx-thumb-slc');
		$('div.nvx-thumb').live('click',function() {
			$('div.nvx-thumb-slc').attr('class','nvx-thumb');
			$(this).attr('class','nvx-thumb-slc');			
			var slideIndex = $(this).prevAll('div.nvx-thumb').length;
			var prevSlide = $(this).parent().prev('div.nvx-thumbslide');
			var otherIndex = 0;
			if(prevSlide.length > 0) {
				otherIndex = prevSlide.find('div.nvx-thumb').length;				
			}
			index = slideIndex + otherIndex;
			var curImage = gallery.find('img.nvx-slide[data-current=true]');
			curImage.removeAttr('data-current');
			var nextImg = gallery.find('img.nvx-slide')[index];
			if(nextImg)
			{
				nextImg.setAttribute('data-current','true');
				curImage.fadeOut(400);
				$(nextImg).fadeIn(400);
			}
		});
	}
}
function traverseThumbs(index){
	var newSelection = $(thumb.find('div.nvx-thumb,div.nvx-thumb-slc')[index]);
	$('div.nvx-thumb-slc').attr('class','nvx-thumb');
	newSelection.attr('class','nvx-thumb-slc');
	var curSlide = newSelection.parent();
	if(!curSlide.is(':visible')){
		$('div.nvx-thumbslide').fadeOut(400);
		curSlide.fadeIn(400);
	}
}