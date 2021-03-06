<?xml version="1.0" encoding="UTF-8"?>
<!-- $Header: /cvsroot/pcgendocs/pcgendocs/outputsheets/d20/sciencefiction/pdf/csheet_starwars_std.xslt,v 1.72 2005/10/24 02:20:00 rax_the_grey Exp $ -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output indent="yes"/>

	<xsl:attribute-set name="border">
		<xsl:attribute name="border-width">0.5pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="centre">
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="border.temp">
		<xsl:attribute name="border-top-width">2pt</xsl:attribute>
		<xsl:attribute name="border-left-width">2pt</xsl:attribute>
		<xsl:attribute name="border-right-width">2pt</xsl:attribute>
		<xsl:attribute name="border-bottom-width">2pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
		<xsl:attribute name="border-color">lightgrey</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="bio">
		<xsl:attribute name="display-align">after</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="bio.title">
		<xsl:attribute name="color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-top-color">black</xsl:attribute>
 		<xsl:attribute name="border-top-width">0.5pt</xsl:attribute>
 		<xsl:attribute name="border-top-style">solid</xsl:attribute>
 	</xsl:attribute-set>

	<xsl:attribute-set name="picture" use-attribute-sets="border">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="stat.title" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="stat.score" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="stat.modifier" use-attribute-sets="stat.score" />

	<xsl:attribute-set name="hp.title" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="hp.total" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="hp.current" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="hp.subdual" use-attribute-sets="hp.current" />

	<xsl:attribute-set name="alternate" use-attribute-sets="hp.current" />

	<xsl:attribute-set name="damage.reduction" use-attribute-sets="hp.current" />

 	<xsl:attribute-set name="speed" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac.title" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac.total" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac.flatfooted" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac.touch" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="miss_chance" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

 	<xsl:attribute-set name="ac_check" use-attribute-sets="border centre">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="initiative.title" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="initiative.total" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="initiative.general" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="bab.title" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="bab.total" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.header" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.darkline">
		<xsl:attribute name="background-color">lightgrey</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.lightline">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.darkline.total">
		<xsl:attribute name="background-color">lightgrey</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.lightline.total">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills.footer">
		<xsl:attribute name="border-bottom-color">black</xsl:attribute>
		<xsl:attribute name="border-bottom-width">0.5pt</xsl:attribute>
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="saves.title" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">black</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="saves.total" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="saves" use-attribute-sets="border centre">
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>


<xsl:attribute-set name="tohit.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="tohit.total" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="tohit" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>



<xsl:attribute-set name="weapon.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="weapon" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="weapon.hilight" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="protection.title" use-attribute-sets="border centre">
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
	<xsl:attribute name="border-color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="protection" use-attribute-sets="border centre">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
	<xsl:attribute name="border-color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="protection.darkline" use-attribute-sets="centre">
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="protection.lightline" use-attribute-sets="centre">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="proficiencies.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="proficiencies" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="languages.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="languages" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="templates.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="templates.lightline" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="templates.darkline" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="companions.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="companions" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="equipment.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="equipment.lightline" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="equipment.darkline" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="weight.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="weight" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="weight.solid" use-attribute-sets="border">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="money.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="money.lightline">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="money.darkline">
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="magic.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="magic.lightline">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="magic.darkline">
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="special_abilities.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="special_abilities.lightline">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="special_abilities.darkline">
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="feats.title" use-attribute-sets="centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="feats.lightline">
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="feats.darkline">
	<xsl:attribute name="background-color">lightgrey</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="reputation.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="reputation" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="allegiances.title" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">black</xsl:attribute>
	<xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="allegiances" use-attribute-sets="border centre">
	<xsl:attribute name="border-color">black</xsl:attribute>
	<xsl:attribute name="background-color">white</xsl:attribute>
	<xsl:attribute name="color">black</xsl:attribute>
</xsl:attribute-set>



	<xsl:template match="character">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--	PAGE DEFINITIONS	-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Portrait 2 Column"
						page-height="297mm"
						page-width="210mm"
						margin-top="10mm"
						margin-bottom="15mm"
						margin-left="6mm"
						margin-right="6mm">
					<fo:region-body region-name="body" column-count="2" column-gap="2mm" margin-bottom="7mm"/>
					<fo:region-after region-name="footer" extent="0.25in"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="Portrait"
						page-height="297mm"
						page-width="210mm"
						margin-top="10mm"
						margin-bottom="15mm"
						margin-left="6mm"
						margin-right="6mm">
					<fo:region-body region-name="body" margin-bottom="7mm"/>
					<fo:region-after region-name="footer" extent="0.25in"/>
				</fo:simple-page-master>

			</fo:layout-master-set>



			<fo:page-sequence master-reference="Portrait">
				<xsl:call-template name="page.footer" />

				<!--	CHARACTER BODY STARTS HERE !!!	-->
				<fo:flow flow-name="body">
					<!--	CHARACTER HEADER	-->
					<fo:block span="all" space-after.optimum="3pt">
						<xsl:apply-templates select="basics"/>
					</fo:block>
					<fo:block span="all">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="52mm"/>
							<fo:table-column column-width="52mm"/>
							<fo:table-column column-width="86mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell number-rows-spanned="2">
										<xsl:apply-templates select="abilities" />
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="2">
										<xsl:apply-templates select="." mode="hp_table"/>
										<xsl:apply-templates select="armor_class"/>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<xsl:apply-templates select="initiative" />
										<xsl:apply-templates select="basics/bab" mode="bab" />
									</fo:table-cell>
									<fo:table-cell number-rows-spanned="2">
										<xsl:apply-templates select="skills">
											<xsl:with-param name="first_skill" select="0"/>
											<xsl:with-param name="last_skill" select="55"/>
											<xsl:with-param name="column_width" select="'narrow'"/>
										</xsl:apply-templates>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<fo:table table-layout="fixed">
											<fo:table-column column-width="70mm"/>
											<fo:table-column column-width="2mm"/>
											<fo:table-column column-width="30mm"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell>
														<xsl:apply-templates select="saving_throws" />
													</fo:table-cell>
													<fo:table-cell />
													<fo:table-cell>
														<xsl:call-template name="reputation" />
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
										<xsl:apply-templates select="attack" mode="ranged_melee" />
										<xsl:apply-templates select="weapons/unarmed" />
										<xsl:apply-templates select="weapons">
											<xsl:with-param name="first_weapon" select="1"/>
											<xsl:with-param name="last_weapon" select="3"/>
											<xsl:with-param name="column_width" select="'wide'"/>
										</xsl:apply-templates>
										<xsl:apply-templates select="protection/armor[1]"/>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>


			<fo:page-sequence master-reference="Portrait 2 Column">
				<xsl:call-template name="page.footer" />
				<fo:flow flow-name="body">
					<fo:block>
						<xsl:apply-templates select="weapons">
							<xsl:with-param name="first_weapon" select="4"/>
							<xsl:with-param name="last_weapon" select="9999"/>
							<xsl:with-param name="column_width" select="'narrow'"/>
						</xsl:apply-templates>
						<xsl:apply-templates select="skills">
							<xsl:with-param name="first_skill" select="56"/>
							<xsl:with-param name="last_skill" select="9999"/>
							<xsl:with-param name="column_width" select="'wide'"/>
						</xsl:apply-templates>
						<xsl:apply-templates select="equipment" />
						<xsl:apply-templates select="weight_allowance" />
						<xsl:call-template name="money" />
						<xsl:apply-templates select="misc/magics" />
						<xsl:apply-templates select="special_abilities" />
						<xsl:apply-templates select="feats" />
						<xsl:apply-templates select="weapon_proficiencies" />
						<xsl:apply-templates select="languages" />
						<xsl:call-template name="allegiances" />
						<xsl:apply-templates select="templates" />
						<xsl:apply-templates select="companions" />
					</fo:block>
				</fo:flow>
			</fo:page-sequence>

			<xsl:apply-templates select="basics" mode="bio" />
			<xsl:apply-templates select="basics/notes" mode="bio" />

		</fo:root>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - PAGE FOOTER
