<%@page import="org.apache.pdfbox.text.PDFTextStripper"%>
<%@page import="org.apache.pdfbox.pdmodel.PDDocument"%>
<%@page import="pdfbox206.*"%>
<%@page import="java.io.File,java.util.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0047)https://sites.google.com/view/gandhimuseum/home -->
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script async="" src="./index_files/analytics.js.download"></script>
<script src="./index_files/cb=gapi.loaded_0" async=""></script>
<script type="text/javascript">var DOCS_timing={}; DOCS_timing['sl']=new Date().getTime();</script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon"
	href="https://ssl.gstatic.com/atari/images/favicon_2.ico">
<meta name="robots" content="noindex">
<meta property="og:type" content="article">
<meta property="og:title" content="Gandhi Museum, Chennai">
<meta itemprop="url" property="og:url"
	content="https://sites.google.com/view/gandhimuseum/home">
<meta itemprop="image" property="og:image"
	content="https://www.gstatic.com/images/branding/product/1x/atari_512dp.png">
<link href="./index_files/css" rel="stylesheet" type="text/css">
<link href="./index_files/css(1)" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="./index_files/rs=AGEqA5miCANs6KkJzYkki--bku5P953ivg">
<title itemprop="name">Gandhi Museum, Chennai</title>
<style>
.gk8rDe .zfr3Q {
	color: rgba(0, 0, 0, 1);
}

.zfr3Q {
	color: rgba(33, 33, 33, 1);
	font-family: Lato, sans-serif;
	font-size: 15px;
	font-weight: 400;
	line-height: 1.6667;
	padding-top: 12px;
}

.M63kCb {
	background-color: rgba(255, 255, 255, 1);
}

.duRjpb {
	color: rgba(34, 110, 147, 1);
	font-family: Lato, sans-serif;
	font-size: 45px;
	font-weight: 300;
	letter-spacing: 0.5px;
	line-height: 1.2;
	padding-top: 30px;
}

.JYVBee {
	color: rgba(34, 110, 147, 1);
	font-family: Lato, sans-serif;
	font-size: 25px;
	font-weight: 400;
	line-height: 1.4;
	padding-top: 20px;
}

.OmQG5e {
	font-family: Lato, sans-serif;
	font-size: 20px;
	font-weight: 400;
	line-height: 1.25;
	padding-top: 16px;
}

.iwQgFb {
	background-color: rgba(0, 0, 0, 0.150000006);
}

.qeLZfd .duRjpb {
	color: rgba(34, 110, 147, 1);
}

.qeLZfd .JYVBee {
	color: rgba(34, 110, 147, 1);
}

.qeLZfd .dhtgD {
	color: rgba(0, 101, 128, 1);
}

.qeLZfd .dhtgD:hover {
	color: rgba(0, 0, 0, 1);
}

.qeLZfd .dhtgD:visited {
	color: rgba(0, 101, 128, 1);
}

.qeLZfd .iwQgFb {
	background-color: rgba(0, 0, 0, 0.150000006);
}

.qeLZfd:before {
	background-color: rgba(242, 242, 242, 1);
	display: block;
}

.lQAHbd .zfr3Q {
	color: rgba(255, 255, 255, 1);
}

.lQAHbd .dhtgD {
	color: rgba(255, 255, 255, 1);
}

.lQAHbd .dhtgD:hover {
	color: rgba(255, 255, 255, 1);
}

.lQAHbd .dhtgD:visited {
	color: rgba(255, 255, 255, 1);
}

.lQAHbd .iwQgFb {
	background-color: rgba(255, 255, 255, 0.150000006);
}

.lQAHbd:before {
	background-color: rgba(30, 108, 147, 1);
	display: block;
}

.cJgDec .zfr3Q {
	color: rgba(255, 255, 255, 1);
}

.cJgDec .IFuOkc:before {
	background-color: rgba(33, 33, 33, 1);
	opacity: 0;
	display: block;
}

