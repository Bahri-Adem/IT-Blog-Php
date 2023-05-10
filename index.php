<?php include "header.php"; ?>
<!-- End Site Header -->
<!-- Start Hero Slider -->
<div class="hero-slider flexslider clearfix" data-autoplay="yes" data-pagination="yes" data-arrows="yes"
  data-style="fade" data-pause="yes">
  <ul class="slides">
    <?php
        $result = $db->prepare("SELECT * FROM slider");
        $result->execute();
        for ($i = 0; $row = $result->fetch(); $i++) {
        ?>
    <li class=" parallax" style="background-image:url(uploads/slider/<?php echo $row['file']; ?>);"></li>
    <?php } ?>
  </ul>
</div>
<!-- End Hero Slider -->
<!--  event Bar -->
<div class="notice-bar">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6 col-xs-6 notice-bar-title"> <span class="notice-bar-title-icon hidden-xs"><i
            class="fa fa-calendar fa-3x"></i></span> <span class="title-note">Next</span> <strong>Upcoming
          Event</strong> </div>
      <?php
        $result = $db->prepare("SELECT * FROM events ORDER BY id DESC Limit 1");
        $result->execute();
        for ($i = 0; $row = $result->fetch(); $i++) {
        ?>
      <div class="col-md-3 col-sm-6 col-xs-6 notice-bar-event-title">
        <h5><a href="event-detail.php?id=<?php echo $row['id']; ?>">
            <?php echo $row['title']; ?>
          </a></h5>
        <span class="meta-data">
          <?php echo $row['venue']; ?>
        </span>
      </div>

      <div id="counter" class="col-md-4 col-sm-6 col-xs-12 counter" data-date="July 13, 2016">
        <div class=""> <span>
            <?php echo $row['date']; ?>
          </span> </div>
      </div>
      <?php } ?>
      <div class="col-md-2 col-sm-6 hidden-xs"> <a href="events.php" class="btn btn-primary btn-lg btn-block">All
          Events</a> </div>
    </div>
  </div>
</div>
<!-- End event Bar -->
<!-- Start Content -->
<div class="main" role="main">
  <div id="content" class="content full">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-sm-6">
          <!-- Events Listing -->
          <div class="listing events-listing">
            <header class="listing-header">
              <h3 class="titles">Welcome to eBlog</h3>
            </header>
            Lorem ipsum dolor sit amet, te eos aeque soluta, eros semper percipit te est. Ad eam ignota suavitate
            moderatius. Ne nam duis nemore, vel id vero congue, cum no labore inermis oportere. Te sit vocent inermis,
            mea ex dicta deleniti mediocrem. Ad pri graece appetere disputationi, omnesque maiestatis qui te, option
            recusabo torquatos an duo.Id eum vero iudico assueverit. Pro facer vidisse ex. Ius ad sumo magna praesent.
            Eu duo hinc dolorem phaedrum, at mel torquatos cotidieque, his te modo vitae forensibus.Quis vero audiam te
            est. Idque omnesque an eam, ei aliquam pertinax abhorreant sit, alienum tincidunt rationibus usu et. Id
            graeco propriae persecuti usu. Habeo melius singulis et his, quo ad laoreet efficiendi. In aliquid indoctum
            dissentiunt eos, per bonorum principes in. Convenire omittantur mea ad, duo at iusto postulant. Sea ne
            tibique scriptorem.Eam tollit albucius ad, sea solum justo rationibus ut, sed oratio explicari no. Regione
            instructior id vix, nec cu definiebas scripserit contentiones. Iriure lobortis pertinacia mel ut. Eam ea
            choro vituperata, recteque sapientem evertitur est an. Ne lucilius inimicus has, ea duo alia aliquid.Sit at
            aperiri indoctum
          </div>
          <div class="spacer-30"></div>
          <!-- Latest News -->
          <div class="listing post-listing">
            <header class="listing-header">
              <h3 class="titles">Latest News</h3>
            </header>
            <section class="listing-cont">
              <ul>
                <li class="item post">
                  <div class="row">
                    <div class="col-md-12">
                      <?php
                            $result = $db->prepare("SELECT * FROM news ORDER BY id DESC Limit 3");
                            $result->execute();
                            for ($i = 0; $row = $result->fetch(); $i++) { ?>
                      <div class="post-title">
                        <h2 class=" titles"><a href="news_post.php?id=<?php echo $row['id']; ?>">
                            <?php echo $row['news_title']; ?>
                          </a></h2>
                        <span class="meta-data"><i class="fa fa-calendar"></i> on
                          <?php echo $row['date']; ?>
                        </span>
                        <p>
                          <?php echo strip_tags(substr($row['news_detail'], 0, 100)); ?>...
                        </p>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                  <center><a href="news-updates.php">All News</a></center>
                </li>
              </ul>
            </section>
          </div>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-4 col-sm-6">
          <!-- Latest Sermons -->
          <div class="listing sermons-listing">
            <header class="listing-header">
            </header>
            <section class="listing-cont">
              <ul>
                <li class="item sermon featured-sermon"> <span class="date"></span>
                  <h4>Like Us on Facebook</h4>

                  <div class="fb-page" data-tabs="timeline,events,messages"
                    data-href="https://www.facebook.com/YoloBookStore" data-width="250" data-hide-cover="false">
                  </div>
                </li>
              </ul>
            </section>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Start Footer -->
<?php include "footer.php"; ?>