====================================
====================================-->
	<xsl:template name="page.footer">
		<fo:static-content flow-name="footer" font-family="sans-serif">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.875in"/>
				<fo:table-column column-width="3.75in"/>
				<fo:table-column column-width="1.875in"/>
				<fo:table-body>
					<fo:table-row keep-with-next="always" keep-together="always">
						<fo:table-cell text-align="start" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="white" padding-top="2pt">
							<fo:block font-size="5pt">
								<xsl:value-of select="export/date" />
								<xsl:text> </xsl:text>
								<xsl:value-of select="export/time" />
							</fo:block>
							<fo:block font-size="5pt" font-weight="bold">Created using PCGen <xsl:value-of select="export/version"/></fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" wrap-option="no-wrap" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="white" padding-top="2pt">
							<fo:block text-align="center" font-size="5pt">PCGen Character Template by Rax the Grey, based on work by ROG, Arcady, Barak, Frugal &amp; Dimrill.</fo:block>
							<fo:block text-align="center" font-size="5pt">For suggestions please send email to raxthegrey@gmail.com with "OS Suggestion" in the subject line.</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="end" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="white" padding-top="2pt">
							<fo:block font-size="7pt">Page <fo:page-number/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:static-content>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - CHARACTER HEADER
====================================
====================================-->
	<xsl:template match="basics">
		<!-- Character Header -->
			<fo:table table-layout="fixed" width="190mm">
				<xsl:choose>
					<xsl:when test="string-length(portrait) &gt; 0">
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="22mm"/>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-column column-width="27mm"/> <!-- Class -->
						<fo:table-column column-width="2mm"/>  <!--  -->
						<fo:table-column column-width="25mm"/> <!-- Experience -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Race -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Size -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Height -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="24mm"/> <!-- Weight -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="27mm"/> <!-- Vision -->
					</xsl:otherwise>
				</xsl:choose>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt">
								<xsl:value-of select="name" />
								<xsl:if test="string-length(followerof) &gt; 0">	- <xsl:value-of select="followerof" /></xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt"><xsl:value-of select="playername"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="poolpoints/cost"/></fo:block>
						</fo:table-cell>

						<xsl:if test="string-length(portrait) &gt; 0" >
							<fo:table-cell/>
							<fo:table-cell number-rows-spanned="6"  xsl:use-attribute-sets="picture">
								<fo:block>
								<xsl:variable name="portrait_file" select="portrait" />
									<fo:external-graphic src="file:{$portrait_file}" width="22mm"/>
								</fo:block>
							</fo:table-cell>
						</xsl:if>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">NAME</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">PLAYERNAME</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">POINTS</fo:block>
						</fo:table-cell>
					</fo:table-row>



					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="classes/shortform"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="experience/current"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="race"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="size/long"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="height/total"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="weight/weight_unit"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="vision"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">CLASS</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">EXPERIENCE</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">SPECIES</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">SIZE</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">HEIGHT</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">WEIGHT</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">VISION</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
					</fo:table-row>




					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:value-of select="classes/levels_total"/>
								<xsl:if test="classes/levels_total != classes/levels_ecl">/<xsl:value-of select="classes/levels_ecl"/></xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="experience/next_level"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="age"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="gender/long"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="eyes/color"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio" number-columns-spanned="3">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="hair/color"/>, <xsl:value-of select="hair/length"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">
								<xsl:if test="classes/levels_total != classes/levels_ecl">
									<xsl:text>ECL / </xsl:text>
								</xsl:if>
								<xsl:text>TCL</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">NEXT LEVEL</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">AGE</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">GENDER</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">EYES</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="bio.title" number-columns-spanned="3">
							<fo:block font-size="6pt" padding-top="1pt">HAIR</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
					</fo:table-row>

				</fo:table-body>
			</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - GENERIC OUTPUT-FOR-LOOP
====================================
====================================-->
	<xsl:template name="for.loop">
		<xsl:param name="i" select="1"/>
		<xsl:param name="count" select="0"/>
		<xsl:param name="display" select="'q'"/>

		<!-- q is the ZapfDingbats symbol for a 'box' -->
		<xsl:if test="$i &lt;= $count">
			<!-- Show this box -->
			<xsl:value-of select="$display"/>
			<xsl:if test="$i mod 5 = 0">
				<xsl:text> </xsl:text>
			</xsl:if>
			<!-- Show all of the remaining boxes -->
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i" select="$i + 1"/>
				<xsl:with-param name="display" select="$display"/>
				<xsl:with-param name="count" select="$count"/>
			</xsl:call-template>
		</xsl:if>

	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - GENERIC OUTPUT Cumulative total
====================================
====================================-->
	<xsl:template name="Total">
		<xsl:param name="Items"/>
		<xsl:param name="RunningTotal"/>

		<xsl:choose>
			<xsl:when test="not($Items)">
				<!-- No more Items so return Running Total -->
				<xsl:copy-of select="$RunningTotal"/>
			</xsl:when>

			<xsl:otherwise>
				<!-- Call template for remaining Items -->
				<xsl:variable name="CurrentTotal" select="$RunningTotal + ($Items[1]/quantity * $Items[1]/cost)"/>
				<xsl:call-template name="Total">
					<xsl:with-param name="Items" select="$Items[position()>1]"/>
					<xsl:with-param name="RunningTotal" select="$CurrentTotal"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - GENERIC Process
====================================
====================================-->
	<xsl:template name="process.attack.string">
		<xsl:param name="bab"/>
		<xsl:param name="string" select="''"/>

		<xsl:choose>
			<xsl:when test="$bab &gt; 5">
				<xsl:call-template name="process.attack.string">
					<xsl:with-param name="bab" select="$bab - 5"/>
					<xsl:with-param name="string"><xsl:value-of select="$string"/>+<xsl:value-of select="$bab"/>/</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$string"/><xsl:value-of select="$bab"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - ABILITY BLOCK
====================================
====================================-->
	<xsl:template match="abilities">
		<!-- BEGIN Ability Block -->
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="4.5pt" font-size="4pt">ABILITY NAME</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY SCORE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">TEMP SCORE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">TEMP MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="ability">
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="stat.title">
							<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">
								<xsl:value-of select="name/short"/>
							</fo:block>
							<fo:block line-height="4pt" font-size="4pt">
								<xsl:value-of select="name/long"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="stat.score">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="score"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="stat.modifier">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="modifier"/></fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell height="4pt" xsl:use-attribute-sets="border.temp"/>
						<fo:table-cell/>
						<fo:table-cell height="4pt" xsl:use-attribute-sets="border.temp"/>
					</fo:table-row>
					<fo:table-row height="2pt"/>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
		<!-- END Ability Block -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - HP  TABLE
