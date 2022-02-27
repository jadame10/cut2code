<?php

function cc_image_callout($wp_customize){
$wp_customize->add_section('cc-image-callout-section', array(
	'title' => 'change-main-image'
));

$wp_customize->add_setting('cc-image-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/top2.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-image-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-image-callout-section',
	'settings' => 'cc-image-callout-img',
	'width' => 1920,
	'height' => 1080
)));
	
}
add_action('customize_register', 'cc_image_callout');


function cc_logo_callout($wp_customize){
$wp_customize->add_section('cc-logo-callout-section', array(
	'title' => 'change-logo'
));
$wp_customize->add_setting('cc-logo-callout-headline', array(
	'default' => 'LOGO'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-logo-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-logo-callout-section',
	'settings' => 'cc-logo-callout-headline'
)));
	
$wp_customize->add_setting('cc-logo-callout-img', array(
	'default' => 'LOGO'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-logo-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-logo-callout-section',
	'settings' => 'cc-logo-callout-img', 'cc-callout-headline',
	'width' => 120,
	'height' => 120
)));
	
}
add_action('customize_register', 'cc_logo_callout');

function cc_headline_callout($wp_customize){
	
$wp_customize->add_section('cc-headline-callout-section', array(
	'title' => 'change-headline-texts'
));
$wp_customize->add_setting('cc-headline-callout-headline', array(
	'default' => 'Download Our <br /> app and enjoy!'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-headline-callout-headline-control', array(
	'label' => 'change-Headline',
	'section' => 'cc-headline-callout-section',
	'settings' => 'cc-headline-callout-headline'
)));
	
$wp_customize->add_setting('cc-headline-callout-text', array(
	'default' => 'Contrary to popular belief, Lorem Ipsum is not simply randa text. has roots in a piece of classical Latin literature from BC, making it over 2000 years old. Richard McClintock.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-headline-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-headline-callout-section',
	'settings' => 'cc-headline-callout-text',
	'type' => 'textarea'
)));
	
}
add_action('customize_register', 'cc_headline_callout');


function cc_button1_callout($wp_customize){
	
$wp_customize->add_section('cc-button1-callout-section', array(
	'title' => 'change-button1-text'
));
$wp_customize->add_setting('cc-button1-callout-text', array(
	'default' => 'Download App'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-button1-callout-text-control', array(
	'label' => 'change-text',
	'section' => 'cc-button1-callout-section',
	'settings' => 'cc-button1-callout-text'
)));
		
}

add_action('customize_register', 'cc_button1_callout');


function cc_button2_callout($wp_customize){
	
$wp_customize->add_section('cc-button2-callout-section', array(
	'title' => 'change-button2-text'
));
$wp_customize->add_setting('cc-button2-callout-text', array(
	'default' => 'Watch Video'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-button2-callout-text-control', array(
	'label' => 'change-text',
	'section' => 'cc-button2-callout-section',
	'settings' => 'cc-button2-callout-text'
)));
		
}

add_action('customize_register', 'cc_button2_callout');



function cc_card1_callout($wp_customize){
	
$wp_customize->add_section('cc-card1-callout-section', array(
	'title' => 'change-card1'
));
	
$wp_customize->add_setting('cc-card1-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/icon4.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-card1-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-card1-callout-section',
	'settings' => 'cc-card1-callout-img',
	'width' => 60,
	'height' => 60
)));
	
	
$wp_customize->add_setting('cc-card1-callout-headline', array(
	'default' => 'Awesome Design'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card1-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-card1-callout-section',
	'settings' => 'cc-card1-callout-headline'
)));

$wp_customize->add_setting('cc-card1-callout-text', array(
	'default' => 'Lorem ipsum dolor sit amet into consectetur adipiscing elit, sed do eiusmod tempor incid.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card1-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-card1-callout-section',
	'settings' => 'cc-card1-callout-text',
	'type' => 'textarea'
)));

}
add_action('customize_register', 'cc_card1_callout');


function cc_card2_callout($wp_customize){
	
$wp_customize->add_section('cc-card2-callout-section', array(
	'title' => 'change-card2'
));
	
$wp_customize->add_setting('cc-card2-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/icon5.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-card2-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-card2-callout-section',
	'settings' => 'cc-card2-callout-img',
	'width' => 60,
	'height' => 60
)));
	
	
$wp_customize->add_setting('cc-card2-callout-headline', array(
	'default' => 'Easy to Edit'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card2-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-card2-callout-section',
	'settings' => 'cc-card2-callout-headline'
)));

