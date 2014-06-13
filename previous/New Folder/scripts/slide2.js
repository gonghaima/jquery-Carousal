//--------------------------//
// * Nouveaux Slide         //
// * jQuery Slideshow       //
// * Written by James Hay   //
// * 21/04/2011             //
//--------------------------//
var x = ['img.nvx-slide','div.nvx-thumb','div.nvx-thumbslide','data-current','div.nvx-thumb-slc','class','[data-current=true]','nvx-thumb-slc','nvx-thumb'];
var gallery;
var thumb;
$.fn.nvxSlide = function(prev, next, thumbs, thumbNext, thumbPrev, showing) {
    gallery = $(this);
    gallery.css('position', 'relative');
    var imgs = gallery.find(x[0]);
    if (imgs.length > 1) {
        for (var i = 0; i < imgs.length; i++) {
            var curImage = $(imgs[i]);
            curImage.css('position', 'absolute');
            curImage.css('top', '0px');
            curImage.css('left', '0px');
            curImage.css('display', 'none');
        }
        imgs[0].setAttribute(x[3], 'true');
        imgs[0].style.display = '';
        setGalleryTraversal(prev, next);
        if (thumbs) {
            thumb = $('#' + thumbs);
            thumb.css('position', 'relative');
            setThumbnailTraversal();
        }
    }
}
function setGalleryTraversal(prev, next) {
    $('#' + next).click(function() {
        var curImage = gallery.find(x[0] + x[6]);
        curImage.removeAttr(x[3]);
        var nextImg = curImage.next(x[0]);
        if (nextImg.length == 0) {
            nextImg = gallery.find(x[0])[0];
            nextImg.setAttribute(x[3], true);
            traverseThumbs(0);
        }
        else {
            nextImg.attr(x[3], true);
            traverseThumbs(nextImg.prevAll(x[0]).length);
        }
        curImage.fadeOut(400);
        $(nextImg).fadeIn(400);
    });
    $('#' + prev).click(function() {
        var curImage = gallery.find(x[0] + x[6]);
        curImage.removeAttr(x[3]);
        var prevImg = curImage.prev(x[0]);
        if (prevImg.length == 0) {
            var imgs = gallery.find(x[0]);
            prevImg = imgs[imgs.length - 1];
            traverseThumbs(imgs.length - 1);
            prevImg.setAttribute(x[3], true);
        }
        else {
            traverseThumbs(prevImg.prevAll(x[0]).length);
            prevImg.attr(x[3], true);
        }
        curImage.fadeOut(400);
        $(prevImg).fadeIn(400);
    });
}
function setThumbnailTraversal() {
    var thumbSlides = thumb.find(x[2]);
    if (thumbSlides.length > 0) {
        thumbSlides.hide();
        $(thumbSlides[0]).show();
        var thumbs = $(thumbSlides[0]).find(x[1]);
        $(thumbs[0]).attr(x[5], x[7]);
        $(x[1]).live('click', function() {
            $(x[4]).attr(x[5], x[8]);
            $(this).attr(x[5], x[7]);
            var slideIndex = $(this).prevAll(x[1]).length;
            var prevSlide = $(this).parent().prev(x[2]);
            var otherIndex = 0;
            if (prevSlide.length > 0) {
                otherIndex = prevSlide.find(x[1]).length;
            }
            index = slideIndex + otherIndex;
            var curImage = gallery.find(x[0] + x[6]);
            curImage.removeAttr(x[3]);
            var nextImg = gallery.find(x[0])[index];
            if (nextImg) {
                nextImg.setAttribute(x[3], true);
                curImage.fadeOut(400);
                $(nextImg).fadeIn(400);
            }
        });
    }
}
function traverseThumbs(index) {
    var newSelection = $(thumb.find(x[1] + ',' + x[4])[index]);
    $(x[4]).attr(x[5], x[8]);
    newSelection.attr(x[5], x[7]);
    var curSlide = newSelection.parent();
    if (!curSlide.is(':visible')) {
        $(x[2]).fadeOut(400);
        curSlide.fadeIn(400);
    }
}