====================================
====================================-->
	<xsl:template match="character" mode="hp_table">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13mm"/> 		<!-- title -->
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>		<!-- total -->
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="23.5mm"/>		<!-- Current -->
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="23.5mm"/>		<!-- subdual -->
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="15mm"/>		<!-- DT -->
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="15mm"/>		<!-- DR -->
			<fo:table-column column-width="3mm"/>
			<fo:table-column column-width="27mm"/>		<!-- SPEED -->
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell/>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center"  font-size="6pt"/>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">DAMAGE/CURRENT VP</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center"  font-size="4pt">SUBDUAL DAMAGE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center"  font-size="4pt">WOUND POINTS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">DAMAGE REDUCTION</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">SPEED</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="hp.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">VP</fo:block>
						<fo:block line-height="4pt" font-size="4pt">vitality points</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="hp.total">
						<fo:block space-before.optimum="2pt" font-size="10pt">
							<xsl:value-of select="hit_points/points"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="hp.current">
						<fo:block space-before.optimum="2pt" font-size="10pt"></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="hp.subdual">
						<fo:block space-before.optimum="2pt" font-size="10pt"></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="alternate">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="hit_points/alternate"/></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="damage.reduction">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="hit_points/damage_reduction"/></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="speed" display-align="center"  >
						<fo:block font-size="8pt"><xsl:value-of select="basics/move/all"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END HP-AC Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - HP and AC TABLE
====================================
====================================-->
	<xsl:template match="armor_class">
		<fo:table table-layout="fixed" space-before="2pt">
			<fo:table-column column-width="13mm"/>	<!-- vp -->
			<fo:table-column column-width="2mm"/><!-- space -->
			<fo:table-column column-width="8mm"/><!-- total ac -->
			<fo:table-column column-width="2mm"/><!-- : -->
			<fo:table-column column-width="8mm"/><!-- flat -->
			<fo:table-column column-width="2mm"/><!-- : -->
			<fo:table-column column-width="8mm"/><!-- touch -->
			<fo:table-column column-width="2mm"/><!-- = -->
			<fo:table-column column-width="7mm"/><!-- base -->
			<fo:table-column column-width="2mm"/><!-- + -->
			<fo:table-column column-width="7mm"/><!--armour  -->
			<fo:table-column column-width="2mm"/><!-- + -->
			<fo:table-column column-width="7mm"/><!-- stat -->
			<fo:table-column column-width="2mm"/><!-- + -->
			<fo:table-column column-width="7mm"/><!--  size -->
			<fo:table-column column-width="2mm"/><!-- + -->
			<fo:table-column column-width="7mm"/><!-- natural armour-->
			<fo:table-column column-width="2mm"/><!-- + -->
			<fo:table-column column-width="7mm"/><!-- misc   -->
			<fo:table-column column-width="4mm"/><!-- space -->
			<fo:table-column column-width="7mm"/><!-- miss chance -->
			<fo:table-column column-width="3mm"/><!-- space -->
			<fo:table-column column-width="7mm"/><!-- armour check-->
			<fo:table-column column-width="3mm"/><!-- space -->
			<fo:table-column column-width="7mm"/><!-- SR -->
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell  xsl:use-attribute-sets="ac.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">Def</fo:block>
						<fo:block line-height="4pt" font-size="4pt">Defence</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="ac.total">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="total"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">:</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac.flatfooted">
						<fo:block space-before.optimum="3pt" font-size="10pt"><xsl:value-of select="flat"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">:</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac.touch">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="touch"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">=</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="base"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="class_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="equipment_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="stat_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell  xsl:use-attribute-sets="ac">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="size_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="ac">
						<fo:block text-align="center" space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="misc + armor_bonus + shield_bonus + competence_bonus + defense_bonus + dodge_bonus + enhancement_bonus + insight_bonus + luck_bonus + monk_bonus + sidestep_bonus + tar_bonus + toughness_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="miss_chance">
						<fo:block space-before.optimum="2pt" font-size="10pt"><!-- Miss chance --></fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="ac_check">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="check_penalty"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row height="0.5pt"/>
				<fo:table-row>
					<fo:table-cell/>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">FLAT</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">TOUCH</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">BASE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">CLASS BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">EQUIP BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">DEX MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">SIZE MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISS CHANCE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ARMOR CHECK PENALTY</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END HP-AC Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Initiative TABLE
====================================
====================================-->
	<xsl:template match="initiative">
		<!-- BEGIN ini-base table -->
		<fo:table table-layout="fixed"> <!-- 48mm -->
			<fo:table-column column-width="21mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<fo:table-row height="2pt"/>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="initiative.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">INITIATIVE</fo:block>
						<fo:block line-height="4pt" font-size="4pt">modifier</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="initiative.total">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="total"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">=</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="initiative.general">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="dex_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="initiative.general">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="misc_mod"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row height="0.5pt"/>
				<fo:table-row>
					<fo:table-cell/>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">DEX MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END ini-base table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Base Attack TABLE
====================================
====================================-->
	<xsl:template match="bab" mode="bab" >
		<!-- BEGIN ini-base table -->
		<fo:table table-layout="fixed"> <!-- 48mm -->
			<fo:table-column column-width="21mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="27mm"/>
			<fo:table-body>
				<fo:table-row height="2pt"/>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bab.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="8pt">BASE ATTACK</fo:block>
						<fo:block line-height="4pt" font-size="4pt">bonus</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="bab.total">
						<fo:block space-before.optimum="2pt" font-size="10pt">
							<xsl:call-template name="process.attack.string">
								<xsl:with-param name="bab" select="."/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END ini-base table -->
	</xsl:template>







<!--
====================================
====================================
	TEMPLATE - SKILLS TABLE
