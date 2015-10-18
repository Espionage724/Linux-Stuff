	<section class="t3-copyright">
		<div class="container">
			<div class="row">
				<div class="<?php echo $this->getParam('t3-rmvlogo', 1) ? 'col-md-8' : 'col-md-12' ?> copyright <?php $this->_c('footer') ?>">
					<jdoc:include type="modules" name="<?php $this->_p('footer') ?>" />
          <small>
            This site is powered by <a href="https://www.joomla.org" title="Joomla" target="_blank">Joomla</a> and the responsive <a href="http://www.t3-framework.org/" title="T3" target="_blank">T3 Framework</a>. The template in-use is <a href="https://www.joomlart.com/joomla/templates/purity-iii" title="Purity III" target="_blank">Purity III</a>.
          </small>
          <small>
            The content of <a href="https://www.realmofespionage.com" title="Realm of Espionage">Realm of Espionage</a> is licensed under the <a href="https://creativecommons.org/licenses/by-sa/4.0" title="CC BY-SA 4.0" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International license</a>.
          </small>
          <small>
            <a href="http://twitter.github.io/bootstrap/" title="Bootstrap by Twitter" target="_blank">Bootstrap</a> is a front-end framework of Twitter, Inc. Code licensed under <a href="https://github.com/twbs/bootstrap/blob/master/LICENSE" title="MIT License" target="_blank">MIT License</a>.
          </small>
          <small>
            <a href="http://fortawesome.github.io/Font-Awesome/" target="_blank">Font Awesome</a> font licensed under <a href="http://scripts.sil.org/OFL">SIL OFL 1.1</a>.
          </small>
              </div>
				<?php if ($this->getParam('t3-rmvlogo', 1)): ?>
					<div class="col-md-4 poweredby text-hide">
						<a class="t3-logo t3-logo-color" href="http://t3-framework.org" title="Powered By T3 Framework"
						   target="_blank" <?php echo method_exists('T3', 'isHome') && T3::isHome() ? '' : 'rel="nofollow"' ?>>Powered by <strong>T3 Framework</strong></a>
					</div>
				<?php endif; ?>
			</div>
		</div>
	</section>
