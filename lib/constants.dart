import 'package:flutter/material.dart';

const red =Color.fromARGB(255, 243, 71, 71);
const white = Colors.white;
const grey = Color.fromARGB(255, 126, 126, 126);

const food ='https://thumbs.dreamstime.com/z/indian-food-curry-banquet-17901041.jpg';
const forkspoon = 'https://c8.alamy.com/comp/2AR77TE/spoon-fork-red-icon-on-white-background-red-flat-style-vector-illustration-2AR77TE.jpg';
const black =Colors.black;
const lightgrey = Color.fromARGB(66, 158, 158, 158);
const pizza ='https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.southernliving.com%2Frecipes%2Fsupreme-pizza&psig=AOvVaw03-4v5ORx28wTVPTPWAJ3i&ust=1722406221118000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCNiD5bGNzocDFQAAAAAdAAAAABAE';
const burger = 'https://www.google.com/imgres?q=burger&imgurl=https%3A%2F%2Fassets.epicurious.com%2Fphotos%2F5c745a108918ee7ab68daf79%2F1%3A1%2Fw_2560%252Cc_limit%2FSmashburger-recipe-120219.jpg&imgrefurl=https%3A%2F%2Fwww.epicurious.com%2Frecipes%2Ffood%2Fviews%2Fclassic-smashed-cheeseburger-51261810&docid=zF63VJti-aMYyM&tbnid=mBVqgdIRxF3l2M&vet=12ahUKEwjNrOvAjc6HAxUvSWwGHf6LJBYQM3oECGIQAA..i&w=2503&h=2503&hcb=2&ved=2ahUKEwjNrOvAjc6HAxUvSWwGHf6LJBYQM3oECGIQAA';
const sandwich = 'https://www.google.com/imgres?q=sandwich&imgurl=https%3A%2F%2Fstaticcookist.akamaized.net%2Fwp-content%2Fuploads%2Fsites%2F22%2F2021%2F12%2Fegg1-1200x675.jpg&imgrefurl=https%3A%2F%2Fwww.cookist.com%2Ffried-egg-sandwich-recipe%2F&docid=YdKToB6rD1TijM&tbnid=xGp-BiJah-Ue0M&vet=12ahUKEwihre7Xjc6HAxWWWGwGHXnQOOgQM3oECDwQAA..i&w=1200&h=675&hcb=2&ved=2ahUKEwihre7Xjc6HAxWWWGwGHXnQOOgQM3oECDwQAA';
const cake = 'https://www.google.com/imgres?q=cake&imgurl=https%3A%2F%2Fbutterry.com%2Fimage%2Fcache%2Fcatalog%2Fbuttery%2Fsq-choco-vanilla-cake0006chva-AA-1000x1000.jpg&imgrefurl=https%3A%2F%2Fbutterry.com%2Fp-choco-vanilla-cake&docid=3RPGB47jres5HM&tbnid=F1T10UGVXbb_pM&vet=12ahUKEwj8-7nvjc6HAxX9XmwGHd0BIgYQM3oECFkQAA..i&w=1000&h=1000&hcb=2&ved=2ahUKEwj8-7nvjc6HAxX9XmwGHd0BIgYQM3oECFkQAA';
const biriyani = 'https://www.google.com/imgres?q=biriyani&imgurl=https%3A%2F%2Fwww.anifabiriyani.com%2Fmeta%2Fbiriyani-spl.webp&imgrefurl=https%3A%2F%2Fwww.anifabiriyani.com%2Four-menu.html&docid=V2pCjbqubQ7DRM&tbnid=RvuyRL4sqh7hjM&vet=12ahUKEwjnm7OAjs6HAxX7d2wGHSHuChMQM3oECGMQAA..i&w=674&h=674&hcb=2&ved=2ahUKEwjnm7OAjs6HAxX7d2wGHSHuChMQM3oECGMQAA';
const icecream = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.allrecipes.com%2Frecipe%2F140877%2Feasy-eggless-strawberry-ice-cream%2F&psig=AOvVaw3bGCVehjn3X0ARRVTWVSZq&ust=1722406443573000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIjb55SOzocDFQAAAAAdAAAAABAE';
const dosa = 'https://www.google.com/imgres?q=dosa&imgurl=https%3A%2F%2Fwww.indianhealthyrecipes.com%2Fwp-content%2Fuploads%2F2022%2F07%2Fmoong-dal-dosa-recipe.jpg&imgrefurl=https%3A%2F%2Fwww.indianhealthyrecipes.com%2Finstant-pesarattu-moong-dal-dosa-recipe%2F&docid=I3-VmyflrXw9fM&tbnid=6no6Qf0IYkFOcM&vet=12ahUKEwjs-Jqhjs6HAxULR2wGHTtkAaQQM3oECDoQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwjs-Jqhjs6HAxULR2wGHTtkAaQQM3oECDoQAA';
const thali ='https://www.google.com/imgres?q=thali&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F49%2FVegetarian_Curry.jpeg%2F640px-Vegetarian_Curry.jpeg&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FThali&docid=vo6-ca-SS2_lAM&tbnid=XGMDJY9VZKS1tM&vet=12ahUKEwjFypusjs6HAxUgR2wGHSbvIzcQM3oECH4QAA..i&w=640&h=360&hcb=2&ved=2ahUKEwjFypusjs6HAxUgR2wGHSbvIzcQM3oECH4QAA';
