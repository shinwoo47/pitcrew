<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Loanday | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
 	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/slicknav.min.css" type="text/css"> 
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/style.css" type="text/css"> 
</head>

<body>
    
    <!-- 네비 -->
	<jsp:include page="../common/menubar.jsp"/>
   

    <!-- Hero Section Begin -->
    <section class="hero set-bg" data-setbg="img/hero-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="hero__text">
                        <h2>Find The Best Monthly Payment</h2>
                        <p>Apply for our business loan in minutes, without painful</p>
                        <a href="#" class="primary-btn">Get Start</a>
                        <a href="#" class="primary-btn howit-btn">How It Work</a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Home About Begin -->
    <section class="home-about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="home__about__text">
                        <div class="section-title">
                            <h2>Thousands Of Customers Trust Our Company</h2>
                            <p>The brochure must grab a viewerâs attention and hold it long enough to deliver the
                                pertinent information. How do you grab your customersâ attention with just a piece</p>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="home__about__item">
                                    <h4>Our Company</h4>
                                    <p>You could try by giving the viewer paper cut, but thatâs not the kind of
                                        attention</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="home__about__item">
                                    <h4>Our Vision</h4>
                                    <p>The brochure must grab a viewerâs attention and hold it long enough to</p>
                                </div>
                            </div>
                        </div>
                        <a href="Â£" class="primary-btn">learn More</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="home__about__img">
                        <img src="img/about/home-about.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home About End -->

    <!-- Loan Services Section Begin -->
    <section class="loan-services spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Discover all the loans for you</h2>
                        <p>If you try to cut corners on your brochure you will end up spending more money</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="loan__services__list">
                <div class="loan__services__item set-bg" data-setbg="img/loan-services/ls-1.jpg">
                    <div class="loan__services__item__text">
                        <h4><span>01.</span> Personal Loan</h4>
                        <p>But thatâs not the kind of attention you want, is it?</p>
                        <a href="#">Find Out More</a>
                    </div>
                </div>
                <div class="loan__services__item set-bg" data-setbg="img/loan-services/ls-2.jpg">
                    <div class="loan__services__item__text">
                        <h4><span>02.</span> Business Loan</h4>
                        <p>But thatâs not the kind of attention you want, is it?</p>
                        <a href="#">Find Out More</a>
                    </div>
                </div>
                <div class="loan__services__item set-bg" data-setbg="img/loan-services/ls-3.jpg">
                    <div class="loan__services__item__text">
                        <h4><span>03.</span> Education Loan</h4>
                        <p>But thatâs not the kind of attention you want, is it?</p>
                        <a href="#">Find Out More</a>
                    </div>
                </div>
                <div class="loan__services__item set-bg" data-setbg="img/loan-services/ls-4.jpg">
                    <div class="loan__services__item__text">
                        <h4><span>04.</span> Commercial Loan</h4>
                        <p>But thatâs not the kind of attention you want, is it?</p>
                        <a href="#">Find Out More</a>
                    </div>
                </div>
                <div class="loan__services__item set-bg" data-setbg="img/loan-services/ls-5.jpg">
                    <div class="loan__services__item__text">
                        <h4><span>05.</span> Health Loan</h4>
                        <p>But thatâs not the kind of attention you want, is it?</p>
                        <a href="#">Find Out More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Loan Services Section End -->

    <!-- Choose Section Begin -->
    <section class="choose spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Why People Choose Us</h2>
                        <p>This question should make the viewer want to open the brochure to learn more.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-1.png" alt="">
                        <h5>Quick & Easy</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-2.png" alt="">
                        <h5>Absolute Security</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-3.png" alt="">
                        <h5>Quick Approval</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-4.png" alt="">
                        <h5>Low Interest Rates</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-5.png" alt="">
                        <h5>Personal Security</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="choose__item">
                        <img src="img/choose/choose-6.png" alt="">
                        <h5>Disbursement Day</h5>
                        <p>Typography should be relevant and thought out. Type is so strong that it can</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Choose Section End -->

    <!-- Testimonial Section Begin -->
    <div class="testimonial spad set-bg" data-setbg="img/testimonial/testimonial-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>What Customers Are Saying</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting has been the</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonial__carousel">
        <div class="container">
            <div class="row">
                <div class="testimonial__slider owl-carousel">
                    <div class="col-lg-4">
                        <div class="testimonial__item">
                            <img src="img/testimonial/testimonial-1.png" alt="">
                            <h5>Gussie Williamson</h5>
                            <span>Ceo Colorlib</span>
                            <p>Thereby, choosing the right business card design is important and requires careful
                                considerations so that it will not look cheap and may tarnish your reputation in this
                                highly</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial__item">
                            <img src="img/testimonial/testimonial-2.png" alt="">
                            <h5>James Santos</h5>
                            <span>Ceo Colorlib</span>
                            <p>You need to pay special attention to the type of colors in your business cards. For
                                instance, if youâre in the funeral industry, bright-luminous type of colors may not be
                                too.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial__item">
                            <img src="img/testimonial/testimonial-3.png" alt="">
                            <h5>Birdie Hamilton</h5>
                            <span>Ceo Colorlib</span>
                            <p>Ensure that the details of your business card are up to date. Business card with outdated
                                contact numbers and addresses should be amended before distributing to your clients.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial__item">
                            <img src="img/testimonial/testimonial-2.png" alt="">
                            <h5>James Santos</h5>
                            <span>Ceo Colorlib</span>
                            <p>You need to pay special attention to the type of colors in your business cards. For
                                instance, if youâre in the funeral industry, bright-luminous type of colors may not be
                                too.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial Section End -->

    <!-- Counter Begin -->
    <div class="counter spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="counter__item">
                        <img src="img/counter/counter-1.png" alt="">
                        <div class="counter__number">
                            <h2 class="counter-add">2100</h2>
                        </div>
                        <p>Successful Loan Approval</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="counter__item">
                        <img src="img/counter/counter-2.png" alt="">
                        <div class="counter__number">
                            <h2 class="counter-add">99</h2>
                            <span>%</span>
                        </div>
                        <p>Customer Satisfection</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="counter__item">
                        <img src="img/counter/counter-3.png" alt="">
                        <div class="counter__number">
                            <h2 class="counter-add">90</h2>
                            <span>+</span>
                        </div>
                        <p>Office National Partners</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="counter__item">
                        <img src="img/counter/counter-4.png" alt="">
                        <div class="counter__number">
                            <h2 class="counter-add">70</h2>
                            <span>+</span>
                        </div>
                        <p>Award Certificate</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Counter End -->

    <!-- Call Section Begin -->
    <section class="call spad set-bg" data-setbg="img/call-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6">
                    <div class="call__text">
                        <div class="section-title">
                            <h2>Request A Call Back</h2>
                            <p>Posters had been a very beneficial marketing tool because it had paved to deliver an
                                effective message that conveyed customerâs attention.</p>
                        </div>
                        <a href="#">Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-6 offset-lg-1 col-md-6">
                    <form action="#" class="call__form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Name">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Email">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Phone">
                            </div>
                            <div class="col-lg-6">
                                <select>
                                    <option value="">Choose Our Services</option>
                                </select>
                            </div>
                        </div>
                        <button type="submit" class="site-btn">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Call Section End -->

    <!-- Blog Section Begin -->
    <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Latest Post</h2>
                        <p>Certainly at that point I was not a potential client for the Strib, but promotional</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="latest__blog__item">
                        <h5><a href="#">Get Best Advertiser In Your Side</a></h5>
                        <p>The StarTribune doesnât just hand out the responsibility of informing their communityâs
                            citizenry on a daily basis to just any...</p>
                        <div class="latest__blog__author">
                            <div class="latest__blog__author__pic">
                                <img src="img/latest/lb-1.png" alt="">
                            </div>
                            <div class="latest__blog__author__text">
                                <h6>May Cain</h6>
                                <span>19th March, 2019</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="latest__blog__item">
                        <h5><a href="#">Internet Advertising Trends You</a></h5>
                        <p>Nope, I had to interview for this job. And I tell you, I was magnificent, so much so that, as
                            you know, I got the position...</p>
                        <div class="latest__blog__author">
                            <div class="latest__blog__author__pic">
                                <img src="img/latest/lb-2.png" alt="">
                            </div>
                            <div class="latest__blog__author__text">
                                <h6>May Cain</h6>
                                <span>19th March, 2019</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="latest__blog__item">
                        <h5><a href="#">Improve Your Business Cards</a></h5>
                        <p>Upon completion of the interview the gentleman that was to give me my first opportunity at
                            financial freedom...</p>
                        <div class="latest__blog__author">
                            <div class="latest__blog__author__pic">
                                <img src="img/latest/lb-3.png" alt="">
                            </div>
                            <div class="latest__blog__author__text">
                                <h6>May Cain</h6>
                                <span>19th March, 2019</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 text-center">
                    <a href="#" class="primary-btn">View More</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Contact Begin -->
    <div class="contact-widget set-bg" data-setbg="img/contact-widget.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="contact__widget__item">
                                <h4>New York Office</h4>
                                <p>917 Atlantic Lane, Strongsville, NY, United State</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="contact__widget__item">
                                <h4>New Jersey Office</h4>
                                <p>1 Walnut Court, East Orange, NJ, United State</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__widget__phone">
                        <span>Contact Us Now!</span>
                        <h2>(+12) 345-678-910</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Please remember though that how far you go is up to you. There is no substitute for your own
                            work and effort in succeeding in this business.</p>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Services</h5>
                        <div class="footer__widget">
                            <ul>
                                <li><a href="#">Personal Loans</a></li>
                                <li><a href="#">Business Loans</a></li>
                                <li><a href="#">Online Cash Loans</a></li>
                                <li><a href="#">Cash Advance</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Socials</h5>
                        <div class="footer__widget footer__widget--social">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i> Instagram</a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                                <li><a href="#"><i class="fa fa-skype"></i> Skype</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget footer__widget--address">
                        <h5>Open Hours</h5>
                        <p>We work all days a week, Please contact us for any inquiry.</p>
                        <ul>
                            <li>Monday - Friday: 11:00 am - 8:00 pm</li>
                            <li>Saturday: 10:00 am - 6:00 pm</li>
                            <li>Sunday: 11:00 am - 6:00 pm</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer__copyright">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <ul class="footer__copyright__links">
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Community</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery-3.3.1.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.nicescroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.slicknav.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/owl.carousel.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/main.js"></script>
</body>

</html>