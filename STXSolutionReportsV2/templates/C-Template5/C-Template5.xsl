<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta charset="utf-8"></meta>
				<title>Cover Page</title>
				<link type="text/css" href="{Report/ApplicationDataPath}/jquery-ui.css" rel="stylesheet"><xsl:comment></xsl:comment></link>
				<link type="text/css" href="{Report/ApplicationDataPath}/jquery.signature.css" rel="stylesheet"><xsl:comment></xsl:comment></link>
				<style type="text/css">
@page land {
	size: landscape;
}

@page port {
	size: portrait;
}

.landscapePage {
	page: land;
}

.portraitPage {
	page: port;
}

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
	width: 100%;
	border: thin solid #000;
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
	border: thin solid #000;
	border-radius: 30px;
}

.body .chart .table tr .row2 {
	width: 400px;
}

.body .ta1 tr .table {
	width: 200px;
}

.kbw-signature {
	width: 400px;
	height: 200px;
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
			<body>
				<div class="body" align="center">
					<div style="width: 30%; float: left; padding-top: 10px;">
						<table style="width: 100%">
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientName" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientCompanyName" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<a href="mailto:{Report/ClientEmail}">
										<xsl:value-of select="Report/ClientEmail" />
									</a>
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientHomePhone" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientMobilePhone" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientWorkPhone" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientOpenField" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientAddress1Label" />
								</td>
							</tr>
							<tr>
								<td style="width: 50%; font-size: 14px;" align="left">
									<xsl:value-of select="Report/ClientAddress1Street" />
								</td>
							</tr>
							<xsl:if test="Report/ClientAddress1City != '' or Report/ClientAddress1State != '' or Report/ClientAddress1Zip != ''">
								<tr align="center">
									<td style="font: 18px 'Arial';line-height: 18px;">
										<xsl:value-of select="Report/ClientAddress1City" /><xsl:if test="Report/ClientAddress1City!=''">, </xsl:if><xsl:value-of select="Report/ClientAddress1State" /><xsl:if test="Report/ClientAddress1State!=''">, </xsl:if><xsl:value-of select="Report/ClientAddress1Zip" />
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
							<xsl:if test="Report/CompanyAddressCity != '' or Report/CompanyAddressState != '' or  Report/CompanyAddressZip != ''">
								<tr align="center">
									<td style="font: 18px 'Arial'; line-height: 18px;">
										<xsl:if test="Report/CompanyAddressCity != ''"><xsl:value-of select="Report/CompanyAddressCity" />,</xsl:if> <xsl:if test="Report/CompanyAddressState != ''"><xsl:value-of select="Report/CompanyAddressState" />,</xsl:if> <xsl:value-of select="Report/CompanyAddressZip" />
									</td>
								</tr>
							</xsl:if>
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
					<table class="ta1">
						<tr>
							<td align="right" class="table">Quote</td>
							<td align="right"><xsl:value-of select="Report/DateTime" /></td>
						</tr>
					</table>
					<div style="margin: 10px" class="chart">
						<table class="table">
						<xsl:for-each select="Report/Rooms/Room">
							<xsl:for-each select="Packages/Package">
							<tr class='tr'>
								<td ><xsl:value-of select="PackageQuantity" /></td>
								<td class='row2' align='center'><xsl:value-of select="PackageName" /></td>
								<td ><xsl:value-of select="PackageTotal" /></td></tr>
							</xsl:for-each>
						</xsl:for-each>
						</table>
						<hr />
						<table width="474" align="center" class="table2">
							<tr>
								<td width='85%' align='right' style='padding-right: 15px;'>Sub-total</td>
								<td align='left'><xsl:value-of select="Report/SubTotal" /></td>
							</tr>
							<xsl:for-each select="Report/Taxes/Tax">
								<tr>
									<td width='85%' align='right' style='padding-right: 15px;'>
										Estimated
										<xsl:value-of select="TaxName" />
									</td>
									<td align='left'>
										<xsl:value-of select="TaxPrice" />
									</td>
								</tr>
							</xsl:for-each>
							<tr>
								<td width='85%' align='right' style='padding-right: 15px;'>Report Total</td>
								<td align="left"><xsl:value-of select="Report/Total" /></td>
							</tr>
						</table>
					</div>
					<div style="clear: both;"><xsl:comment></xsl:comment></div>
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
				<div class="footer" align="center">
					<p align="center">Thank you for your business, we look forward to working with you</p>
				</div>
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
				<div style="width: 100%; height: 100px;" align="center">
					<p align="center">
						<xsl:value-of select="Report/CompanyName" /><br /> <xsl:value-of select="Report/CompanyWorkPhone" /> 
						<br /> <xsl:value-of select="Report/CompanyAddressStreet" />, <xsl:value-of select="Report/CompanyAddressCity" />, <xsl:value-of select="Report/CompanyAddressState" />, <xsl:value-of select="Report/CompanyAddressZip" />
						<br /> <xsl:value-of select="Report/CompanyWebsite" />
					</p>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>