====================================
====================================-->
	<xsl:template match="skills">
		<xsl:param name="first_skill" select="0" />
		<xsl:param name="last_skill" select="0" />
		<xsl:param name="column_width" select="'wide'" />

		<!-- begin skills table -->
		<xsl:if test="count(skill) &gt;= $first_skill" >
			<fo:table table-layout="fixed" border-collapse="collapse">
				<xsl:choose>
					<xsl:when test="$column_width='wide'">
						<fo:table-column column-width="4mm"/>
						<fo:table-column column-width="38mm"/>
						<fo:table-column column-width="3mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-column column-width="4mm"/>
						<fo:table-column column-width="38mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="7mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="7mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="7mm"/>
					</xsl:otherwise>
				</xsl:choose>
				<fo:table-header>
					<fo:table-row height="2pt"/>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="skills.header" border-top-width="1pt" border-left-width="1pt" border-right-width="0pt" border-bottom-width="0pt"/>
						<fo:table-cell xsl:use-attribute-sets="skills.header" number-columns-spanned="6" padding="1pt" border-top-width="1pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="0pt" border-style="solid">
							<fo:block text-align="end" line-height="10pt" font-weight="bold" font-size="10pt">
								SKILLS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="8"	padding="1pt" xsl:use-attribute-sets="skills.header" border-top-width="1pt" border-left-width="0pt"	border-right-width="0pt" border-bottom-width="0pt">
							<fo:block text-align="end" space-before.optimum="4pt" line-height="4pt" font-size="4pt">
								MAX RANKS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="2" xsl:use-attribute-sets="skills.header" border-top-width="1pt" border-left-width="0pt" border-right-width="1pt" border-bottom-width="0pt">
							<fo:table table-layout="fixed" space-before.optimum="0.2mm" >
								<fo:table-column column-width="7.625mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block space-before.optimum="1pt" line-height="8pt" font-size="6pt">
												<xsl:value-of select="max_class_skill_level"/>/<xsl:value-of select="max_cross_class_skill_level"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="skills.header" border-top-width="0pt" 	border-left-width="1pt" border-right-width="0pt" border-bottom-width="1pt" />
						<fo:table-cell number-columns-spanned="2" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block font-weight="bold" font-size="8pt" >
								SKILL NAME
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block font-size="4pt">
								KEY ABILITY
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								SKILL MODIFIER
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								ABILITY MODIFIER
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" space-before.optimum="5pt" font-size="4pt" >
								RANKS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="2"  xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								MISC MODIFIER
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>

					<xsl:for-each select="skill">
						<xsl:if test="position() &gt;= $first_skill and position() &lt;= $last_skill" >
							<xsl:variable name="skills.row">
								<fo:table-cell>
									<fo:block font-size="6pt" font-family="ZapfDingbats">
										<xsl:if test="translate( substring(untrained,1,1), 'Y', 'y')='y'">&#x2713;</xsl:if>
										<xsl:if test="translate( substring(exclusive,1,1), 'Y', 'y')='y'">&#x2717;</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-before.optimum="1pt" font-size="8pt">
										<xsl:value-of select="name"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"/>
								<fo:table-cell>
									<fo:block space-before.optimum="1pt" font-size="8pt">
										<xsl:value-of select="ability"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"/>
								<xsl:choose>
									<xsl:when test="position() mod 2 = 0"><xsl:apply-templates select="skill_mod" mode="skills.total.darkline" /></xsl:when>
									<xsl:otherwise><xsl:apply-templates select="skill_mod" mode="skills.total.lightline" /></xsl:otherwise>
								</xsl:choose>
								<fo:table-cell number-columns-spanned="2"><fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">=</fo:block></fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:value-of select="ability_mod"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"><fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block></fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:if test="ranks>0">
											<xsl:value-of select="ranks"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"><fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block></fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:if test="misc_mod>0">
											<xsl:value-of select="misc_mod"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</xsl:variable>

							<xsl:choose>
								<xsl:when test="position() mod 2 = 0">
									<xsl:apply-templates select="." mode="skills.darkline">
										<xsl:with-param name="skills.row" select="$skills.row"/>
									</xsl:apply-templates>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates select="." mode="skills.lightline">
										<xsl:with-param name="skills.row" select="$skills.row"/>
									</xsl:apply-templates>
								</xsl:otherwise>
							</xsl:choose>

						</xsl:if>
					</xsl:for-each>

					<fo:table-row height="9pt">
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
						<fo:table-cell number-columns-spanned="2"/>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
						<fo:table-cell number-columns-spanned="2"/>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">=</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"/>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="17">
							<fo:block text-align="center" font-size="6pt"><fo:inline font-family="ZapfDingbats">&#x2713;</fo:inline>: can be used untrained. <fo:inline font-family="ZapfDingbats">&#x2717;</fo:inline>: exclusive skills</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</xsl:if>
		<!-- END Skills table -->
	</xsl:template>




	<xsl:template match="skill" mode="skills.darkline">
		<xsl:param name="skills.row" />
		<fo:table-row xsl:use-attribute-sets="skills.darkline">
			<xsl:copy-of select="$skills.row"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="skill" mode="skills.lightline">
		<xsl:param name="skills.row" />
		<fo:table-row xsl:use-attribute-sets="skills.lightline">
			<xsl:copy-of select="$skills.row"/>
		</fo:table-row>
	</xsl:template>


	<xsl:template match="skill_mod" mode="skills.total.darkline">
		<fo:table-cell xsl:use-attribute-sets="skills.darkline.total">
			<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt"><xsl:value-of select="."/></fo:block>
		</fo:table-cell>
	</xsl:template>


	<xsl:template match="skill_mod" mode="skills.total.lightline">
		<fo:table-cell xsl:use-attribute-sets="skills.lightline.total">
			<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt"><xsl:value-of select="."/></fo:block>
		</fo:table-cell>
	</xsl:template>





<!--
====================================
====================================
	TEMPLATE - SAVES TABLE
