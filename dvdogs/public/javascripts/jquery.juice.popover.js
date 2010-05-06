/*
 * jquery.juice.popover.js
 *
 * Juice Library Popover v0.1.2
 * Date: 2009-11-03
 * Requires: jQuery v1.3 or later
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
 * Copyright 2009 Steve Whiteley (http://jui.ce.it)
 */

(function($) {
	$.fn.popover = function(callerSettings) {
		var t = this, settings, event, set = $(t), p = {};
		if (callerSettings.event && callerSettings.event.type) {
			event = callerSettings.event;
			callerSettings.event = callerSettings.event.type;
		}
		settings = $.extend(true, {}, $.fn.popover.settings, callerSettings);
		this.close = function(e) {
			if (e) { e.preventDefault(); }
			p.footer.slideUp(function() {
	 			p.inner.fadeOut(settings.effects, function() {
 					p.content.fadeOut(settings.effects, function() {
				 		p.overlay.fadeOut(settings.effects, function() {
			 				p.content.stop({ gotoEnd: true });
					 		p.wrapper.remove();
					 		if (settings.animate === false) {
					 			$.fx.off = on;
					 		}
					 		if ($.support.opacity) {
						 		$('select, embed, object')
						 			.each(function() {
						 				if ($(this).data('popover')) {
											$(this).css('visibility', 'visible');
										}
						 			});
							}
					 		$('*', p.wrapper)
					 			.andSelf()
					 			.add([window, document])
					 			.unbind('.popover');
					 		if ($.isFunction(settings.onclose)) {
								settings.onclose(this);
							}
							if (settings.reload === true) {
								window.location.reload(true);
							}
						});
					});
				});
			});
		};
		return this.each(function(index) {
			var n = $(this);
			var setup = function() {
				var sizes;
				if (sizes = new RegExp('\\bjuice\\[([0-9]+)x([0-9]+)\\]', 'i').exec(n.attr('class'))) {
					settings.width = parseInt(sizes[1]);
					settings.height = parseInt(sizes[2]);
				}
				if (settings.animate === false) {
					$.fx.off = true;
				}
				p.wrapper = $('<div />')
					.attr('id', 'juice-popover')
					.addClass('juice-popover-wrapper')
					.addClass(settings.theme)
					.css({
						textAlign: 'center',
						fontFamily: 'Verdana,Arial,Geneva,Helvetica,sans-serif'
					})
					.appendTo('body');
				p.container = $('<div />')
					.addClass('juice-popover-container')
					.appendTo(p.wrapper)
					.css({
				 		position: 'absolute',
				 		zIndex: 1001,
				 		margin: '0 auto',
				 		width: '100%',
						top: Math.round($(window).scrollTop() + (($(window).height() / 100) * settings.offset)),
						left: 0
				 	});
				p.content = $('<div />')
					.addClass('juice-popover-content')
					.appendTo(p.container)
					.hide()
					.css({
				 		zIndex: 1002,
				 		padding: settings.padding,
				 		width: 250,
				 		height: 250,
				 		position: 'relative',
				 		margin: '0 auto',
				 		textAlign: 'left',
						background: settings.colour
				 	});
				p.loading = $('<div />')
					.addClass('juice-popover-loading')
					.appendTo(p.content)
					.css({
						position: 'absolute',
						background: settings.colour + ' url(' + settings.images.loading + ') 10px center no-repeat',
						padding: '20px 20px 20px 50px',
						color: '#666666'
					})
					.html('Loading or <a href="#close">Cancel</a>');
				$('a', p.loading)
					.css('color', settings.cancelColour)
					.click(t.close);
				p.inner = $('<div />')
					.addClass('juice-popover-inner')
					.appendTo(p.content)
					.hide()
					.css({
						width: '100%',
				 		height: '100%',
						overflow: 'auto',
						position: 'relative',
						background: settings.colour
					});
				p.header = $('<div />')
					.addClass('juice-popover-header')
					.appendTo(p.content)
					.hide()
					.css({	
						zIndex: 1003,
						position: 'absolute',
						top: -22,
						height: 22,
						right: 0,
						color: '#FFFFBE',
						textAlign: 'right',
						overflow: 'hidden'
					});
				if (settings.title) {
					p.title = $('<span />')
						.addClass('juice-popover-title')
						.appendTo(p.header)
						.text(settings.title.toString())
						.css({
							float: 'left',
							textAlign: 'left'
						});
				}
				p.footer = $('<div />')
					.addClass('juice-popover-footer')
					.appendTo(p.content)
					.hide()
					.css({	
						zIndex: 1004,
						position: 'absolute',
						top: 0,
						left: 0,
						background: settings.colour,
						padding: settings.padding,
						fontSize: '10px',
						color: '#666666',
						lineHeight: '13px',
						width: '100%'
					});
				
				if (settings.closeLink) {
					p.closeLink = $('<a />')
						.addClass('juice-popover-close-link')
						.appendTo(p.header)
						.text('close')
						.css({
							cursor: 'pointer'
						})
						.bind('click.popover', t.close);
				}
				p.caption = $('<div />')
					.addClass('juice-popover-caption')
					.prependTo(p.footer)
					.css({	
						fontWeight: 'bold'
					})
					.html('Loading');
				p.close = $('<img />')
					.addClass('juice-popover-close')
					.css({
						'float': 'right',
						cursor: 'pointer'
					})
					.attr('src', settings.images.close)
					.prependTo(p.footer)
					.click(t.close);
				if ($.inArray(settings.type, ['image','gallery']) !== -1) {
					settings.footer = true;
					if (set.length > 1) {
						p.next = $('<div />')
							.addClass('juice-popover-next')
							.appendTo(p.inner)
							.css({
								position: 'absolute',
								top: 0,
								right: 0,
								cursor: 'pointer',
								width: '50%',
								height: '100%',
								backgroundPosition: 'right 10%',
								backgroundRepeat: 'no-repeat'
							})
							.hover(function() {
								$(this).css('background-image', 'url(' + settings.images.next + ')');
							}, function() {
								$(this).css('background-image', 'none');
							})
							.bind('click.popover', function() {
								collapse(next);
							});
						p.prev = $('<div />')
							.addClass('juice-popover-prev')
							.appendTo(p.inner)
							.css({
								position: 'absolute',
								top: 0,
								left: 0,
								cursor: 'pointer',
								width: '50%',
								height: '100%',
								backgroundPosition: 'left 10%',
								backgroundRepeat: 'no-repeat'
							})
							.hover(function() {
								$(this).css('background-image', 'url(' + settings.images.prev + ')');
							}, function() {
								$(this).css('background-image', 'none');
							})
							.bind('click.popover', function() {
								collapse(previous);
							});
						p.number = $('<div />')
							.addClass('juice-popover-numbers')
							.css('padding-top', '2px')
							.appendTo(p.footer);
						setNumber(index);
					}	
				}
				p.overlay = $('<div />')
					.addClass('juice-popover-overlay')
					.appendTo(p.wrapper)
					.hide()
				 	.css({
				 		position: 'absolute',
				 		top: 0,
				 		left: 0,
				 		zIndex: 1000,
				 		opacity: settings.opacity,
				 		backgroundColor: settings.bg
				 	});
				overlay();
				p.overlay.fadeIn(settings.effects, function() {
					p.content.fadeIn(
						settings.effects,
						function() {
							loading(function() {
								content(
									settings.type,
									settings.type == 'gallery' ? n.attr('href') : settings.action,
									settings.method
								);
							});
						});
				});
				if ($.browser.msie && $.browser.version == 6) {
					$('select:visible, embed:visible, object:visible')
						.data('popover', true)
						.css('visibility', 'hidden');
				}
				p.wrapper.bind('click.popover', function(e) {
					if (settings.bgClose !== false) {
						t.close(e);
					}
				});
				p.content.bind('click.popover', function(e) {
					e.stopPropagation();
				});
				$(window)
					.bind('resize.popover', overlay)
					.bind('scroll.popover', position);
				$(document)
					.bind('keyup.popover', keys);
			};
			var content = function(type, action, method, data) {
				switch (type) {
					case 'ajax':
						if (settings.event == 'submit') {
							method = n.attr('method') || settings.method;
							action = settings.action || n.attr('action');
							data = n.serializeArray();
							settings.event = null;
						}
						$.ajax({
							type: method.toUpperCase(),
							url: action,
							dataType: 'html',
							data: data,
							cache: false,
							success: function(data, status) {
								p.inner.html(data);
								parse();
							},
							error: function() {
								error('Content could not be fetched / timed out.');
							}
						});
					break;
					case 'frame':
					case 'iframe':
						$('<iframe frameborder="0" />')
							.appendTo(p.inner)
							.css({
								overflow: 'auto',
								width: '100%',
								height: '100%'
							})
							.ready(loaded)
							.error(function() {
								error('Unable to load iframe content.');
							})
							.attr('src', action);
						p.inner.css('overflow', 'hidden');
					break;
					case 'gallery':
						settings.caption = n.attr('title');
					case 'image':
						p.inner.css('overflow', 'hidden');
						$('<img />')
							.load(function() {
								n.data('loaded', true);
								settings.width = this.width;
								settings.height = this.height;
								$('#popoverImage').remove();
								$('<div />')
									.attr('id', 'popoverImage')
									.css({
										background: 'url(' + this.src + ') center center no-repeat',
										width: '100%',
										height: '100%'
									})
									.appendTo(p.inner);
								loaded();
							})
							.error(function() {
								error('Unable to load image.');
							})
							.attr('src', action);
					break;
					case 'inline':
						var node;
						if (node = $(action)) {
							node.clone(true).appendTo(p.inner);
							parse();
						} else {
							error('Unable to locate inline content.');
						}
					break;
				}
			};
			var loading = function(callback) {
				p.header.fadeOut(settings.effects);
				if (!n.data('loaded')) {
					p.loading.show();
				}
				if (settings.type == 'gallery' && set.length > 1) {
					p.prev.add(p.next).hide();
				}
				p.inner.fadeOut(settings.effects, callback);
			};
			var loaded = function() {
				p.loading.fadeOut(settings.fade, function() {
					p.content
						.animate(
							{ width: size().width, height: size().height },
							'slow',
							'swing',
							function() {
								p.inner.fadeIn(settings.effects, function() {
									p.header
										.css('width', p.content.width() + (settings.padding * 2))
										.fadeIn(settings.effects);
									if (settings.footer === true) {
										p.caption.html(settings.caption)
										p.footer
											.css({
												top: p.content.height() + settings.padding,
												width: p.content.width()
											})
											.slideDown();
										if (settings.type == 'gallery' && set.length > 1) {
											p.prev.add(p.next).show();
										}
									}
								});
							}
						);
					});
			};
			var previous = function() {
				index = (index == 0 ? set.length-1 : index-1);
				n = $(set.get(index));
				loading(function() {
					setNumber(index);
					content(
						settings.type,
						n.attr('href')
					)
				});
			};
			var next = function() {
				index = (index == set.length-1 ? 0 : index+1);
				n = $(set.get(index));
				loading(function() {
					setNumber(index);
					content(
						settings.type,
						n.attr('href')
					)
				});
			};
			var setNumber = function(num) {
				p.number.html(
					settings.numbers.replace(/%c/gi, num + 1).replace(/%t/gi, set.length)
				);
			};
			var parse = function() {
				$('form', p.inner)
					.each(function() {
						var form = $(this);
						form.submit(function(e) {
							e.preventDefault();
							loading(function() {
								content(
									'ajax',
									form.attr('action'),
									form.attr('method') || 'GET',
									form.serializeArray()
								);
							});
						});
					});
				loaded();
			};
			var keys = function(e) {
				switch (e.which) {
					case 27:
						t.close(e);
					break;
					case 88:
						if (e.ctrlKey || settings.type == 'gallery') {
							t.close(e);
						}
					break;
					case 39:
					case 78:
					case 190:
						if (settings.type == 'gallery') {
							collapse(next);
						}
					break;
					case 37:
					case 80:
					case 188:
						if (settings.type == 'gallery') {
							collapse(previous);
						}
					break;
				}
			};
			var overlay = function(e) {
				p.wrapper.hide();
				p.overlay.css({
			 		width: $(window).width(),
					height: $(document).height()
			 	});
				 p.wrapper.show();
				 position(e);
			};
			var position = function(e) {
				p.container
					.stop()
					.animate({
						top: Math.round(Math.max(
							$(window).scrollTop() + (($(window).height() / 100) * settings.offset),
							p.header.height() + 10
						))
					}, 'normal', function() {
						if (e && e.type == 'resize') {
							collapse(loaded, e);
						}
					})
					.css('width', $(window).width());
			};
			var collapse = function(callback, e) {
				if ($('*:animated', p.wrapper).length == 0 || e && e.type == 'resize') {
					p.footer
						.stop(true, true)
						.slideUp(settings.effects, function() {
							p.header
							.stop(true, true)
					 		.fadeOut(settings.effects, callback);
						});
				}
			};
			var size = function() {
				return {
					width: Math.round(Math.min(
						parseSize(settings.width, $(window).width()) || $.fn.popover.defaults.width,
						$(window).width() - (($(window).width() / 100) * 10) - (settings.padding * 2)
					)),
					height: Math.round(Math.min(
						parseSize(settings.height, $(window).height()) || $.fn.popover.defaults.height,
						$(window).height() - p.footer.height() - p.header.height() - (settings.padding * 2) - ((p.container.position().top - $(window).scrollTop()) * 2)
					))
				}
			};
			var parseSize = function(size, scale) {
				if (typeof size == 'number') {
					return size;
				} else if ((size.toString()) && (size.substring(size.length - 1) == '%')) {
					return Math.round((scale / 100) * parseInt(size));
				}
				return false;
			};
			var error = function(err) {
				if (settings.errors === false) {
					t.close();
				} else {
					p.inner.html('<b>Notice:</b> ' + err);
					loaded();
				}
			};
			if (event) {
				event.preventDefault();
				setup(event);
			} else {
				$(this).bind(settings.event, function(e) {
					e.preventDefault();
					setup(e);
				});
			}
			return true;
		});	
	};
	$.fn.popover.settings = {
		action: false,
		animate: true,
		bg: 'black',
		bgClose: true,
		cancelColour: '#0099FF',
		caption: false,
		colour: 'white',
		errors: true,
		event: 'click',
		effects: 'fast',
		footer: false,
		height: 400,
		images: {
			close: '/includes/library/juice/images/popover/close.gif',
			loading: '/includes/library/juice/images/generic/loading.gif',
			next: '/includes/library/juice/images/popover/next.gif',
			prev: '/includes/library/juice/images/popover/prev.gif'
		},
		method: 'GET',
		numbers: 'Image %c of %t',
		offset: 10,
		opacity: 0.8,
		padding: 15,
		reload: false,
		closeLink: false,
		theme: false,
		title: false,
		type: 'ajax',
		width: 400
	};
	$.fn.popover.defaults = function(defaults) {
		$.fn.popover.settings = $.extend(true, {}, $.fn.popover.settings, defaults);
	};
})(jQuery);