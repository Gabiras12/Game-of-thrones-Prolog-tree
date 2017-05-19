% male(nome, sobrenome).
male("damon lannister").
male("tybolt lannister").
male("gerold lannister").
male("tywald lannister").
male("tion lannister").
male("tytos lannister").
male("jason lannister").
male("tywin lannister").
male("kevan lannister").
male("emmon frey").
male("tygget lannister").
male("gerion lannister").
male("jaime lannister").
male("tyrion lannister").
male("lancel lannister").
male("willem lannister").
male("martyn lannister").
male("tyrek lannister").
male("robert baratheon").
male("joffrey baratheon").
male("tommen baratheon").

% female(nome, sobrenome).
female("jeyne marbrand").
female("sarelle lannister").
female("joanna lannister").
female("dorna swyft").
female("genna lannister").
female("darlessa marbrand").
female("cersei lannister").
female("amerei frey").
female("janei lannister").
female("ermesande hayford").
female("margaery tyrell").
female("myrcella baratheon").
female("joy hill").

% parent(pai ou mae, filho).
parent("damon lannister", "tybolt lannister").
parent("damon lannister", "gerold lannister").

parent("tybolt lannister", "sarelle lannister").

parent("gerold lannister", "tywald lannister").

parent("gerold lannister", "tion lannister").

parent("gerold lannister", "tytos lannister").

parent("gerold lannister", "jason lannister").

parent("tytos lannister", "tywin lannister").
parent("jeyne marbrand", "tywin lannister").

parent("tytos lannister", "kevan lannister").
parent("jeyne marbrand", "kevan lannister").

parent("tytos lannister", "genna lannister").
parent("jeyne marbrand", "genna lannister").

parent("tytos lannister", "tygget lannister").
parent("jeyne marbrand", "tygget lannister").

parent("tytos lannister", "gerion lannister").
parent("jeyne marbrand", "gerion lannister").

parent("tywin lannister", "cersei lannister").
parent("joanna lannister", "cersei lannister").

parent("tywin lannister", "jaime lannister").
parent("joanna lannister", "jaime lannister").

parent("tywin lannister", "tyrion lannister").
parent("joanna lannister", "tyrion lannister").

parent("kevan lannister", "lancel lannister").
parent("dorna swyft", "lancel lannister").

parent("kevan lannister", "willem lannister").
parent("dorna swyft", "willem lannister").

parent("kevan lannister", "martyn lannister").
parent("dorna swyft", "martyn lannister").

parent("kevan lannister", "janei lannister").
parent("dorna swyft", "janei lannister").

parent("tygget lannister", "tyrek lannister").
parent("darlessa marbrand", "tyrek lannister").

parent("gerion lannister", "joy hill").

parent("cersei lannister", "joffrey baratheon").
% parent(robert, baratheon, joffrey, baratheon).
parent("jaime lannister", "joffrey baratheon").

parent("cersei lannister", "myrcella baratheon").
% parent(robert, baratheon, myrcella, baratheon).
parent("jaime lannister", "myrcella baratheon").

parent("cersei lannister", "tommen baratheon").
% parent(robert, baratheon, tommen, baratheon).
parent("jaime lannister", "tommen baratheon").