$wp_customize->add_setting('cc-card2-callout-text', array(
	'default' => 'Lorem ipsum dolor sit amet into consectetur adipiscing elit, sed do eiusmod tempor incid.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card2-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-card2-callout-section',
	'settings' => 'cc-card2-callout-text',
	'type' => 'textarea'
)));

}
add_action('customize_register', 'cc_card2_callout');


function cc_card3_callout($wp_customize){
	
$wp_customize->add_section('cc-card3-callout-section', array(
	'title' => 'change-card3'
));
	
$wp_customize->add_setting('cc-card3-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/icon6.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-card3-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-card3-callout-section',
	'settings' => 'cc-card3-callout-img',
	'width' => 60,
	'height' => 60
)));
	
	
$wp_customize->add_setting('cc-card3-callout-headline', array(
	'default' => 'Fully Secured'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card3-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-card3-callout-section',
	'settings' => 'cc-card3-callout-headline'
)));

$wp_customize->add_setting('cc-card3-callout-text', array(
	'default' => 'Lorem ipsum dolor sit amet into consectetur adipiscing elit, sed do eiusmod tempor incid.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-card3-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-card3-callout-section',
	'settings' => 'cc-card3-callout-text',
	'type' => 'textarea'
)));

}
add_action('customize_register', 'cc_card3_callout');



function cc_hand_section_callout($wp_customize){
	
$wp_customize->add_section('cc-hand-section-callout-section', array(
	'title' => 'change-hand-section'
));
	
$wp_customize->add_setting('cc-hand-section-callout-icon', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/icon1.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-hand-section-callout-icon-control', array(
	'label' => 'Icon',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-icon',
	'width' => 120,
	'height' => 120
)));
	
	
$wp_customize->add_setting('cc-hand-section-callout-headline', array(
	'default' => 'We Designed Perfect App for You'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-hand-section-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-headline'
)));

$wp_customize->add_setting('cc-hand-section-callout-text', array(
	'default' => 'In consequat, quam id sodales hendrerit, eros mi molestie leo an lacinia risus neque tristique augue. Proin tempus urna vel congue elementum. Vestibulum euismod accumsan.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-hand-section-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-text',
	'type' => 'textarea'
)));

	$wp_customize->add_setting('cc-hand-section-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/image-main-1.jpg'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-hand-section-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-img',
	'width' => 640,
	'height' => 340
)));

	

$wp_customize->add_setting('cc-hand-section-callout-list', array(
	'default' => ''
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-hand-section-callout-list-control', array(
	'label' => 'list',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-list',
	'type' => 'textarea'
)));
	
$wp_customize->add_setting('cc-hand-section-callout-button', array(
	'default' => 'Learn More'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-hand-section-callout-button-control', array(
	'label' => 'Button-text',
	'section' => 'cc-hand-section-callout-section',
	'settings' => 'cc-hand-section-callout-button'
)));	
}
add_action('customize_register', 'cc_hand_section_callout');





function cc_question_section_callout($wp_customize){
	
$wp_customize->add_section('cc-question-section-callout-section', array(
	'title' => 'change-question-section'
));
	
$wp_customize->add_setting('cc-question-section-callout-icon', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/icon2.png'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-question-section-callout-icon-control', array(
	'label' => 'Icon',
	'section' => 'cc-question-section-callout-section',
	'settings' => 'cc-question-section-callout-icon',
	'width' => 120,
	'height' => 120
)));
	
	
$wp_customize->add_setting('cc-question-section-callout-headline', array(
	'default' => 'Have any Question?'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-question-section-callout-headline-control', array(
	'label' => 'Headline',
	'section' => 'cc-question-section-callout-section',
	'settings' => 'cc-question-section-callout-headline'
)));

$wp_customize->add_setting('cc-question-section-callout-text', array(
	'default' => 'Cras accumsan pretium dignissim. Curabitur a orci lorem. Phasellus tempor dolor vel odio efficitur ac sollicitudin.'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-question-section-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-question-section-callout-section',
	'settings' => 'cc-question-section-callout-text',
	'type' => 'textarea'
)));

