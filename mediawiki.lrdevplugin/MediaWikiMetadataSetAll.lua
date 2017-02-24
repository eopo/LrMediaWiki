-- This file is part of the LrMediaWiki project and distributed under the terms
-- of the MIT license (see LICENSE.txt file in the project root directory or
-- [0]).  See [1] for more information about LrMediaWiki.
--
-- Copyright (C) 2015 by the LrMediaWiki team (see CREDITS.txt file in the
-- project root directory or [2])
--
-- [0]  <https://raw.githubusercontent.com/robinkrahl/LrMediaWiki/master/LICENSE.txt>
-- [1]  <https://commons.wikimedia.org/wiki/Commons:LrMediaWiki>
-- [2]  <https://raw.githubusercontent.com/robinkrahl/LrMediaWiki/master/CREDITS.txt>

-- Code status:
-- doc:   missing
-- i18n:  complete

-- This Metadata Set "LrMediaWiki – All Fields" shows all fields defined by
-- LrMediaWiki, grouped by the supported infobox templates:
-- * General (without label), used by all infobox templates
-- * Artwork
-- * Object photo
-- This Metadata Set supports multiple Wikimedia Commons infobox templates:
-- * <https://commons.wikimedia.org/wiki/Template:Information>
-- * <https://commons.wikimedia.org/wiki/Template:Artwork>
-- * <https://commons.wikimedia.org/wiki/Template:Object_photo>
-- The fields "Permission", "Source" and "Author" are added at export dialog.

local Info = require 'Info'
local pf = Info.LrToolkitIdentifier .. '.' -- Prefix, e.g. 'org.ireas.lightroom.mediawiki.'

return {
	id = 'LrMediaWikiMetadataSetAll', -- needs to be unique!
	title = LOC "$$$/LrMediaWiki/MetadataSetAll=LrMediaWiki – All Fields",
	items = {
		-- first group
		{ pf .. 'description_en', LOC "$$$/LrMediaWiki/Metadata/DescriptionEn=Description (en)" },
		{ pf .. 'description_de', LOC "$$$/LrMediaWiki/Metadata/DescriptionDe=Description (de)" },
		{ pf .. 'description_additional', LOC "$$$/LrMediaWiki/Metadata/DescriptionAdditional=Description (other)" },
		{ 'com.adobe.dateCreated', LOC "$$$/LrMediaWiki/Metadata/DateCreated=Date Created" },
		{ pf .. 'date', LOC "$$$/LrMediaWiki/Metadata/Date=Date" },
		{ pf .. 'source', LOC "$$$/LrMediaWiki/Metadata/Source=Source" },
		{ pf .. 'author', LOC "$$$/LrMediaWiki/Metadata/Author=Author" },
		{ pf .. 'otherVersions', LOC "$$$/LrMediaWiki/Metadata/OtherVersions=Other Versions" },
		{ pf .. 'otherFields', LOC "$$$/LrMediaWiki/Metadata/OtherFields=Other Fields" },
		{ pf .. 'templates', LOC "$$$/LrMediaWiki/Metadata/Templates=Templates" },
		{ pf .. 'categories', LOC "$$$/LrMediaWiki/Metadata/Categories=Categories" },
		-- second group
		'com.adobe.separator',
		{ 'com.adobe.label', label = 'Artwork' },
		{ pf .. 'artist', LOC "$$$/LrMediaWiki/Metadata/Artist=Artist" },
		{ pf .. 'title', LOC "$$$/LrMediaWiki/Metadata/Title=Title" },
		{ pf .. 'medium', LOC "$$$/LrMediaWiki/Metadata/Medium=Medium" },
		{ pf .. 'dimensions', LOC "$$$/LrMediaWiki/Metadata/Dimensions=Dimensions" },
		{ pf .. 'institution', LOC "$$$/LrMediaWiki/Metadata/Institution=Institution" },
		{ pf .. 'department', LOC "$$$/LrMediaWiki/Metadata/Department=Department" },
		{ pf .. 'accessionNumber', LOC "$$$/LrMediaWiki/Metadata/AccessionNumber=Accession Number" },
		{ pf .. 'placeOfCreation', LOC "$$$/LrMediaWiki/Metadata/PlaceOfCreation=Place of Creation" },
		{ pf .. 'placeOfDiscovery', LOC "$$$/LrMediaWiki/Metadata/PlaceOfDiscovery=Place of Discovery" },
		{ pf .. 'objectHistory', LOC "$$$/LrMediaWiki/Metadata/ObjectHistory=Object History" },
		{ pf .. 'exhibitionHistory', LOC "$$$/LrMediaWiki/Metadata/ExhibitionHistory=Exhibition History" },
		{ pf .. 'creditLine', LOC "$$$/LrMediaWiki/Metadata/CreditLine=Credit Line" },
		{ pf .. 'inscriptions', LOC "$$$/LrMediaWiki/Metadata/Inscriptions=Inscriptions" },
		{ pf .. 'notes', LOC "$$$/LrMediaWiki/Metadata/Notes=Notes" },
		{ pf .. 'references', LOC "$$$/LrMediaWiki/Metadata/References=References" },
		{ pf .. 'wikidata', LOC "$$$/LrMediaWiki/Metadata/Wikidata=Wikidata" },
		-- third group
		'com.adobe.separator',
		{ 'com.adobe.label', label = 'Object photo' },
		{ pf .. 'object', LOC "$$$/LrMediaWiki/Metadata/Object=Object" },
		{ pf .. 'detail', LOC "$$$/LrMediaWiki/Metadata/Detail=Detail" },
		{ pf .. 'detailPosition', LOC "$$$/LrMediaWiki/Metadata/DetailPosition=Detail Position" },
	},
}