.O13XJf {
	height: 340px;
	padding-bottom: 60px;
	padding-top: 60px;
}

.O13XJf .IFuOkc {
	background-color: rgba(34, 110, 147, 1);
	background-image:
		url(https://ssl.gstatic.com/atari/images/simple-header-blended-small.png);
}

.O13XJf .IFuOkc:before {
	background-color: rgba(33, 33, 33, 1);
	opacity: 0.4;
	display: block;
}

.O13XJf .zfr3Q {
	color: rgba(255, 255, 255, 1);
}

.tpmmCb .zfr3Q {
	color: rgba(33, 33, 33, 1);
}

.tpmmCb .IFuOkc:before {
	background-color: rgba(255, 255, 255, 1);
	display: block;
}

.dhtgD {
	color: rgba(0, 101, 128, 1);
}

.dhtgD:hover {
	color: rgba(0, 122, 147, 1);
}

.dhtgD:active {
	color: rgba(0, 122, 147, 1);
}

.dhtgD:visited {
	color: rgba(0, 101, 128, 1);
}

.Hnbbrb {
	color: rgba(178, 178, 178, 1);
	font-family: Lato, sans-serif;
	font-size: 17px;
	font-weight: 300;
	padding-bottom: 40px;
	padding-top: 17px;
}

.Zjiec {
	color: rgba(255, 255, 255, 1);
	font-family: Lato, sans-serif;
	font-size: 26px;
	font-weight: 300;
	letter-spacing: 1px;
	line-height: 1.3;
	padding-bottom: 62.5px;
	padding-left: 48px;
	padding-right: 36px;
	padding-top: 11.5px;
}

.XMyrgf {
	margin-top: 0px;
	margin-left: 48px;
	margin-bottom: 24px;
	margin-right: 24px;
}

.TlfmSc {
	color: rgba(255, 255, 255, 1);
	font-family: Lato, sans-serif;
	font-size: 20px;
	font-weight: 300;
	line-height: 1.333;
}

.Mz8gvb {
	color: rgba(255, 255, 255, 1);
}

.zDUgLc {
	background-color: rgba(33, 33, 33, 1);
}

.QTKDff.chg4Jd:focus {
	background-color: rgba(255, 255, 255, 0.1199999973);
}

.YTv4We {
	color: rgba(178, 178, 178, 1);
}

.YTv4We:hover:before {
	background-color: rgba(255, 255, 255, 0.1199999973);
	display: block;
}

.YTv4We.chg4Jd:focus:before {
	border-color: rgba(255, 255, 255, 0.3600000143);
	display: block;
}

.eWDljc {
	background-color: rgba(33, 33, 33, 1);
}

.eWDljc .hDrhEe {
	padding-left: 8px;
}

.PsKE7e {
	color: rgba(255, 255, 255, 1);
	font-family: Lato, sans-serif;
	font-size: 16px;
	font-weight: 300;
}

.lhZOrc {
	color: rgba(73, 170, 212, 1);
}

.hDrhEe:hover {
	color: rgba(73, 170, 212, 1);
}

.M9vuGd {
	color: rgba(73, 170, 212, 1);
	font-weight: 400;
}

.jgXgSe:hover {
	color: rgba(73, 170, 212, 1);
}

.j10yRb:hover {
	color: rgba(0, 188, 212, 1);
}

.j10yRb.chg4Jd:focus:before {
	border-color: rgba(255, 255, 255, 0.3600000143);
	display: block;
}

.iWs3gf {
	fill: rgba(255, 255, 255, 1);
}

.wgxiMe {
	background-color: rgba(33, 33, 33, 1);
}

.fOU46b .TlfmSc {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .Mz8gvb {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .qV4dIc {
	color: rgba(255, 255, 255, 0.8700000048);
}

.fOU46b .jgXgSe:hover {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .M9vuGd {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .iWs3gf {
	fill: rgba(255, 255, 255, 0.8700000048);
}

.fOU46b .G8QRnc .Mz8gvb {
	color: rgba(0, 0, 0, 0.8000000119);
}

.fOU46b .G8QRnc .TlfmSc {
	color: rgba(0, 0, 0, 0.8000000119);
}

.fOU46b .G8QRnc .qV4dIc {
	color: rgba(0, 0, 0, 0.6399999857);
}

.fOU46b .G8QRnc .jgXgSe:hover {
	color: rgba(0, 0, 0, 0.8199999928);
}

.fOU46b .G8QRnc .M9vuGd {
	color: rgba(0, 0, 0, 0.8199999928);
}

.fOU46b .G8QRnc .iWs3gf {
	fill: rgba(0, 0, 0, 0.6399999857);
}

@media only screen and (min-width: 1280px) {
	.XeSM4.Ly6Unf.fOU46b .iWs3gf {
		fill: rgba(255, 255, 255, 0.8700000048);
	}
}

@media only screen and (min-width: 1280px) {
	.KuNac.Ly6Unf.fOU46b .iWs3gf {
		fill: rgba(0, 0, 0, 0.6399999857);
	}
}

.fOU46b .zDUgLc {
	opacity: 0;
}

.eBSUbc {
	background-color: rgba(33, 33, 33, 1);
	color: rgba(0, 188, 212, 0.6999999881);
}

.BFDQOb:hover {
	color: rgba(73, 170, 212, 1);
}

.ImnMyf {
	background-color: rgba(255, 255, 255, 1);
	color: rgba(33, 33, 33, 1);
}

.Vs12Bd {
	background-color: rgba(242, 242, 242, 1);
}

.S5d9Rd {
	background-color: rgba(30, 108, 147, 1);
	color: rgba(255, 255, 255, 1);
}

.zfr3Q {
	font-family: Lato, sans-serif;
	font-size: 15px;
	font-weight: 400;
	line-height: 1.6667;
	padding-top: 12px;
}

.duRjpb {
	font-family: Lato, sans-serif;
	font-size: 45px;
	font-weight: 300;
	letter-spacing: 0.5px;
	line-height: 1.2;
	padding-top: 30px;
}

.JYVBee {
	font-family: Lato, sans-serif;
	font-size: 25px;
	font-weight: 400;
	line-height: 1.4;
	padding-top: 20px;
}

.OmQG5e {
	font-family: Lato, sans-serif;
	font-size: 20px;
	font-style: normal;
	font-weight: 400;
	line-height: 1.25;
	padding-top: 16px;
	text-decoration: italic;
}

.n8H08c {
	padding-left: 20px;
	padding-top: 8px;
}

.TYR86d {
	margin-bottom: 6px;
	margin-top: 6px;
	padding-top: 0;
}

.A3Upc {
	font-size: 12px;
	line-height: 1.13;
	padding-top: 12px;
}

.LB7kq .duRjpb {
	font-size: 85px;
	letter-spacing: 2px;
	line-height: 1;
	padding-top: 40px;
	text-align: center;
}

.LB7kq .JYVBee {
	font-size: 34px;
	font-weight: 300;
	line-height: 1.1;
	padding-top: 25px;
}

@media only screen and (max-width: 479px) {
	.LB7kq .duRjpb {
		font-size: 54px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.LB7kq .duRjpb {
		font-size: 71px;
	}
}

@media only screen and (max-width: 479px) {
	.LB7kq .JYVBee {
		font-size: 25px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.LB7kq .JYVBee {
		font-size: 30px;
	}
}

.O13XJf {
	height: 340px;
	padding-bottom: 60px;
	padding-top: 60px;
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.O13XJf {
		height: 280px;
		padding-bottom: 40px;
		padding-top: 40px;
	}
}

@media only screen and (max-width: 479px) {
	.O13XJf {
		height: 250px;
		padding-bottom: 30px;
		padding-top: 30px;
	}
}

.SBrW1 {
	height: 520px;
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.SBrW1 {
		height: 520px;
	}
}

@media only screen and (max-width: 479px) {
	.SBrW1 {
		height: 400px;
	}
}

.gk8rDe {
	height: 180px;
	padding-bottom: 32px;
	padding-top: 60px;
}

.gk8rDe .duRjpb {
	color: rgba(34, 110, 147, 1);
	font-size: 60px;
	line-height: 1.1;
}

.gk8rDe .JYVBee {
	color: rgba(34, 110, 147, 1);
	font-size: 36px;
	line-height: 1.35;
	padding-top: 15px;
}

@media only screen and (max-width: 479px) {
	.gk8rDe .duRjpb {
		font-size: 40px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.gk8rDe .duRjpb {
		font-size: 51px;
	}
}

@media only screen and (max-width: 479px) {
	.gk8rDe .JYVBee {
		font-size: 27px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.gk8rDe .JYVBee {
		font-size: 32px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.gk8rDe {
		padding-top: 45px;
	}
}

@media only screen and (max-width: 479px) {
	.gk8rDe {
		padding-bottom: 0px;
		padding-top: 30px;
	}
}

.dhtgD {
	text-decoration: underline;
}

.JzO0Vc {
	background-color: rgba(33, 33, 33, 1);
	font-family: Lato, sans-serif;
	width: 250px;
}

@media only screen and (min-width: 1280px) {
	.JzO0Vc {
		padding-top: 48.5px;
	}
}

.Zjiec {
	font-family: Lato, sans-serif;
	font-size: 26px;
	font-weight: 300;
	letter-spacing: 1px;
	line-height: 1.3;
	padding-bottom: 62.5px;
	padding-left: 48px;
	padding-right: 36px;
	padding-top: 11.5px;
}

.TlfmSc {
	font-family: Lato, sans-serif;
	font-size: 20px;
	font-weight: 300;
	line-height: 1.333;
}

.PsKE7e {
	font-family: Lato, sans-serif;
	font-size: 16px;
}

.IKA38e {
	line-height: 1.21;
}

@media only screen and (min-width: 1280px) {
	.IKA38e {
		padding-left: 36px;
	}
}

.hDrhEe {
	padding-bottom: 11.5px;
	padding-top: 11.5px;
}

.zDUgLc {
	opacity: 1;
}

.LBrwzc .TlfmSc {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .Hnbbrb {
	color: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .YTv4We {
	color: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .Mz8gvb {
	color: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .iWs3gf {
	fill: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .wgxiMe {
	background-color: rgba(255, 255, 255, 1);
}

.LBrwzc .qV4dIc {
	color: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .M9vuGd {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .Zjiec {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .IKA38e {
	color: rgba(0, 0, 0, 0.6399999857);
}

.LBrwzc .lhZOrc.IKA38e {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .j10yRb:hover {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .eBSUbc {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .hDrhEe:hover {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .jgXgSe:hover {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .M9vuGd:hover {
	color: rgba(0, 0, 0, 0.8000000119);
}

.LBrwzc .zDUgLc {
	border-bottom-color: rgba(204, 204, 204, 1);
	border-bottom-width: 1px;
	border-bottom-style: solid;
}

.fOU46b .LBrwzc .M9vuGd {
	color: rgba(0, 0, 0, 0.8000000119);
}

.fOU46b .LBrwzc .jgXgSe:hover {
	color: rgba(0, 0, 0, 0.8000000119);
}

.fOU46b .LBrwzc .zDUgLc {
	opacity: 1;
	border-bottom-style: none;
}

.fOU46b .LBrwzc .iWs3gf {
	fill: rgba(0, 0, 0, 0.6399999857);
}

.fOU46b .GBy4H .M9vuGd {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .GBy4H .jgXgSe:hover {
	color: rgba(255, 255, 255, 1);
}

.fOU46b .GBy4H .zDUgLc {
	opacity: 1;
}

.fOU46b .GBy4H .iWs3gf {
	fill: rgba(255, 255, 255, 0.8700000048);
}

.XeSM4.yMcSQd.fOU46b .LBrwzc .iWs3gf {
	fill: rgba(0, 0, 0, 0.6399999857);
}

.GBy4H .lhZOrc.IKA38e {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .eBSUbc {
	color: rgba(255, 255, 255, 0.8700000048);
}

.GBy4H .hDrhEe:hover {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .j10yRb:hover {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .YTv4We {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .iWs3gf {
	fill: rgba(255, 255, 255, 0.8700000048);
}

.GBy4H .jgXgSe:hover {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .jgXgSe:hover {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .M9vuGd {
	color: rgba(255, 255, 255, 1);
}

.GBy4H .M9vuGd:hover {
	color: rgba(255, 255, 255, 1);
}

.QcmuFb {
	padding-left: 20px;
}

.vDPrib {
	padding-left: 40px;
}

.TBDXjd {
	padding-left: 60px;
}

.bYeK8e {
	padding-left: 80px;
}

.CuqSDe {
	padding-left: 100px;
}

.Havqpe {
	padding-left: 120px;
}

.JvDrRe {
	padding-left: 140px;
}

.o5lrIf {
	padding-left: 160px;
}

.yOJW7c {
	padding-left: 180px;
}

.rB8cye {
	padding-left: 200px;
}

.RuayVd {
	padding-right: 20px;
}

.YzcKX {
	padding-right: 40px;
}

.reTV0b {
	padding-right: 60px;
}

.vSYeUc {
	padding-right: 80px;
}

.PxtZIe {
	padding-right: 100px;
}

.ahQMed {
	padding-right: 120px;
}

.rzhcXb {
	padding-right: 140px;
}

.PBhj0b {
	padding-right: 160px;
}

.TlN46c {
	padding-right: 180px;
}

.GEdNnc {
	padding-right: 200px;
}

.TMjjoe {
	font-family: Lato, sans-serif;
	font-size: 12px;
	line-height: 1.2;
	padding-top: 0px;
}

@media only screen and (min-width: 1280px) {
	.yxgWrb {
		margin-left: 250px;
	}
}

.TYR86d>.n8H08c {
	margin-top: 6px;
}

@media only screen and (max-width: 479px) {
	.duRjpb {
		font-size: 32px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.duRjpb {
		font-size: 39px;
	}
}

@media only screen and (max-width: 479px) {
	.JYVBee {
		font-size: 21px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.JYVBee {
		font-size: 23px;
	}
}

@media only screen and (max-width: 479px) {
	.OmQG5e {
		font-size: 18px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.OmQG5e {
		font-size: 19px;
	}
}

@media only screen and (max-width: 479px) {
	.Hnbbrb {
		font-size: 16px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.Hnbbrb {
		font-size: 17px;
	}
}

@media only screen and (max-width: 479px) {
	.Zjiec {
		font-size: 21px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.Zjiec {
		font-size: 24px;
	}
}

@media only screen and (max-width: 479px) {
	.TlfmSc {
		font-size: 18px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.TlfmSc {
		font-size: 19px;
	}
}

@media only screen and (max-width: 479px) {
	.PsKE7e {
		font-size: 16px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.PsKE7e {
		font-size: 16px;
	}
}

@media only screen and (max-width: 479px) {
	.duRjpb {
		font-size: 32px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.duRjpb {
		font-size: 39px;
	}
}

@media only screen and (max-width: 479px) {
	.JYVBee {
		font-size: 21px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.JYVBee {
		font-size: 23px;
	}
}

@media only screen and (max-width: 479px) {
	.OmQG5e {
		font-size: 18px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.OmQG5e {
		font-size: 19px;
	}
}

@media only screen and (max-width: 479px) {
	.A3Upc {
		font-size: 12px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.A3Upc {
		font-size: 12px;
	}
}

@media only screen and (max-width: 479px) {
	.Zjiec {
		font-size: 21px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.Zjiec {
		font-size: 24px;
	}
}

@media only screen and (max-width: 479px) {
	.TlfmSc {
		font-size: 18px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.TlfmSc {
		font-size: 19px;
	}
}

@media only screen and (max-width: 479px) {
	.PsKE7e {
		font-size: 16px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.PsKE7e {
		font-size: 16px;
	}
}

@media only screen and (max-width: 479px) {
	.TMjjoe {
		font-size: 12px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	.TMjjoe {
		font-size: 12px;
	}
}

section[id="h.p_Xvlbou7oGXe2"] .IFuOkc:before {
	opacity: 0.6;
}
</style>
<script type="text/javascript">_at_config = ["__page__","AIzaSyCF97XfLoejM9NhWDAZeOcjC6kOEsEmv6A","897606708560-a63d8ia0t9dhtpdt4i3djab2m42see7o.apps.googleusercontent.com","application/vnd.google-apps.drive-sdk","application/google-sites-page","v2","https://www.googleapis.com","v1",null,null,0,"https://docs.google.com/picker","0","https://content.googleapis.com","SITES_%s",null,null,null,0,0,0,null,null,"https://accounts.google.com/ServiceLogin?passive\u003d1209600\u0026continue\u003dhttps://sites.google.com/view/gandhimuseum/home\u0026followup\u003dhttps://sites.google.com/view/gandhimuseum/home",["AHKXmL1f1XXiBa4_sEluK0K1tIf7hA4h6hIOJXbw0A_3bs_uS2Gu3LlW1xx72RIR8rNIeXTxTMBI",1,"CNDk66q8q9UCFYIXawodSm8MBA",1501227525010000,[14100213,14100242,14100178,14100246,14100131,14100169,14100390,14100151,14100173,14100187,14100199,14100043,14100156,14100197,14100170,14100099,14100286,14100386,14100064,14100210,14100155,14100278,14100314,14100254,14100143,14100358,14100318,14100195,14100141,14100011,14100166,14100128,14100175,14100031,14100290,14100282,14100306,14100135,14100262,14100176,14100174,14100362,14100071,14100250,14100326,14100012,14100182,14100117,14100049]
]
,"AHL0AtL19x4YHGgVvvWQk08JqZurbMXy5A:1501227525010","106686472365362797070",1,1,0,null,null,null,null,null,"atari_frontend_170717.12_p2",null,"",null,"https://drive.google.com",null,null,null,0,null,null,1,1,null,0,1,null,null,null,null,null,null,"https://keep.sandbox.google.com",null,null,null,0,null,1,null,null,null,null,null,null,null,null,null,null,null,null,0,null,null,1,null,null,null,null,null,null,null,1,null,null,null,1,[]
,null,null,0,0,"v2internal","https://docs.google.com",null,null,0,null,null,0,"https://sites.google.com/new/?authuser\u003d0",null,null,null,0,null,0,null,null,null,null,1,null,null,null,null,null,0,null,null,null,1,null,null,0,null,null,1,1,"",null,0,"/_/sharing/share",null,1,null,1,null,0,null,0,1,1,null,null,"https://accounts.google.com/o/oauth2/auth","https://accounts.google.com/o/oauth2/postmessageRelay",0,0,null,1,78,"https://sites.google.com/new/?authuser\u003d0\u0026usp\u003dviewer_footer\u0026authuser\u003d0",1,1,1,0,0,1,1,0,1,"Chrome",59,0,1,null,null,null,["QualityBasics","Aristotle","LabelMaker","Impression","Vision","Level"]
,null,null,null,null,1,1,null,null,0,0,null,1,null,1,0,1,0,0,null,1,null,"000770F20378C7EC87C5A21E83EB79B52641EACB6A25376284::1501227525011",1,1,0,null,0,1,1,0,null,0,0,0,0,null,"https://www.gstatic.com/atari/embeds/d0de9a498c44edaa6916be4553c450f6/intermediate-frame-minified.html",0,0,"v2beta",1,0,"AIzaSyCbxzu1Qmnvwf1JyA3KnMfGMJUEtVaxHRg",1,0,0]
; window.globals = {"enableAnalytics":true,"enableCsi":true,"webPropertyId":"","hashedSiteId":"c3bb4883085d6f471e717f91c9e695985c45ff5c76c7b7ec1df55bca6a6ede53","normalizedPath":"view/gandhimuseum/home","pageTitle":"Home"}; function gapiLoaded() {if (globals.gapiLoaded == undefined) {globals.gapiLoaded = true;} else {globals.gapiLoaded();}}window.messages = []; window.addEventListener && window.addEventListener('message', function(e) {if (window.messages && e.data && e.data.magic == 'SHIC') {window.messages.push(e);}});</script>
<script src="./index_files/client.js.download" gapi_processed="true"></script>
<script type="text/javascript">document.createElement('content');(function(){}).call(this);
</script>
</head>
<body jscontroller="csphid" jsmodel="gmV9qc"
	jsaction="rcuQ6b:WYd;F9BhIf:uAM5ec;w047Tc:dj7Cne;"
	waid71fa0d88-5390-4b5b-a2f4-e45fa93d85e2="SA password protect entry checker">
	<div jscontroller="d3CMr"
		jsaction="rcuQ6b:WYd;nMiIt:Pg9eo;VwE05:mHeCvf;cJIcL:HI1Mdd;">
		<div jsname="tiN4bf">
			<div class="M63kCb"></div>
			<div class="fktJzd AKpWA yMcSQd Ly6Unf XeSM4" jsname="UzWXSb">
				<header id="atIdViewHeader">
					<div class="BbxBP" jscontroller="YVkQ9"
						jsaction="rcuQ6b:ywL4Jf;l7cyfd:ywL4Jf;jLKRTe:ywL4Jf; keydown:Hq2uPe;"
						data-top-navigation="false">
						<div class="VLoccc ELAV1d" jsname="rtFGi">
						
							<div class="Pvc6xe">
								<div jsname="I8J07e" class="TlfmSc">
									<a class="GAuSPc" jsname="jIujaf"><span class="QTKDff">Gandhi
											Museum, Chennai</span></a>
								</div>
							</div>
							<div jsname="mADGA" class="zDUgLc"></div>
						</div>
					</div>
					<script type="text/javascript">DOCS_timing['navv'] = new Date().getTime();</script>
				</header>
				<div role="main" class="UtePc RCETm" jscontroller="oVfKv"
					jsaction="Jddzq: Ffcznf;rcuQ6b:WYd;">
					<section id="h.p_Xvlbou7oGXe2"
						class="yaqOZd LB7kq cJgDec nyKByd O13XJf" style="">
						<div class="Nu95r">
							<img src="./index_files/series-of-statues.jpg" class="CENy8b"
								onload="this.setAttribute(&#39;data-image-loaded&#39;, true)"
								onerror="this.setAttribute(&#39;data-image-error&#39;, true)"
								role="img"
								style="width: 100%; margin: -0.000000306% 0 -0.000000306% 0%">
						</div>
						<div class="mYVXT">
							<div class="LS81yb VICjCf" tabindex="-1">
								<div
									class="hJDwNd-AhqUyc-uQSCkd JNdkSc L6cTce-purZT L6cTce-pSzOP"></div>
							</div>
						</div>
					</section>
					<section id="h.p_L3dH1qbrHNSR" class="yaqOZd" style="">

						<div class="tyJCtd mGzaTb baZpAe">
							<h1 id="h.p_rPdEXacfHNSO" class="zfr3Q duRjpb"
								style="text-align: center;">Gandhi Museum,Chennai</h1>
							<p id="h.p_VQiGWN0VHNjy" class="zfr3Q"
								style="text-align: justify;">The Gandhi Museum has
								a very rich collection of original relics, books, journals and
								documents, photographs, audio-visual materials, exhibitions, art
								pieces and other memorabilia closely connected with Mahatma
								Gandhi, Kastur Ba and Indian Freedom Struggle. It is developing
								into a Resource Centre for the Gandhian and allied Studies and
								Research. It also processes the information, data, audio-visual
								materials, etc., for the use of different categorie</p>
						</div>
					</section>

					<section id="h.p_VL-sI9zaHjkV" class="yaqOZd" style="">
						<div class="yaqOZd IFuOkc"></div>
						<div class="mYVXT">
							<div class="LS81yb VICjCf" tabindex="-1">
								<div
									class="hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc">
									<div class="oKdM2c">
										<div id="h.p_v-nNzJ3RHjkY"
											class="hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque">
											<div class="jXK9ad-SmKAyb jXK9ad-SmKAyb-c4YZDc">
												<div class="tyJCtd baZpAe">
													<div class="t3iYD">
														<img
															src="./index_files/MIok9Wpqf9kj2P4tyLjV9xZACDxD4RuvMdm4mipzl73SMLJfDAI7RQb96mgUXPgygyJ6AwOqPweIrF7FBapdzqvOaqo0G8WYIBBjnHeOyScjZ_XguC8=w1175"
															class="CENy8b"
															onload="this.setAttribute(&#39;data-image-loaded&#39;, true)"
															onerror="this.setAttribute(&#39;data-image-error&#39;, true)"
															role="img"
															style="width: 100%; margin: -0.000000306% 0 -0.000000306% 0%">

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>

					<section id="h.p_L3dH1qbrHNSR" class="yaqOZd" style="text-align: center;">
						<div class="tyJCtd mGzaTb baZpAe">
<form name="myform" action="pdf_search.jsp" method="POST">
								<h1 id="h.p_rPdEXacfHNSO" class="zfr3Q duRjpb"
									style="text-align: center;">Search for Quotes and other
									Events</h1>
								<input type="text" name="search_text" style="text-align: center;"> 
								<input  type="submit" value="Submit" style="text-align: center;">
							</form>						
							<%
		String indexDir = System.getProperty("user.dir")+"/"+"index";
		//String webContentPath=getServletContext().getRealPath("."+"/"+"pdf");
		String pdfDir = System.getProperty("user.dir")+"/"+"pdf";
		File folder=new File(pdfDir);
		String searchString = request.getParameter("search_text");
		if (searchString != null) {
			List<Result> searchResult = SearchUtil.search(searchString,folder);
			//out.print("Pdf Directory: " + folder.getPath());
			//out.print("<br/>");
			out.print("Text searched->" + searchString);
			//out.print("<font color=\"blue\"><h1>Search Result</h1></font>");
			out.print("<font color=\"blue\"><h1>Search Result</h1></font>");
			Iterator searchResultIterator = searchResult.iterator();
			while (searchResultIterator.hasNext()) {
				Result result = (Result) searchResultIterator.next();
				String pdfFileName=result.getFileName();
				out.print("<font color=\"green\"><h2>"+pdfFileName+"</h2></font>");
				File pdfFile=new File(pdfDir+"/"+pdfFileName);
				PDDocument pdfDocument = PDDocument.load(pdfFile);
				//System.out.println("No of pages: "+pdfDocument.getNumberOfPages());
				for(int i=0;i<pdfDocument.getNumberOfPages();i++){
					PDFTextStripper reader = new PDFTextStripper();
					reader.setStartPage(i);
					reader.setEndPage(i);
					String content = reader.getText(pdfDocument);
					if(content.contains(searchString)){
						out.print(content);	
					}
					out.print("<br/>");
				}
				pdfDocument.close();
				out.print("<br/>");
			}
		} else {
			out.print("Please ENTER search text");
		}
	%>
						</div>
					</section>

				</div>
</body>
</html>