$wp_customize->add_setting('cc-question-section-callout-img', array(
	'default' =>  'http://rekrutacja/wp-content/uploads/2022/02/image-main-2.jpg'
));
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-question-section-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-question-section-callout-section',
	'settings' => 'cc-question-section-callout-img',
	'width' => 400,
	'height' => 495
)));


	

}
add_action('customize_register', 'cc_question_section_callout');



function cc_numbers_callout($wp_customize){
	
$wp_customize->add_section('cc-numbers-callout-section', array(
	'title' => 'change-numbers-text'
));
		
$wp_customize->add_setting('cc-numbers-callout-text1', array(
	'default' => 'Downloads'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-numbers-callout-text1-control', array(
	'label' => 'text1',
	'section' => 'cc-numbers-callout-section',
	'settings' => 'cc-numbers-callout-text1'
)));
	
$wp_customize->add_setting('cc-numbers-callout-text2', array(
	'default' => 'Active Users'
));
	
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-numbers-callout-text2-control', array(
	'label' => 'text2',
	'section' => 'cc-numbers-callout-section',
	'settings' => 'cc-numbers-callout-text2'
)));	
	
$wp_customize->add_setting('cc-numbers-callout-text3', array(
	'default' => 'Ratings'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-numbers-callout-text3-control', array(
	'label' => 'text3',
	'section' => 'cc-numbers-callout-section',
	'settings' => 'cc-numbers-callout-text3'
)));	
$wp_customize->add_setting('cc-numbers-callout-text4', array(
	'default' => 'Happy Clients'
));
	
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-numbers-callout-text4-control', array(
	'label' => 'text4',
	'section' => 'cc-numbers-callout-section',
	'settings' => 'cc-numbers-callout-text4'
)));

}
add_action('customize_register', 'cc_numbers_callout');


function cc_last_callout($wp_customize){
	
$wp_customize->add_section('cc-last-callout-section', array(
	'title' => 'change-lowest-section-texts'
));
$wp_customize->add_setting('cc-last-callout-headline', array(
	'default' => 'Still Not Lucky?'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-last-callout-headline-control', array(
	'label' => 'change-Headline',
	'section' => 'cc-last-callout-section',
	'settings' => 'cc-last-callout-headline'
)));
	
$wp_customize->add_setting('cc-last-callout-text', array(
	'default' => "Lorem Ipsum is simply dummy text of the printing and typesetting
industry. Lorem Ipsum has been the industry's standard."
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-last-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-last-callout-section',
	'settings' => 'cc-last-callout-text',
	'type' => 'textarea'
)));
$wp_customize->add_setting('cc-last-callout-button', array(
	'default' => 'Contact Us'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-last-callout-button-control', array(
	'label' => 'change-button-text',
	'section' => 'cc-last-callout-section',
	'settings' => 'cc-last-callout-button'
)));	
}
add_action('customize_register', 'cc_last_callout');

function cc_footer_callout($wp_customize){
	
$wp_customize->add_section('cc-footer-callout-section', array(
	'title' => 'change-footer-section'
));
$wp_customize->add_setting('cc-footer-callout-headline', array(
	'default' => 'LOGO'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-footer-callout-headline-control', array(
	'label' => 'logo',
	'section' => 'cc-footer-callout-section',
	'settings' =>  'cc-footer-callout-headline'
)));	
$wp_customize->add_setting('cc-footer-callout-img', array(
	'default' => ''
));	
$wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'cc-footer-callout-img-control', array(
	'label' => 'Image',
	'section' => 'cc-footer-callout-section',
	'settings' =>  'cc-footer-callout-img',
	'width' => 60,
	'height' => 60
)));
	
$wp_customize->add_setting('cc-footer-callout-text', array(
	'default' => "
Facebook twitter youtube instagram pinterest dribbble behance"
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-footer-callout-text-control', array(
	'label' => 'Text',
	'section' => 'cc-footer-callout-section',
	'settings' => 'cc-footer-callout-text',
	'type' => 'textarea'
)));
$wp_customize->add_setting('cc-footer-callout-rights', array(
	'default' => '2020 Copyrights & Protected'
));
$wp_customize->add_control(new WP_Customize_Control($wp_customize, 'cc-footer-callout-rights-control', array(
	'label' => 'change-rights',
	'section' => 'cc-footer-callout-section',
	'settings' => 'cc-footer-callout-rights'
)));	
}
add_action('customize_register', 'cc_footer_callout');

?>