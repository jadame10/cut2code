   <div class = "containerz">
        <header>
        <div class="container-fluid t0">
            <div class="row t0">
                <div class="col-md-12 t0">
                    <div class="row">
                        <div class="container-fluid top-content">
                            <div class="row">
                                <div class="col-md-2">
                                </div>
                                <div class="col-6 col-md-4">
									<h3 class="text-left"><?php echo get_theme_mod('cc-logo-callout-headline') ?></h3>
                                      <img src = '<?php echo wp_get_attachment_url(get_theme_mod('cc-logo-callout-img')) ?>' />
                                   
                                </div>
                                <div class="col-6 col-md-4 navigation">
                                    <nav class="navbar">
                                        <div class="container-fluid">
                                          <button class="navbar-toggler ms-auto" type="button" data-mdb-toggle="collapse"
                                            data-mdb-target="#navbarToggleExternalContent3" aria-controls="navbarToggleExternalContent3"
                                            aria-expanded="false" aria-label="Toggle navigation">
                                            <i class="fas fa-bars"></i>
                                          </button>
                                        </div>
                                      </nav>
                                      <div class="collapse" id="navbarToggleExternalContent3">
                                        <div class="bg-light shadow-3 p-4">
                                          <button class="btn btn-link btn-block border-bottom m-0">Link 1</button>
                                          <button class="btn btn-link btn-block border-bottom m-0">Link 2</button>
                                          <button class="btn btn-link btn-block m-0">Link 3</button>
                                        </div>
                                      </div>
                                </div>
                                <div class="col-md-2">
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid main-slogan">
                          <div class="row">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-4">
                              <h3 class="text-left">
								  <?php echo get_theme_mod('cc-headline-callout-headline') ?>
                              
                              </h3>
                              <p class="small-slogan">
								  <?php echo get_theme_mod('cc-headline-callout-text',
														  'Contrary to popular belief, Lorem Ipsum is not simply randa text. has roots in a piece of classical Latin literature from BC, making it over 2000 years old. Richard McClintock.') ?>
                              
                              </p>
                                <div class="buttons1">
                                  <button class="btn btn-md btn-light btn-app"><?php echo get_theme_mod('cc-button1-callout-text', 'Download App') ?></button>
                                  <a href ='#' class="video-link"><div class = 'triangle'></div> <?php echo get_theme_mod('cc-button2-callout-text', 'Watch Video') ?></a>
                                </div>
                            </div>
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2">
                            </div>
                          </div>
                        </div>
                    </div>
                    <img alt="title-pic" src="<?php echo wp_get_attachment_url(get_theme_mod('cc-image-callout-img')) ?>" class="img-responsive top-image" />
                </div>
            </div>
        </div>
    </header>
    </div>
