{extends file='page.tpl'}
{block name='links' append}
	<link href="/css/index.css" rel="stylesheet" />
	<link href="/css/header.css" rel="stylesheet" />
	<link href="/css/footer.css" rel="stylesheet" />
	<script src="/js/jquery.scrollorama.js"></script>
	{literal}
		<script>
			$(function(){
				var scrollorama = $.scrollorama({
			        blocks:'.scrollblock'
			    });

			    //scrollorama.animate('#first_p',{ delay: 250, duration: 350, property:'top', start:150, end:0 });
			    scrollorama.animate('#block_2',{ delay: 250, duration: 500, property:'top', start:150, end:0 });
			    scrollorama.animate('#block_2',{ delay: 250, duration: 500, property:'opacity', start:0, end:1 });

			    scrollorama.animate('#sec_li1, #block_2 h1.block_h1',{ delay: 200, duration: 350, property:'top', start:100, end:0 });
			    scrollorama.animate('#sec_li2',{ delay: 250, duration: 350, property:'top', start:350, end:0 });
			    scrollorama.animate('#sec_li3',{ delay: 300, duration: 350, property:'top', start:600, end:0 });

			    var img_count = $('#block_3 img').length;
			    for (var i = 0; i < img_count/2; i++) {
			    	scrollorama.animate('#block_3 img:nth-child(' + (i*2 + 1) + ')',{ delay: 850 + i*500, duration: 400, property:'top', start:300, end:0 });
			    	scrollorama.animate('#block_3 img:nth-child(' + (i*2 + 2) + ')',{ delay: 850 + i*500 + 100, duration: 400, property:'top', start:550, end:0 });

			    	scrollorama.animate('#block_3 img:nth-child(' + (i*2 + 1) + ')',{ delay: 850 + i*500, duration: 400, property:'opacity', start:0, end:1 });
			    	scrollorama.animate('#block_3 img:nth-child(' + (i*2 + 2) + ')',{ delay: 850 + i*500 + 100, duration: 400, property:'opacity', start:0, end:1 });	
			    }

			    scrollorama.animate('#block_3 h1.block_h1',{ delay: 850, duration: 400, property:'top', start:300, end:0 });
			    scrollorama.animate('#block_3 h1.block_h1',{ delay: 850, duration: 400, property:'opacity', start:0, end:1 });


			    scrollorama.animate('#view_all',{ delay: 900 + (img_count/2)*500, duration: 250, property:'top', start:100, end:0 });
			    scrollorama.animate('#view_all',{ delay: 900 + (img_count/2)*500, duration: 250, property:'opacity', start:0, end:1 });


			    scrollorama.animate('footer',{ delay: 900 + (img_count/2)*500 + 150, duration: 400, property:'top', start:300, end:1 });
			    scrollorama.animate('footer',{ delay: 900 + (img_count/2)*500 + 150, duration: 400, property:'opacity', start:0, end:1 });


			    scrollorama.animate('footer div.text, footer div.info',{ delay: 900 + (img_count/2)*500 + 150, duration: 300, property:'top', start:200, end:1 });
			    scrollorama.animate('footer div.text, footer div.info',{ delay: 900 + (img_count/2)*500 + 150, duration: 300, property:'opacity', start:0, end:1 });
			});
		</script>
	{/literal}
{/block}
{block name='div.main'}
	<section id="block_1">
    	<div id="floater">&nbsp;</div>
		<div class="wraper_start">
			<img class="logo" src="/images/logo.png" />
			<h1>Web, design & more</h1>
		</div>
		<nav id="main_menu">
			<ul>
				<li><a href="#">Услуги</a><span>/</span></li>
				<li><a href="#">Проекты</a><span>/</span></li>
				<li><a href="#">Контакты</a></li>
			</ul>
		</nav>
	</section>
	<section id="block_2">
		<!--<div class="parallax_block" id="p1">
			<img src="/images/bg1.png" />
		</div>
		<div class="parallax_block" id="p2">
			<img src="/images/bg1.png" />
		</div>
		<div class="parallax_block" id="p3">
			<img src="/images/bg1.png" />
		</div>
		<div class="parallax_block" id="p4">
			<img src="/images/bg1.png" />
		</div>-->
		<div class="services">
			<h1 class="block_h1">Наши услуги</h1>
			<ul>
				<li id="sec_li1">
					<div class="wrap">
						<img src="/images/ico1.png" />
						<h2>Создание веб-сайтов</h2>
						<div class="text">Это наш конек. С каждым новым проектом мы оттачиваем свое мастерство и мечтаем пусть и не совершить революцию в разработке сайтов, но сделать пространство интернета чуть лучше.</div>
					</div>
				</li><li id="sec_li2">
					<div class="wrap">
						<img src="/images/ico2.png" />
						<h2>Редизайн сайтов</h2>
						<div class="text">По нашему опыту можем точно сказать, что переделать сайт требуется не только ради красоты. Как правило, за желанием что-то изменить всегда кроются реальные проблемы.</div>
					</div>
				</li><li id="sec_li3">
					<div class="wrap">
						<img src="/images/ico3.png" />
						<h2>Поддержка сайтов</h2>
						<div class="text">Важной частью работ над любым сайтом является его техническая или информационная поддержка, ведь даже самое информативное и насыщенное содержимое нуждается в регулярном обновлении, которое должно производиться правильно и в срок.</div>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<section id="block_3">
		<h1 class="block_h1">Наши проекты</h1>
		<div class="gallery">
			<img src="/images/img4.png" /><img src="/images/img1.jpg" /><img src="/images/img3.jpg" /><img src="/images/img2.png" /><img src="/images/img4.png" /><img src="/images/img1.jpg" />
		</div>
		<div class="center_button" id="view_all">
			<a href="#" class="button">Посмотреть все</a>
		</div>
	</section>
   {include file="footer.tpl"}
{/block}