====================================
====================================-->
	<xsl:template match="saving_throws">
		<!-- BEGIN Saves table -->
		<fo:table table-layout="fixed">
			<fo:table-column column-width="25mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">SAVING THROWS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">BASE SAVE</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">TEMP MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<xsl:for-each select="saving_throw">
					<fo:table-row height="2pt"/>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="saves.title">
							<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt"><xsl:value-of select="translate(name/long, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/></fo:block>
							<fo:block line-height="4pt" font-size="4pt">(<xsl:value-of select="ability"/>)</fo:block>
						</fo:table-cell>
						<fo:table-cell/>
						<fo:table-cell xsl:use-attribute-sets="saves.total">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="total"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">=</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="base"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="abil_mod"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="misc_w_magic_mod"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="border.temp"/>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>





	<xsl:template name="reputation">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-body>
				<fo:table-row height="11pt"/>
				<fo:table-row >
					<fo:table-cell xsl:use-attribute-sets="reputation.title"><fo:block display-align="center" line-height="10pt" font-weight="bold" font-size="7pt" space-before="1pt">REPUTATION</fo:block></fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="reputation"><fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="basics/reputation"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row height="3pt"/>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="reputation.title"><fo:block display-align="center" line-height="10pt" font-weight="bold" font-size="7pt" space-before="1pt">FORCE POINTS</fo:block></fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="reputation"><fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="basics/forcepoints"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row height="3pt"/>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="reputation.title"><fo:block display-align="center" line-height="10pt" font-weight="bold" font-size="7pt" space-before="1pt">DARKSIDE POINTS</fo:block></fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell xsl:use-attribute-sets="reputation"><fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="basics/darksidepoints"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - ATTACK TABLE
====================================
====================================-->
	<xsl:template match="attack" mode="ranged_melee">
		<!-- BEGIN Attack table -->
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column column-width="17mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="22mm"/>
			<fo:table-column column-width="3mm"/>
			<fo:table-column column-width="21mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<xsl:call-template name="to_hit.header">
					<xsl:with-param name="dalign" select="'after'"/>
					<xsl:with-param name="stat" select="'STR'"/>
				</xsl:call-template>
				<xsl:apply-templates select="melee" mode="to_hit">
					<xsl:with-param name="title" select="'MELEE'" />
				</xsl:apply-templates>
				<fo:table-row height="2.5pt"/>
				<xsl:apply-templates select="ranged" mode="to_hit">
					<xsl:with-param name="title" select="'RANGED'" />
				</xsl:apply-templates>

				<fo:table-row height="0.5pt"/>
				<xsl:call-template name="to_hit.header">
					<xsl:with-param name="dalign" select="'before'"/>
					<xsl:with-param name="stat" select="'DEX'"/>
				</xsl:call-template>
			</fo:table-body>
		</fo:table>
		<!-- END Attack table -->
	</xsl:template>


	<xsl:template name="to_hit.header">
		<xsl:param name="dalign" select="'after'" />
		<xsl:param name="stat" select="'after'" />
				<fo:table-row >
					<fo:table-cell/>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">BASE ATTACK BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center"  font-size="4pt"><xsl:value-of select="$stat"/> MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">SIZE MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell/>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center"  font-size="4pt">TEMP MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>
	</xsl:template>

	<xsl:template match="melee|ranged" mode="to_hit">
		<xsl:param name="title" />
		<fo:table-row>
			<fo:table-cell xsl:use-attribute-sets="tohit.title">
				<fo:block space-before.optimum="0.5pt" line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt"><xsl:value-of select="$title"/></fo:block>
				<fo:block line-height="4pt" font-size="4pt">attack bonus</fo:block>
			</fo:table-cell>
			<fo:table-cell/>
			<fo:table-cell xsl:use-attribute-sets="tohit.total">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="total" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom="0pt" border-top="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">=</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="base_attack_bonus" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom="0pt" border-top="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="stat_mod" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom="0pt" border-top="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="size_mod" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom="0pt" border-top="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="misc_mod" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom="0pt" border-top="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="border.temp"/>
		</fo:table-row>
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - Unarmed ATTACK TABLE
====================================
====================================-->
	<xsl:template match="weapons/unarmed">
		<!-- START Unarmed Attack Table -->
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column column-width="35mm"/>
			<fo:table-column column-width="35mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-rows-spanned="2" xsl:use-attribute-sets="weapon.title"><fo:block font-weight="bold" font-size="10pt">UNARMED</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">TOTAL ATTACK BONUS</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">DAMAGE</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">CRITICAL</fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="total"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="damage"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="critical2"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- STOP Unarmed Attack Table -->
	</xsl:template>






<!--
====================================
====================================
	TEMPLATE - First 3 weapons
====================================
====================================-->
	<xsl:template match="weapons">
		<xsl:param name="first_weapon" select="0" />
		<xsl:param name="last_weapon" select="0" />
		<xsl:param name="column_width" select="'wide'" />

		<xsl:for-each select="weapon">
			<xsl:if test="(position() &gt;= $first_weapon) and (position() &lt;= $last_weapon)" >
				<xsl:apply-templates select="common">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
				<xsl:apply-templates select="melee">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
				<xsl:apply-templates select="ranges">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
				<xsl:apply-templates select="simple">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
				<xsl:apply-templates select="common" mode="special_properties">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - Weapons - common
====================================
====================================-->
	<xsl:template match="common">
		<xsl:param name="column_width" select="'wide'" />

		<fo:table table-layout="fixed" space-before="2mm" keep-with-next="always" keep-together="always">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="9mm"/>
					<fo:table-column column-width="9mm"/>
					<fo:table-column column-width="13mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="47mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="12mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<!-- Name row (including Hand, Type, Size and Crit -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title" number-rows-spanned="2">
						<fo:block font-weight="bold" font-size="10pt">
							<xsl:variable name="name" select="substring-before(name/short,'(')"/>
							<xsl:variable name="description" select="substring-after(name/short,'(')"/>
							<xsl:value-of select="$name"/>
							<xsl:if test="string-length($name) = 0">
								<xsl:value-of select="name/short"/>
							</xsl:if>
							<xsl:if test="string-length($description) &gt; 0">
								<fo:inline font-size="6pt"><xsl:text>(</xsl:text><xsl:value-of select="$description"/></fo:inline>
							</xsl:if>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">CURRENT HAND</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">TYPE</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">SIZE</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block  font-size="6pt">CRITICAL</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- Hand, Type, Size and Crit -->
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt"><xsl:value-of select="hand"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt"><xsl:value-of select="type"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt"><xsl:value-of select="size"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="7pt">
							<xsl:value-of select="critical/range"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - weapons - special properties
====================================
====================================-->
	<xsl:template match="common" mode="special_properties">
		<xsl:param name="column_width" select="'wide'" />
		<fo:table table-layout="fixed" keep-with-next="always" keep-together="always">
			<xsl:choose>
				<xsl:when test="$column_width='wide'"> <!-- 102mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="81mm"/>
				</xsl:when>
				<xsl:otherwise> <!-- 94mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="73mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">Special Properties</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon"><fo:block font-size="6pt" space-before="1pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - weapons - simple
====================================
====================================-->
	<xsl:template match="simple">
		<xsl:param name="column_width" select="'wide'" />
		<fo:table table-layout="fixed" keep-with-next="always" keep-together="always">
			<xsl:choose>
				<xsl:when test="$column_width='wide'"> <!-- 102mm -->
					<fo:table-column column-width="51mm"/>
					<fo:table-column column-width="51mm"/>
				</xsl:when>
				<xsl:otherwise> <!-- 94mm -->
					<fo:table-column column-width="47mm"/>
					<fo:table-column column-width="47mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">TOTAL ATTACK BONUS</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">DAMAGE</fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="damage"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - weapons - melee
====================================
====================================-->
	<xsl:template match="melee">
		<xsl:param name="column_width" select="'wide'" />

		<fo:table table-layout="fixed" keep-with-next="always" keep-together="always">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="29mm"/>
					<fo:table-column column-width="13mm"/>
					<fo:table-column column-width="11mm"/>
					<fo:table-column column-width="28mm"/>
					<fo:table-column column-width="13mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="26mm"/>
					<fo:table-column column-width="12mm"/>
					<fo:table-column column-width="11mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="12mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<!-- To hit and Damage titles -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"/>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">To Hit</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">Dam</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"/>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">To Hit</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">Dam</fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- 1HP, 2WP-OH -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">1H-P</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt"  space-before="1pt"><xsl:value-of select="w1_h1_p/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_p/damage" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2W-P-(OH)</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_oh/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_oh/damage" /></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- 1HO, 2WPOL -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">1H-O</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_o/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_o/damage" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2W-P-(OL)</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_ol/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_ol/damage" /></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- 2H, OH -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2H</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h2/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h2/damage" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block  font-size="5pt" font-weight="bold" space-before="1pt">2W-OH</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_o/to_hit" /></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_o/damage" /></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - weapons ranged
====================================
====================================-->
	<xsl:template match="ranges">
		<xsl:param name="column_width" select="'wide'" />

		<fo:table table-layout="fixed" keep-with-next="always" keep-together="always">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="7mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="7mm"/>
					<fo:table-column column-width="18mm"/>
					<fo:table-column column-width="18mm"/>
					<fo:table-column column-width="17mm"/>
					<fo:table-column column-width="17mm"/>
					<fo:table-column column-width="17mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>

				<xsl:if test="./ammunition">
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="weapon.title" text-align="start" number-columns-spanned="6">
							<fo:block font-size="5pt" font-weight="bold">Ammunition: <xsl:value-of select="ammunition/name" />
								<xsl:if test="string(./ammunition/special_properties) != ''">
									(<xsl:value-of select="./ammunition/special_properties" />)
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>

				<fo:table-row keep-with-next.within-column="always">
					<!-- Distances -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"/>
					<xsl:for-each select="range">
						<fo:table-cell xsl:use-attribute-sets="weapon.title">
							<fo:block font-size="5pt" font-weight="bold" >
								<xsl:value-of select="distance"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- Range To-Hits -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">To Hit</fo:block></fo:table-cell>
					<xsl:for-each select="range">
						<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
							<fo:block font-size="7pt" space-before="1pt">
								<xsl:value-of select="to_hit"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<!-- Damages -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">Dam</fo:block></fo:table-cell>
					<xsl:for-each select="range">
						<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
							<fo:block font-size="7pt" space-before="1pt">
								<xsl:value-of select="damage"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Armor
====================================
====================================-->
	<xsl:template match="armor">
		<xsl:if test="string(.) != ''">
			<fo:table table-layout="fixed" space-before="2mm">
				<fo:table-column column-width="42mm"/>
				<fo:table-column column-width="20mm"/>
				<fo:table-column column-width="20mm"/>
				<fo:table-column column-width="20mm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell display-align="center" number-rows-spanned="2" xsl:use-attribute-sets="protection.title">
							<fo:block font-size="10pt" font-weight="bold"><xsl:value-of select="name"/></fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection.title">
							<fo:block space-before="1pt" font-size="6pt" font-weight="bold">TYPE</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection.title">
							<fo:block space-before="1pt" font-size="6pt" font-weight="bold">ARMOR BONUS</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection.title">
							<fo:block space-before="1pt" font-size="6pt" font-weight="bold">MAX DEX BONUS</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="protection">
							<fo:block space-before="1pt" font-size="8pt"><xsl:value-of select="type"/></fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection">
							<fo:block space-before="1pt" font-size="8pt"><xsl:value-of select="totalac"/></fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="protection">
							<fo:block space-before="1pt" font-size="8pt"><xsl:value-of select="maxdex"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20mm"/>
				<fo:table-column column-width="20mm"/>
				<fo:table-column column-width="62mm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="protection.title">
							<fo:block space-before="1pt" font-size="6pt" font-weight="bold">CHECK PENALTY</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection.title">
							<fo:block space-before="1pt" font-size="6pt" font-weight="bold">SPECIAL PROPERTIES</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="protection">
							<fo:block space-before="1pt" font-size="8pt"><xsl:value-of select="accheck"/></fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="protection">
							<fo:block space-before="1pt" font-size="8pt"><xsl:value-of select="special_properties"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - Protection
====================================
====================================-->
	<xsl:template match="protection">
	<!-- BEGIN Armor table -->
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column column-width="55mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-column column-width="15mm"/>
			<fo:table-header>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="1pt">
						<fo:block font-size="7pt">
							ARMOR
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="3pt">
						<fo:block font-size="4pt">
							TYPE
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title"  padding-top="3pt">
						<fo:block font-size="4pt">
							Damage Reduction
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="3pt">
						<fo:block font-size="4pt">
							MAXDEX
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title"  padding-top="3pt">
						<fo:block font-size="4pt">
							CHECK
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-header>
			<fo:table-body>
				<xsl:for-each select="armor|shield|item">
					<xsl:variable name="content">
						<fo:table-cell><fo:block font-size="8pt"><xsl:value-of select="name"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="type"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="protection/armor/edr"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="maxdex"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="accheck"/></fo:block></fo:table-cell>
					</xsl:variable>
					<xsl:variable name="special">
						<fo:table-cell number-columns-spanned="6" text-align="center"><fo:block font-size="6pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
					</xsl:variable>

					<xsl:if test="position() mod 2 = 0">
						<xsl:call-template name="protection.item.darkline">
							<xsl:with-param name="content" select="$content"/>
							<xsl:with-param name="special" select="$special"/>
						</xsl:call-template>
					</xsl:if>
					<xsl:if test="position() mod 2 = 1">
						<xsl:call-template name="protection.item.lightline">
							<xsl:with-param name="content" select="$content"/>
							<xsl:with-param name="special" select="$special"/>
						</xsl:call-template>
					</xsl:if>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>



	<xsl:template name="protection.item.darkline">
		<xsl:param name="content"/>
		<xsl:param name="special"/>
		<fo:table-row xsl:use-attribute-sets="protection.darkline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="protection.darkline">
			<xsl:copy-of select="$special"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="protection.item.lightline">
		<xsl:param name="content"/>
		<xsl:param name="special"/>
		<fo:table-row xsl:use-attribute-sets="protection.lightline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="protection.lightline">
			<xsl:copy-of select="$special"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - WEAPON PROFICIENCIES
====================================
====================================-->
	<xsl:template match="weapon_proficiencies">
		<!-- BEGIN weapon_proficiencies Table -->
		<fo:table table-layout="fixed" space-before.optimum="2mm">
			<fo:table-column column-width="94mm"/>
			<fo:table-body>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="proficiencies.title" padding-top="1pt">
					<fo:block font-size="9pt">PROFICIENCIES</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="proficiencies" padding-top="1pt">
					<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
				</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END weapon_proficiencies Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - LANGUAGES
====================================
====================================-->
	<xsl:template match="languages">
		<xsl:if test="string(.) != ''">
			<!-- BEGIN Languages Table -->
			<fo:table table-layout="fixed" space-before.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="languages.title" padding-top="1pt">
						<fo:block font-size="9pt">LANGUAGES</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="languages" padding-top="1pt">
						<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Languages Table -->
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - TEMPLATES
====================================
====================================-->
	<xsl:template match="templates">
		<!-- BEGIN Templates Table -->
		<fo:table table-layout="fixed" space-before.optimum="2mm">
			<fo:table-column column-width="94mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="templates.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="9pt">
							TEMPLATES
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<xsl:for-each select="template">
					<xsl:variable name="content">
						<fo:table-cell padding="1pt">
							<fo:block font-size="7pt"><xsl:value-of select="name"/></fo:block>
						</fo:table-cell>
					</xsl:variable>

					<xsl:if test="position() mod 2 = 0">
						<xsl:call-template name="templates.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
					</xsl:if>
					<xsl:if test="position() mod 2 = 1">
						<xsl:call-template name="templates.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
					</xsl:if>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
		<!-- END Templates Table -->
	</xsl:template>

	<xsl:template name="templates.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="templates.darkline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="templates.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="templates.lightline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - COMPANIONS
====================================
====================================-->
	<xsl:template match="companions">
		<!-- BEGIN Companions Table -->
		<xsl:apply-templates select="familiar" />
		<xsl:apply-templates select="mount" />
		<xsl:apply-templates select="companion" />
		<xsl:call-template name="followers.list" />
		<!-- END Companions Table -->
	</xsl:template>

	<xsl:template match="familiar">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Familiar'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template match="mount">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Special Mount'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template match="companion">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Animal Companion'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template name="followers.list">
		<xsl:if test="count(follower) &gt; 0">
			<fo:table table-layout="fixed" space-before.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="companions.title" >
							<fo:block font-size="10pt" font-weight="bold">Followers: </fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="companions" >
							<xsl:for-each select="follower">
								<fo:block font-size="8pt"><xsl:value-of select="name"/></fo:block>
							</xsl:for-each>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="show_companion">
		<xsl:param name="followerType" select="Follower"/>
		<fo:table table-layout="fixed" space-before.optimum="2mm">
			<fo:table-column column-width="25mm"/>
			<fo:table-column column-width="15mm"/>
			<fo:table-column column-width="13mm"/>
			<fo:table-column column-width="14mm"/>
			<fo:table-column column-width="13mm"/>
			<fo:table-column column-width="14mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="6" xsl:use-attribute-sets="companions.title">
						<fo:block font-size="10pt" font-weight="bold"><xsl:value-of select="$followerType" />: <xsl:value-of select="name"/> (<xsl:value-of select="race"/>)</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">HP:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="hp"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">AC:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="ac"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">INIT:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="initiative_mod"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">FORT:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="fortitude"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">REF:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="reflex"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">WILL:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="willpower"/></fo:block></fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="attacks/attack">
					<xsl:if test="string-length(common/name/long) &gt; 0">
						<fo:table-row keep-with-next.within-column="always">
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end">
								<fo:block font-size="8pt">
									<xsl:variable name="name" select="substring-before(common/name/long,'(')"/>
									<xsl:variable name="description" select="substring-after(common/name/long,'(')"/>
									<xsl:value-of select="$name"/>
									<xsl:if test="string-length($name) = 0">
										<xsl:value-of select="common/name/long"/>
									</xsl:if>
									<xsl:if test="string-length($description) &gt; 0">
										<fo:inline font-size="5pt">
											<xsl:text>(</xsl:text><xsl:value-of select="$description"/>
										</fo:inline>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="simple/to_hit"/></fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">DAM:</fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="simple/damage"/></fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">CRIT:</fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions"><fo:block font-size="8pt"><xsl:value-of select="common/critical/range"/>/x<xsl:value-of select="common/critical/multiplier"/></fo:block></fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:for-each>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">Special:</fo:block></fo:table-cell>
					<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="companions.title"><fo:block font-size="7pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Equipment
====================================
====================================-->
	<xsl:template match="equipment">
		<fo:block>
			<fo:table table-layout="fixed" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="9pt">EQUIPMENT</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" >ITEM</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt">LOCATION</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt">QTY</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt">WT</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt">COST</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-footer>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell padding-top="1pt" number-columns-spanned="3" >
							<fo:block font-size="7pt">TOTAL WEIGHT CARRIED/VALUE</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt"><xsl:value-of select="total/weight" /></fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt">
								<xsl:variable name="TotalValue">
									<xsl:call-template name="Total">
										<xsl:with-param name="Items" select="item[contains(type, 'COIN')=false and contains(type, 'GEM')=false]"/>
										<xsl:with-param name="RunningTotal" select="0"/>
									</xsl:call-template>
								</xsl:variable>
								<xsl:value-of select="format-number($TotalValue, '####0.0#')"/> gp
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-footer>
				<fo:table-body>

					<xsl:for-each select="item">
						<xsl:if test="false=contains(type, 'GEM') and fale=contains(type, 'COIN')">
							<xsl:variable name="content">
								<fo:table-cell>
									<fo:block space-before.optimum="1pt" font-size="8pt">
										<xsl:if test="contains(type, 'MAGIC') or contains(type, 'PSIONIC')">
											<xsl:attribute name="font-weight">bold</xsl:attribute>
										</xsl:if>
										<xsl:value-of select="name"/>
									</fo:block>

									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="contents" />
									</fo:block>
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="special_properties" />
									</fo:block>
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note" />
									</fo:block>

									<!-- Display the number of charges left if any -->
									<xsl:if test="charges &gt; 0">
										<fo:block font-size="7pt" font-family="ZapfDingbats">
											<xsl:call-template name="for.loop">
												<xsl:with-param name="count" select="charges"/>
											</xsl:call-template>
										</fo:block>
									</xsl:if>
									<!-- Display the ammunition as a series of checkboxes -->
									<xsl:if test="contains(type, 'POTION') or contains(type, 'AMMUNITION')">
										<fo:block font-size="7pt" font-family="ZapfDingbats">
											<xsl:call-template name="for.loop">
												<xsl:with-param name="count" select="quantity"/>
											</xsl:call-template>
										</fo:block>
									</xsl:if>
								</fo:table-cell>
								<fo:table-cell text-align="center">
									<fo:block space-before.optimum="1pt" font-size="7pt">
										<xsl:value-of select="location" />
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
										<xsl:value-of select="quantity" />
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
										<xsl:value-of select="format-number(weight, '####0.0#')" />
										<xsl:if test="quantity &gt; 1">
											(<xsl:value-of select="format-number(weight * quantity, '####0.0#')" />)
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
										<xsl:value-of select="format-number(cost, '####0.0#')" />
										<xsl:if test="quantity &gt; 1">
											(<xsl:value-of select="format-number(cost * quantity, '####0.0#')" />)
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</xsl:variable>

							<xsl:if test="position() mod 2 = 0">
								<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
							</xsl:if>
							<xsl:if test="position() mod 2 = 1">
								<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
			<!-- END Equipment table -->
	</xsl:template>


	<xsl:template name="equipment.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="equipment.darkline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="equipment.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="equipment.lightline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - WEIGHT ALLOWANCE
====================================
====================================-->
	<xsl:template match="weight_allowance">

		<!-- BEGIN Weight table -->
		<fo:table table-layout="fixed" space-before.optimum="2mm">
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="11mm"/>
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="11mm"/>
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-body>
				<fo:table-row  keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="weight.title" padding-top="1pt"  number-columns-spanned="6">
						<fo:block font-size="9pt">WEIGHT ALLOWANCE</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row  keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Light	</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm"  xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="light" /></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Medium</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="medium" /></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm"  xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Heavy</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm"  xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="heavy" /></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Lift over head</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm"  xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="lift_over_head" /></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Lift off ground</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm"  xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="lift_off_ground" /></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm"  xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Push / Drag</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt"><xsl:value-of select="push_drag" /></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Money
====================================
====================================-->
	<xsl:template name="money">
		<xsl:if test="count (misc/funds/fund|equipment/item[contains(type, 'COIN') or contains(type, 'GEM')]) &gt; 0" >
			<fo:table table-layout="fixed" space-before.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-header>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="money.title" padding-top="1pt" >
							<fo:block font-size="9pt">MONEY</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-footer>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="money.title" >
							<fo:block font-size="7pt" text-align="end">
								<xsl:variable name="TotalValue">
									<xsl:call-template name="Total">
										<xsl:with-param name="Items" select="equipment/item[contains(type, 'COIN') or contains(type, 'GEM')]"/>
										<xsl:with-param name="RunningTotal" select="0"/>
									</xsl:call-template>
								</xsl:variable>
								Total   = <xsl:value-of select="format-number($TotalValue, '####0.0#')"/> gp
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-footer>
				<fo:table-body>
					<xsl:for-each select="misc/funds/fund|equipment/item[contains(type, 'COIN') or contains(type, 'GEM')]">
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block font-size="7pt">
									<xsl:choose>
										<xsl:when test="name(.) = 'fund'">
											<xsl:value-of select="." />
										</xsl:when>
										<xsl:otherwise>
											<xsl:if test="contains(type, 'COIN')" >
												<xsl:value-of select="name" />: <xsl:value-of select="quantity" />
											</xsl:if>
											<xsl:if test="contains(type, 'GEM')" >
												<xsl:value-of select="quantity" /> x <xsl:value-of select="name" /> (<xsl:value-of select="cost" />)
											</xsl:if>
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="money.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="money.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="money.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="money.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="money.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="money.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Misc Magic
====================================
====================================-->
	<xsl:template match="misc/magics">
		<xsl:if test="count(magic) &gt; 0" >
			<fo:table table-layout="fixed" space-before="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always" >
						<fo:table-cell xsl:use-attribute-sets="magic.title" padding-top="1pt" >
							<fo:block font-size="9pt">MAGIC</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="magic">
						<xsl:variable name="content">
							<fo:table-cell padding-top="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="magic.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="magic.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="magic.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="magic.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="magic.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="magic.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Special Abilities
====================================
====================================-->
	<xsl:template match="special_abilities">
		<xsl:if test="count(ability) &gt; 0" >
			<fo:table table-layout="fixed" space-before="2mm">
				<fo:table-column column-width="30mm"/>
				<fo:table-column column-width="64mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="special_abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="9pt">SPECIAL ABILITIES</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="ability">
						<xsl:variable name="content">
							<fo:table-cell number-columns-spanned="2" padding="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="name" /></fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="special_abilities.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="special_abilities.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


	<xsl:template name="special_abilities.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="special_abilities.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="special_abilities.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="special_abilities.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - Allegiances
====================================
====================================-->
	<xsl:template name="allegiances">
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column column-width="94mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="allegiances.title" padding-top="1pt">
						<fo:block font-size="9pt">ALLEGIANCES</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always" height="8mm">
					<fo:table-cell xsl:use-attribute-sets="allegiances" padding-top="1pt">
						<fo:block font-size="9pt"></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - FEATS
====================================
====================================-->
	<xsl:template match="feats">
		<xsl:if test="count(feat[hidden != 'T' and name != '']) &gt; 0" >
			<fo:table table-layout="fixed" space-before="2mm">
				<fo:table-column column-width="34mm"/>
				<fo:table-column column-width="60mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="feats.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="9pt">FEATS</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="feat[hidden != 'T' and name != '']">
						<xsl:sort select="name" />
						<xsl:variable name="content">
							<fo:table-cell padding="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="name"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt">
								<fo:block font-size="7pt" text-align="justify"><xsl:value-of select="description"/></fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="feats.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="feats.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="feats.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="feats.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="feats.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="feats.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - BIO
====================================
====================================-->
	<xsl:template match="basics" mode="bio">
		<!-- BEGIN BIO Pages -->
		<xsl:if test="string-length(translate(normalize-space(concat(description,bio)), ' ', '')) &gt; 0">
			<fo:page-sequence master-reference="Portrait">
				<xsl:call-template name="page.footer" />
				<fo:flow flow-name="body">
					<fo:block font-size="14pt" xsl:use-attribute-sets="bio" break-before="page" span="all">
						<xsl:value-of select="name" />
						<xsl:if test="string-length(followerof) &gt; 0" >- <xsl:value-of select="followerof" /></xsl:if>
					</fo:block>
					<fo:block>
						<fo:table >
							<fo:table-column column-width="94mm" />
							<xsl:if test="string-length(portrait) &gt; 0">
								<fo:table-column column-width="2mm" />
								<fo:table-column column-width="94mm" />
							</xsl:if>
							<fo:table-body>

								<fo:table-row>
									<xsl:if test="string-length(portrait) &gt; 0">
										<fo:table-cell display-align="center" xsl:use-attribute-sets="picture" number-rows-spanned="36">
											<fo:block start-indent="1mm" height="100mm">
												<xsl:variable name="portrait_file" select="portrait" />
												<fo:external-graphic src="file:{$portrait_file}" width="92mm" scaling="uniform" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-rows-spanned="36" />
									</xsl:if>
									<fo:table-cell>
										<fo:block xsl:use-attribute-sets="bio" font-size="9pt"><xsl:value-of select="race" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title" >
										<fo:block font-size="6pt">SPECIES</fo:block>
									</fo:table-cell>
								</fo:table-row>


								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="age" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">AGE</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="gender/long" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">GENDER</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="vision" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">VISION</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="alignment/long" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">ALIGNMENT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="handed" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">DOMINANT HAND</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="height/total" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="6pt">HEIGHT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="weight/weight_unit" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">WEIGHT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="eyes/color" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">EYE COLOR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="skin/color" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">SKIN COLOR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="hair/color" />
											<xsl:value-of select="hair/length" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">HAIR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="phobias" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											PHOBIAS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:for-each select="personality/trait">
												<xsl:if test="position() &gt; 0">,</xsl:if>
												<xsl:value-of select="." />
											</xsl:for-each>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											PERSONALITY TRAITS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="interests" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											INTERESTS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" color="black">
											<xsl:value-of select="speechtendency" />, <xsl:value-of select="catchphrase" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											SPOKEN STYLE
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" >
											<xsl:value-of select="residence" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											RESIDENCE
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" >
											<xsl:value-of select="location" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											LOCATION
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="region" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											REGION
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block font-size="14pt" font-weight="bold" space-before="5mm" span="all">
						Description:
					</fo:block>
					<xsl:for-each select="description/para">
						<fo:block font-size="9pt" text-indent="5mm" space-after.optimum="2mm"  span="all">
							<xsl:value-of select="." />
						</fo:block>
					</xsl:for-each>

					<fo:block font-size="14pt" font-weight="bold" span="all">
						Biography:
					</fo:block>
					<xsl:for-each select="bio/para">
						<fo:block font-size="9pt" text-indent="5mm" space-after.optimum="5mm" span="all">
							<xsl:value-of select="." />
						</fo:block>
					</xsl:for-each>
				</fo:flow>
			</fo:page-sequence>
		</xsl:if>
		<!-- END BIO Pages -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - CHARACTER NOTES
====================================
====================================-->
	<xsl:template match="notes" mode="bio">
		<!-- BEGIN CHARACTER NOTES Pages -->
		<xsl:if test="count(.//note) &gt; 0">
			<fo:page-sequence master-reference="Portrait">
				<xsl:call-template name="page.footer" />
				<fo:flow flow-name="body">
					<fo:block font-size="14pt" font-weight="bold" space-after.optimum="2mm" break-before="page" span="all">
						Notes:
					</fo:block>
					<xsl:for-each select="note">
						<fo:block font-size="12pt" space-after.optimum="2mm" space-before.optimum="5mm">
							<xsl:value-of select="name" />:
						</fo:block>
						<xsl:for-each select="value/para">
							<fo:block font-size="9pt" text-indent="5mm">
								<xsl:value-of select="." />
							</fo:block>
						</xsl:for-each>
					</xsl:for-each>
				</fo:flow>
			</fo:page-sequence>
		</xsl:if>
		<!-- END CHARACTER NOTES Pages -->
	</xsl:template>


</xsl:stylesheet>
