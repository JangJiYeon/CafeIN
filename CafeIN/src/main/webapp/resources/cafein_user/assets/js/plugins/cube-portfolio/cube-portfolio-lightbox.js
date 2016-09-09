(function($, window, document, undefined) {
    'use strict';

    var gridContainer = $('#grid-container'),
        filtersContainer = $('#filters-container'),
        wrap, filtersCallback;


    /*******************************
        init cubeportfolio
     ****************************** */
    gridContainer.cubeportfolio({
        layoutMode: 'grid',
        rewindNav: true,
        scrollByPage: false,
        mediaQueries: [{
            width: 1100,
            cols: 3
        }, {
            width: 800,
            cols: 3
        }, {
            width: 500,
            cols: 2
        }, {
            width: 320,
            cols: 1
        }],
        defaultFilter: '*',
        animationType: 'rotateSides',
        gapHorizontal: 10,
        gapVertical: 10,
        gridAdjustment: 'responsive',
        caption: 'overlayBottomPush',
        displayType: 'sequentially',
        displayTypeSpeed: 100,

        // lightbox
        lightboxDelegate: '.cbp-lightbox',
        lightboxGallery: true,
        lightboxTitleSrc: 'data-title',

        // singlePage popup
        singlePageDelegate: '.cbp-singlePage',
        singlePageDeeplinking: true,
        singlePageStickyNavigation: true,
        singlePageCallback: function(url, element) {
            // to update singlePage content use the following method: this.updateSinglePage(yourContent)
        },

        // singlePageInline
        singlePageInlineDelegate: '.cbp-singlePageInline',
        singlePageInlinePosition: 'below',
        singlePageInlineInFocus: true,
        singlePageInlineCallback: function(url, element) {
            // to update singlePageInline content use the following method: this.updateSinglePageInline(yourContent)
            var t = this;

            $.ajax({
                    url: url,
                    type: 'GET',
                    dataType: 'html',
                    timeout: 5000
                })
                .done(function(result) {

                	t.updateSinglePageInline(attach_FCafeMenuDetail(result));
                	
                	/*원본 소스*/
                    /*t.updateSinglePageInline(result);*/

                })
                .fail(function() {
                    t.updateSinglePageInline("Error! Please refresh the page!");
                });
        }
    });
    
    function attach_FCafeMenuDetail(result) {
    	
    	$('.cbp-popup-content').html(
    			'<div class="cbp-l-inline" style="margin-bottom:0;padding-right:60px;">' +
    		    '<div class="cbp-l-inline-left">' +
    		        '<img src="/CafeIN/resources/cafein_user/assets/img/portfolio/20.jpg" alt="Dashboard" class="cbp-l-project-img">' +
    		    '</div>' +

    		    '<div class="cbp-l-inline-right">' +
    		    	'<div class="pull-left">' +
    		        	'<div class="cbp-l-inline-title korean-font">아메리카노 | 5500원</div>' +
    		        	/*'<div class="cbp-l-inline-subtitle korean-font" style="padding-left:10px;font-size:17px;">가격 : 5500원</div>' +*/
    		        '</div>' +
    		        '<ul class="list-unstyled list-inline pull-left" style="margin:5px 0 0 10px;">' +
    		   			'<li style="font-size:15px;"><i class="fa fa-heart color-green" style="font-size:15px;"></i> 239</li>' +
    		   		'</ul>' +
    		    '</div>' +
    		    '<div class="cbp-l-inline-right" style="padding-left: 40px;">' +
			   		'<p class="cbp-l-inline-desc korean-font">아메리카노 소개</p>' +
			        '<a href="#" class="cbp-l-inline-view btn-u btn-u-large korean-font" style="text-decoration:none;color:#ffffff;">' +
						'<i class="fa fa-thumbs-o-up"></i> 좋아요!' +
					'</a>' +
				'</div>' +
    		'</div>'
    		/*'<div class="cbp-l-inline" style="margin-bottom:0;">' +
    		    '<div class="cbp-l-inline-left">' +
    		        '<img src="assets/img/portfolio/20.jpg" alt="Dashboard" class="cbp-l-project-img">' +
    		    '</div>' +

    		    '<div class="cbp-l-inline-right">' +
    		        '<div class="cbp-l-inline-title korean-font">아메리카노</div>' +
    		        '<div class="cbp-l-inline-subtitle korean-font"><-왼쪽 사진은 메뉴 사진</div>' +

    		        '<div class="cbp-l-inline-desc korean-font">아메리카노 소개</div>' +

    		    '</div>' +
    		'</div>' +
    		
    		'<div class="container funny-boxes cbp-l-inline" style="margin:0 0 20px 0;">' +
    	    '<ul class="row list-row">' +
    	        '<li class="col-md-4 col-sm-6 col-xs-12 md-margin-bottom-30">' +
    	            '<div class="counters rounded">' +
    	                '<span class="counter">18298</span>' +
    	                '<h4 class="text-transform-normal korean-font">메뉴 조회수</h4>' +
    	            '</div>' +
    	        '</li>' +
    	        '<li class="col-md-4 col-sm-6 col-xs-12 md-margin-bottom-30">' +
    	            '<div class="counters rounded">' +
    	                '<ul class="list-unstyled funny-boxes-rating">' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                '</ul> ' +
    	                '<h4 class="text-transform-normal korean-font">메뉴 평균 별점</h4>' +
    	            '</div>    ' +
    	        '</li>' +
    	        '<li class="col-md-4 col-sm-6 col-xs-12 sm-margin-bottom-30">' +
    	            '<div class="counters rounded">' +
    	                '<ul class="list-unstyled funny-boxes-rating">' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star-half-o" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                    '<li><i class="fa fa-star-o" style="font-size:30px;margin-bottom:20px;"></i></li>' +
    	                '</ul>' +
    	                '<h4 class="text-transform-normal korean-font">메뉴 별점주기</h4>' +
    	            '</div>    ' +
    	        '</li>' +
    	    '</ul> ' +
    	'</div>'*/

    	);
    }


    /*********************************
        add listener for filters
     *********************************/
    if (filtersContainer.hasClass('cbp-l-filters-dropdown')) {
        wrap = filtersContainer.find('.cbp-l-filters-dropdownWrap');

        wrap.on({
            'mouseover.cbp': function() {
                wrap.addClass('cbp-l-filters-dropdownWrap-open');
            },
            'mouseleave.cbp': function() {
                wrap.removeClass('cbp-l-filters-dropdownWrap-open');
            }
        });

        filtersCallback = function(me) {
            wrap.find('.cbp-filter-item').removeClass('cbp-filter-item-active');
            wrap.find('.cbp-l-filters-dropdownHeader').text(me.text());
            me.addClass('cbp-filter-item-active');
            wrap.trigger('mouseleave.cbp');
        };
    } else {
        filtersCallback = function(me) {
            me.addClass('cbp-filter-item-active').siblings().removeClass('cbp-filter-item-active');
        };
    }

    filtersContainer.on('click.cbp', '.cbp-filter-item', function() {
        var me = $(this);

        if (me.hasClass('cbp-filter-item-active')) {
            return;
        }

        // get cubeportfolio data and check if is still animating (reposition) the items.
        if (!$.data(gridContainer[0], 'cubeportfolio').isAnimating) {
            filtersCallback.call(null, me);
        }

        // filter the items
        gridContainer.cubeportfolio('filter', me.data('filter'), function() {});
    });


    /*********************************
        activate counter for filters
     *********************************/
    gridContainer.cubeportfolio('showCounter', filtersContainer.find('.cbp-filter-item'), function() {
        // read from url and change filter active
        var match = /#cbpf=(.*?)([#|?&]|$)/gi.exec(location.href),
            item;
        if (match !== null) {
            item = filtersContainer.find('.cbp-filter-item').filter('[data-filter="' + match[1] + '"]');
            if (item.length) {
                filtersCallback.call(null, item);
            }
        }
    });

})(jQuery, window, document);
