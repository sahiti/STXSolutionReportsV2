<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>Cover Page</title>
				<link type="text/css" href="{Report/ApplicationDataPath}/jquery-ui.css" rel="stylesheet"><xsl:comment></xsl:comment></link>
				<link type="text/css" href="{Report/ApplicationDataPath}/jquery.signature.css" rel="stylesheet"><xsl:comment></xsl:comment></link>
				<style type="text/css">
					@page land { size:landscape; }
					@page port { size:portrait; }
					.landscapePage { page:land; }
					.portraitPage {	page:port; }

					.border1 {
						border: thin solid #000;
					}

					.3cl {
						height: 30px;
					}

					.hdr {
						background-color: #bfbfbf;
					}

					.hdr3 {
						background-color: #BFBFBF;
					}

					.hdr4 {
						background-color: #595959;
					}

					.body1 .body1hd .h1 {
						color: #FFF;
					}

					.body1 {
						height: auto;
						width: 100%;
						padding: 2px;
					}

					.body1 .body1hd {
						background-color: #595959;
					}

					.hdr4 .p {
						line-height: 100%;
						color: #FFF;
					}

					.hdr2 {
						height: 20px;
						line-height: 0.2px;
						font-weight: normal;
						font-variant: normal;
						color: #FFF;
					}

					.hdr4 .rt {
						color: #FFF;
					}

					.body1 .h3 {
						text-decoration: underline;
					}

					.body1 .content .box1 {
						border: thin dotted #F00;
						height: 30px;
						width: 200px;
						clear: none;
						margin-left: 10px;
					}

					.body {
						height: 100%;
						width: 100%;
						border: thin
						solid #000;
					}
					.body .p {
						padding-left: 5px;
					}
					.body .border {
						background-color: #595959;
						width: 99%;
					}
					.footer {
						width: 100%;
					}
					.body .ta1 {
						background-color: #595959;
						width: 100%;
						color: #FFF;
					}
					.body .chart .table2 {
						float: none;
					}
					.body .chart {
						width: 90%;
						border: thin
						solid #000;
						border-radius: 30px;
					}
					.body .chart .table tr .row2 {
						width: 400px;
					}
					.body .ta1 tr .table {
						width: 200px;
					}

					.kbw-signature {
						width: 400px; height: 200px; 
					}
					
					.sigStyle {
						width: 400px; 
						height: 120px;
					}
				</style>
				<script type="text/javascript" src="{Report/ApplicationDataPath}/excanvas.js"><xsl:comment></xsl:comment></script>
				<script type="text/javascript" src="{Report/ApplicationDataPath}/jquery.min.js"><xsl:comment></xsl:comment></script>
				<script type="text/javascript" src="{Report/ApplicationDataPath}/jquery-ui.min.js"><xsl:comment></xsl:comment></script>
				<script type="text/javascript" src='{Report/ApplicationDataPath}/jquery.signature.js'><xsl:comment></xsl:comment></script>
				<script type="text/javascript" src='{Report/ApplicationDataPath}/jquery.ui.touch-punch.min.js'><xsl:comment></xsl:comment></script>

				<script type="text/javascript"> 
				$(function() {
					$('#sig1').signature({syncField: '#signatureJSON1'});
					$('#paiedAmount').on('input', function() {
						$('#paiedAmountRO').val($('#paiedAmount').val()); 
					}); 
				});
				</script>
			</head>

			<body style="font-size: 10px;" class="portraitPage">
				<div style="height: 950px; width: 100%;">
					<table style="width: 100%; padding-top: 60px;">
						<xsl:if test="Report/ReportTitle != ''">
							<tr align="center">
								<td style="font: 18px 'Arial';line-height: 34px;">
									<xsl:value-of select="Report/ReportTitle" />
								</td>
							</tr>
						</xsl:if>
						<tr style="height: 50px;"><td><xsl:comment></xsl:comment></td></tr>
						<xsl:if test="Report/ClientName != ''">
							<tr align="center">
								<td style="font: 18px 'Arial';line-height: 18px;">
									<xsl:value-of select="Report/ClientName" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/ClientCompanyName != ''">
							<tr align="center">
								<td style="font: 18px 'Arial';line-height: 18px;">
									<xsl:value-of select="Report/ClientCompanyName" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/ClientAddress1Street != ''">
							<tr align="center">
								<td style="font: 18px 'Arial';line-height: 18px;">
									<xsl:value-of select="Report/ClientAddress1Street" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/ClientAddress1City != '' or Report/ClientAddress1State != '' or Report/ClientAddress1Zip != ''">
							<tr align="center">
								<td style="font: 18px 'Arial';line-height: 18px;">
									<xsl:value-of select="Report/ClientAddress1City" /><xsl:if test="Report/ClientAddress1City!=''">, </xsl:if><xsl:value-of select="Report/ClientAddress1State" /><xsl:if test="Report/ClientAddress1State!=''">, </xsl:if><xsl:value-of select="Report/ClientAddress1Zip" />
								</td>
							</tr>
						</xsl:if>
						<tr style="height: 100px;"><td><xsl:comment></xsl:comment></td></tr>
						<tr align="center">
							<td>
								<img src='{Report/Logo}' height="100px;" style="padding-left: 10px;" />
							</td>
						</tr>
						<tr style="height: 100px;"><td><xsl:comment></xsl:comment></td></tr>
						<xsl:if test="Report/CompanyName != ''">
							<tr align="center">
								<td style="font: 18px 'Arial'; line-height: 18px;">
									<xsl:value-of select="Report/CompanyName" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/CompanyAddressStreet != ''">
							<tr align="center">
								<td style="font: 18px 'Arial'; line-height: 18px;">
									<xsl:value-of select="Report/CompanyAddressStreet" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/CompanyAddressCity != '' or Report/CompanyAddressState != '' or  Report/CompanyAddressZip != ''">
							<tr align="center">
								<td style="font: 18px 'Arial'; line-height: 18px;">
									<xsl:if test="Report/CompanyAddressCity != ''"><xsl:value-of select="Report/CompanyAddressCity" />,</xsl:if> <xsl:if test="Report/CompanyAddressState != ''"><xsl:value-of select="Report/CompanyAddressState" />,</xsl:if> <xsl:value-of select="Report/CompanyAddressZip" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/CompanyMobilePhone != ''">
						<tr align="center">
							<td style="font: 18px 'Arial'; line-height: 18px;">
								<xsl:value-of select="Report/CompanyMobilePhone" />
							</td>
						</tr>
						</xsl:if>
						<tr style="height: 25px;"><td><xsl:comment></xsl:comment></td></tr>
						<xsl:if test="Report/Contractor != ''">
							<tr align="center">
								<td style="font: 18px 'Arial'; line-height: 18px;">
									Contractor# :
										<xsl:value-of select="Report/Contractor" />
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="Report/SalesPersonName != ''">
							<tr align="center">
								<td style="font: 18px 'Arial'; line-height: 18px;">
									<xsl:value-of select="Report/SalesPersonName" />
								</td>
							</tr>
						</xsl:if>
						<tr align="center">
							<td style="font: 18px 'Arial'; line-height: 18px;">
								<xsl:value-of select="Report/Date" />
							</td>
						</tr>
						<tr align="center">
							<td style="font: 18px 'Arial'; line-height: 18px;">
								<xsl:value-of select="Report/Time" />
							</td>
						</tr>
					</table>
				</div>
				<div style="margin-top: 20px;">
					<div class="border1" align="center">
						<div style="width: 30%; float: left; padding-top: 10px;">
							<table style="width: 100%">
								<xsl:if test="Report/ClientName != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientName" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientCompanyName != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientCompanyName" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientEmail != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<a href="mailto:{Report/ClientEmail}">
											<xsl:value-of select="Report/ClientEmail" />
										</a>
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientHomePhone != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientHomePhone" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientMobilePhone != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientMobilePhone" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientWorkPhone != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientWorkPhone" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientOpenField != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientOpenField" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientAddress1Label != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientAddress1Label" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientAddress1Street != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:value-of select="Report/ClientAddress1Street" />
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/ClientAddress1City != '' or Report/ClientAddress1State != '' or Report/ClientAddress1Zip != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="left">
										<xsl:if test="Report/ClientAddress1City != ''"><xsl:value-of select="Report/ClientAddress1City" />,</xsl:if> <xsl:if test="Report/ClientAddress1State != ''"><xsl:value-of select="Report/ClientAddress1State" />,</xsl:if> <xsl:value-of select="Report/ClientAddress1Zip" />
									</td>
								</tr>
								</xsl:if>
								<tr>
									<td style="width: 50%; font-size: 14px;"><xsl:comment></xsl:comment></td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;"><xsl:comment></xsl:comment></td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;"><xsl:comment></xsl:comment></td>
								</tr>
							</table>
						</div>
						<div style="float: left; width: 40%;" align="center">
							<img src="{Report/Logo}" height="70px" />
						</div>
						<div style="width: 30%; float: right; padding-top: 10px;">
							<table style="width: 100%">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<xsl:value-of select="Report/CompanyName" />
									</td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<xsl:value-of select="Report/CompanyAddressStreet" />
									</td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<xsl:if test="Report/CompanyAddressCity != ''"><xsl:value-of select="Report/CompanyAddressCity" />,</xsl:if> <xsl:if test="Report/CompanyAddressState != ''"><xsl:value-of select="Report/CompanyAddressState" />,</xsl:if> <xsl:value-of select="Report/CompanyAddressZip" />
									</td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<xsl:value-of select="Report/CompanyWorkPhone" />
									</td>
								</tr>
								<xsl:if test="Report/CompanyWebsite != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										Company website:
										<a href="{Report/CompanyWebsite}">
											<xsl:value-of select="Report/CompanyWebsite" />
										</a>
									</td>
								</tr>
								</xsl:if>
								<xsl:if test="Report/Contractor != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										Contractor# :
										<xsl:value-of select="Report/Contractor" />
									</td>
								</tr>
								</xsl:if>
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<xsl:value-of select="Report/SalesPersonName" />
									</td>
								</tr>
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										<a href='mailto:{Report/SalesPersonEmail}'>
											<xsl:value-of select="Report/SalesPersonEmail" />
										</a>
									</td>
								</tr>
								<xsl:if test="Report/CompanyMobilePhone != ''">
								<tr>
									<td style="width: 50%; font-size: 14px;" align="right">
										Mobile:
										<xsl:value-of select="Report/CompanyMobilePhone" />
									</td>
								</tr>
								</xsl:if>
							</table>
						</div>
						<div style="clear: both;"><xsl:comment></xsl:comment></div>
						<div style="padding: 20px; font-size: 14px;">
							<div style="background-color: #595959; color: #FFFFFF;">
								<table width="100%" border="0" cellspacing="5">
									<tr>
										<td width="43%" bgcolor="#595959" style="color:#FFFFFF">Name/Info</td>
										<td width="34%" bgcolor="#595959" style="text-align: center; color:#FFFFFF">Description</td>
										<td width="10%" bgcolor="#595959" style="text-align: center; color:#FFFFFF">Unit Price</td>
										<td width="4%" bgcolor="#595959" style="color:#FFFFFF">QTY</td>
										<td width="9%" bgcolor="#595959" style="text-align: center; color:#FFFFFF">Price</td>
									</tr>
								</table>
							</div>
							<table width="100%" border="0" cellspacing="5">
								<xsl:for-each select="Report/Rooms/Room">
									<xsl:variable name="room" select="." />
									<xsl:for-each select="Packages/Package">
										<xsl:variable name="lastPackageGroupName" select="preceding-sibling::Package[1]/PackageGroupName"/>
										<xsl:choose>
											<xsl:when test="position()=1">
												<tr>
													<td width='14%' bgcolor='#BFBFBF'>
														<xsl:value-of select="$room/RoomName" />
													</td>
													<td bgcolor='#BFBFBF' style='text-align: left' colspan='5'>
														<xsl:value-of select="PackageGroupName" />
													</td>
												</tr>
											</xsl:when>
											<xsl:when test="$lastPackageGroupName != PackageGroupName">
												<tr>
													<td><xsl:comment></xsl:comment></td>
													<td bgcolor='#BFBFBF' style='text-align: left' colspan='5'>
														<xsl:value-of select="PackageGroupName" />
													</td>
												</tr>
											</xsl:when>
										</xsl:choose>
										<tr>
											<td>
												<h4>
													<xsl:value-of select="PackageName" />
												</h4>
												<br />
											</td>
											<td width='26%' style='text-align: left'>
												<img width='223' height='104' src='{PackageImagePath}' />
											</td>
											<td width='34%' style='text-align: center; font-size: 11px;'>
												<xsl:value-of select="PackageDescription" />
											</td>
											<td width='10%' style='text-align: center'>
												<xsl:value-of select="PackagePrice" />
											</td>
											<td width='4%' style='text-align: center'>
												<xsl:value-of select="PackageQuantity" />
											</td>
											<td width='9%' style='text-align: center'>
												<xsl:value-of select="PackageTotal" />
											</td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
						</div>
					</div>
					<div class="hdr2"><xsl:comment></xsl:comment></div>
					<div class="hdr3">
						<p style="text-align: right;"><xsl:comment></xsl:comment></p>
					</div>
					<div class="hdr4">
						<xsl:attribute name="style">
					 		<xsl:if test="Report/NoPriceSummary=1">
					 			<xsl:text>display:none</xsl:text>
					 		</xsl:if>
					 	</xsl:attribute>
						<div class="p" style="text-align: right; font-size: 12px;">
							<table style="width: 100%;">
								<tr>
									<td width="85%" align="right" style="padding-right: 15px;"><span style="color: #ffffff;">Sub total</span></td>
									<td align="left">
										<span style="color: #ffffff;">
											<xsl:value-of select="Report/SubTotal" />
										</span>
									</td>
								</tr>
								<xsl:for-each select="Report/Taxes/Tax">
									<tr>
										<td width='85%' align='right' style='padding-right: 15px;'>
											<span style="color: #ffffff;">
												Estimated <xsl:value-of select="TaxName" />
											</span>
										</td>
										<td align='left'>
											<span style="color: #ffffff;">
												<xsl:value-of select="TaxPrice" />
											</span>	
										</td>
									</tr>
								</xsl:for-each>
							</table>
							<hr />
							<table style="width: 100%;">
								<tr>
									<td width="85%" align="right" style="padding-right: 15px;">
										<h2><span style="color: #ffffff;">Total</span></h2>
									</td>
									<td align="left">
										<h2>
											<span style="color: #ffffff;">
												<xsl:value-of select="Report/Total" />
											</span>
										</h2>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<br/>
					<div style="font-size: 14px;" class="border1" align="center">
						<table width="100%" border="0" cellspacing="5" style="padding-bottom: 20px; padding-left: 8px; padding-right: 8px;">
							<xsl:for-each select="Report/OtherCharges/Package">
								<xsl:variable name="lastPackageState" select="preceding-sibling::Package[1]/PackageState"/>
								<tr>
									<xsl:choose>
										<xsl:when test="position()=1">
											<td bgcolor='#BFBFBF' style='text-align: left' colspan='6'>
												<xsl:value-of select="PackageState" /> Charges
											</td>
										</xsl:when>
										<xsl:when test="$lastPackageState != PackageState">
											<td bgcolor='#BFBFBF' style='text-align: left' colspan='6'>
												<xsl:value-of select="PackageState" /> Charges
											</td>
										</xsl:when>
									</xsl:choose>
								</tr>
								<tr>
									<td>
										<img width='85' height='85' src='{PackageIcon}'/>
									</td>
									<td width='15%'><p></p><h4><xsl:value-of select="PackageName" /></h4><p></p></td>
									<td style='font-size: 10px; text-align: center;' width='45%'><xsl:value-of select="PackageDescription" /></td>
									<td width='20%' style='text-align: center;'><xsl:value-of select="PackagePrice" /></td>
									<td style='text-align: center;' width='15%'><xsl:value-of select="PackageQuantity" /></td>
									<td width='20%' style='text-align: center;'><xsl:value-of select="PackageTotal" /></td></tr>
							</xsl:for-each>
						</table>
						<xsl:if test="Report/OtherCharges/Package[count(*) &gt; 1]/PackageState">
							<div class="hdr4">
								<table style="width: 100%;">
									<tr>
										<td width="85%" align="right" style="padding-right: 15px;">
											<h2><span style="color: #ffffff;">Total</span></h2>
										</td>
										<td align="left">
											<h2>
												<span style="color: #ffffff;">
													<xsl:value-of select="Report/OtherCharges/TotalOtherCharge" />
												</span>
											</h2>
										</td>
									</tr>
								</table>
							</div>
						</xsl:if>
					</div>
					<div class="hdr2"><xsl:comment></xsl:comment></div>
					<xsl:if test="Report/ShowContract=1">
						<div class="body1">
							<div class="body1hd">
								<h1 class="h1" align="center" style="text-align: center;">Terms and
									Agreement/Contract
								</h1>
							</div>
							<h3 class="h3">Terms and Agreement</h3>
							<p>
								<xsl:value-of select="Report/Contract" disable-output-escaping="yes" />
							</p>
						</div>
					</xsl:if>
					<div class=""><xsl:comment></xsl:comment></div>
					<table style="width: 100%;">
						<tr>
							<td width="40%" style="">
								<p align="center">Client Signature</p>
								<div id="sig1" class="sigStyle"><xsl:comment></xsl:comment></div>
								<input id="signatureJSON1" type="hidden"><xsl:comment></xsl:comment></input>
								<br />
								<xsl:value-of select="Report/ClientAddress2Label" />
								<br />
								<xsl:value-of select="Report/ClientWorkStreet" />
								<br />
								<xsl:value-of select="Report/ClientWorkCity" />, <xsl:value-of select="Report/ClientWorkState" />, <xsl:value-of select="Report/ClientWorkZip" />
							</td>
							<td width="25%" style="">
								<p align="center">Date Time</p>
								<p align="center">
									<xsl:value-of select="Report/DateTime" />
								</p>
							</td>
							<td width="35%" style="">
								<p align="center">Total Amount</p>
								<p align="center">
									<xsl:value-of select="Report/Total" />
								</p>
								<p align="center">Deposit Amount</p>
								<input id="paiedAmountRO" type="hidden" />
								<p align="center">
									<input type="text" style="width: 150px;" id="paiedAmount" />
								</p>
							</td>
						</tr>
					</table>
					<br />
					<xsl:if test="Report/ShowComments=1">
						<table style='border: 1px solid black; border-collapse: collapse;'>
							<tr style='border: 1px solid black; border-collapse: collapse;'>
								<th style='border: 1px solid black; border-collapse: collapse;'
									width='10%'>Location</th>
								<th style='border: 1px solid black; border-collapse: collapse;'
									width='10%'>System</th>
								<th style='border: 1px solid black; border-collapse: collapse;'
									width='10%'>Package</th>
								<th style='border: 1px solid black; border-collapse: collapse;'
									width='10%'>Date</th>
								<th style='border: 1px solid black; border-collapse: collapse;'
									width='60%'>Comment</th>
							</tr>
							<xsl:for-each select="Report/Comments/Comment">
								<tr style='border: 1px solid black; border-collapse: collapse;'>
									<td style='border: 1px solid black; border-collapse: collapse;'>
										<xsl:value-of select="RoomGroupName" />
									</td>
									<td style='border: 1px solid black; border-collapse: collapse;'>
										<xsl:value-of select="PackageGroupName" />
									</td>
									<td style='border: 1px solid black; border-collapse: collapse;'>
										<xsl:value-of select="PackageName" />
									</td>
									<td style='border: 1px solid black; border-collapse: collapse;'>
										<xsl:value-of select="CommentDate" />
									</td>
									<td style='border: 1px solid black; border-collapse: collapse;'>
										<xsl:value-of select="CommentText" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</xsl:if>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>