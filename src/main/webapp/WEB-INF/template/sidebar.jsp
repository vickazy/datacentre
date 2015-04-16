<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>

<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li>
				<a href='<spring:url value="/" />'><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
			</li>
			<security:authorize access="hasRole('ROLE_BTS')">
				<li>
					<a href="#"><i class="fa fa-cog fa-fw"></i> Operation<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#"><i class="fa fa-arrow-circle-up fa-fw"></i> Import</a></li>
						<li><a href="#"><i class="fa fa-arrow-circle-down fa-fw"></i> Export</a></li>
					</ul> 
				</li>
				<li>
					<a href="#"><i class="fa fa-th-list fa-fw"></i> Master<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href='<spring:url value="/master/gedung.html"/>'><i class="fa fa-building fa-fw"></i> Gedung</a></li>
						<li><a href='<spring:url value="/master/users.html"/>'><i class="fa fa-user fa-fw"></i> User</a></li>
					</ul> 
				</li>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_GEDUNG')">
			<li>
				<a href="#"><i class="fa fa-cog fa-fw"></i> Input Data</a>
				<ul class="nav nav-second-level">
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Identitas</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Atap</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Plafon</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Pondasi</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Ruangan</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Kelistrikan</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Struktur</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Lantai</a></li>
					<li><a href='<spring:url value="/pages/input/identity.html" />'><i class="fa fa-building fa-fw"></i> Air</a></li>
				</ul>
			</li>
			</security:authorize>
		</ul>
	</div>
</div>