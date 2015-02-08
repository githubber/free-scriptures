<!-- ...................................................................... -->
<!-- XHTML Common Attributes Module  ...................................... -->
<!-- file: xhtml-attribs-1.mod

     This is XHTML, a reformulation of HTML as a modular XML application.
     Copyright 1998-2005 W3C (MIT, ERCIM, Keio), All Rights Reserved.
     Revision: $Id: xhtml-attribs-1.mod,v 1.1 2010/07/29 13:42:46 bertails Exp $ SMI

     This DTD module is identified by the PUBLIC and SYSTEM identifiers:

       PUBLIC "-//W3C//ENTITIES XHTML Common Attributes 1.0//EN"
       SYSTEM "http://www.w3.org/MarkUp/DTD/xhtml-attribs-1.mod"

     Revisions:
     (none)


     URL of the original document:
     http://www.w3.org/TR/xhtml-modularization/DTD/xhtml-attribs-1.mod


     License

     By using and/or copying this document, or the W3C document from which this
     statement is linked, you (the licensee) agree that you have read,
     understood, and will comply with the following terms and conditions:

     Permission to copy, and distribute the contents of this document, or the W3C
     document from which this statement is linked, in any medium for any purpose
     and without fee or royalty is hereby granted, provided that you include the
     following on ALL copies of the document, or portions thereof, that you use:

      * A link or URL to the original W3C document.
      * The pre-existing copyright notice of the original author, or if it
        doesn't exist, a notice (hypertext is preferred, but a textual
        representation is permitted) of the form: "Copyright ©
        [$date-of-document] World Wide Web Consortium, (Massachusetts Institute
        of Technology, European Research Consortium for Informatics and
        Mathematics, Keio University, Beihang). All Rights Reserved.
        http://www.w3.org/Consortium/Legal/2002/copyright-documents-20021231"
      * If it exists, the STATUS of the W3C document.

     When space permits, inclusion of the full text of this NOTICE should be
     provided. We request that authorship attribution be provided in any
     software, documents, or other items or products that you create pursuant to
     the implementation of the contents of this document, or any portion thereof.

     No right to create modifications or derivatives of W3C documents is granted
     pursuant to this license. However, if additional requirements (documented in
     the Copyright FAQ) are satisfied, the right to create modifications or
     derivatives is sometimes granted by the W3C to individuals complying with
     those requirements.
     
     Disclaimers

     THIS DOCUMENT IS PROVIDED "AS IS," AND COPYRIGHT HOLDERS MAKE NO
     REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT
     LIMITED TO, WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE,
     NON-INFRINGEMENT, OR TITLE; THAT THE CONTENTS OF THE DOCUMENT ARE SUITABLE
     FOR ANY PURPOSE; NOR THAT THE IMPLEMENTATION OF SUCH CONTENTS WILL NOT
     INFRINGE ANY THIRD PARTY PATENTS, COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS.

     COPYRIGHT HOLDERS WILL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL OR
     CONSEQUENTIAL DAMAGES ARISING OUT OF ANY USE OF THE DOCUMENT OR THE
     PERFORMANCE OR IMPLEMENTATION OF THE CONTENTS THEREOF.

     The name and trademarks of copyright holders may NOT be used in advertising
     or publicity pertaining to this document or its contents without specific,
     written prior permission. Title to copyright in this document will at all
     times remain with copyright holders.

     Notes

     This version:
     http://www.w3.org/Consortium/Legal/2002/copyright-documents-20021231

     This formulation of W3C's notice and license became active on December 31
     2002. This version removes the copyright ownership notice such that this
     license can be used with materials other than those owned by the W3C, moves
     information on style sheets, DTDs, and schemas to the Copyright FAQ,
     reflects that ERCIM is now a host of the W3C, includes references to this
     specific dated version of the license, and removes the ambiguous grant of
     "use". See the older formulation for the policy prior to this date. Please
     see our Copyright FAQ for common questions about using materials from our
     site, such as the translating or annotating specifications.

     ....................................................................... -->

<!-- Common Attributes

     This module declares many of the common attributes for the XHTML DTD.
     %NS.decl.attrib; is declared in the XHTML Qname module.

	 Note that this file was extended in XHTML Modularization 1.1 to 
	 include declarations of "global" versions of the attribute collections.
	 The global versions of the attributes are for use on elements in other 
	 namespaces.  The global version of "common" includes the xmlns declaration
	 for the prefixed version of the xhtml namespace.  If you are only using a
	 specific attribute or an individual attribute collection, you must also
	 include the XHTML.xmlns.attrib.prefixed PE on your elements.
-->

<!ENTITY % id.attrib
     "id           ID                       #IMPLIED"
>

<![%XHTML.global.attrs.prefixed;[
<!ENTITY % XHTML.global.id.attrib
     "%XHTML.prefix;:id           ID        #IMPLIED"
>
]]>

<!ENTITY % class.attrib
     "class        CDATA                 #IMPLIED"
>

<![%XHTML.global.attrs.prefixed;[
<!ENTITY % XHTML.global.class.attrib
     "%XHTML.prefix;:class        CDATA                 #IMPLIED"
>
]]>

<!ENTITY % title.attrib
     "title        %Text.datatype;          #IMPLIED"
>

<![%XHTML.global.attrs.prefixed;[
<!ENTITY % XHTML.global.title.attrib
     "%XHTML.prefix;:title        %Text.datatype;          #IMPLIED"
>
]]>

<!ENTITY % Core.extra.attrib "" >

<!ENTITY % Core.attrib
     "%XHTML.xmlns.attrib;
      %id.attrib;
      %class.attrib;
      %title.attrib;
      xml:space    ( preserve )             #FIXED 'preserve'
      %Core.extra.attrib;"
>

<!ENTITY % XHTML.global.core.extra.attrib "" >

<![%XHTML.global.attrs.prefixed;[

<!ENTITY % XHTML.global.core.attrib
     "%XHTML.global.id.attrib;
      %XHTML.global.class.attrib;
      %XHTML.global.title.attrib;
      %XHTML.global.core.extra.attrib;"
>
]]>

<!ENTITY % XHTML.global.core.attrib "" >


<!ENTITY % lang.attrib
     "xml:lang     %LanguageCode.datatype;  #IMPLIED"
>

<![%XHTML.bidi;[
<!ENTITY % dir.attrib
     "dir          ( ltr | rtl )            #IMPLIED"
>

<!ENTITY % I18n.attrib
     "%dir.attrib;
      %lang.attrib;"
>

<![%XHTML.global.attrs.prefixed;[
<!ENTITY XHTML.global.i18n.attrib
     "%XHTML.prefix;:dir          ( ltr | rtl )            #IMPLIED
      %lang.attrib;"
>
]]>
<!ENTITY XHTML.global.i18n.attrib "" >

]]>
<!ENTITY % I18n.attrib
     "%lang.attrib;"
>
<!ENTITY % XHTML.global.i18n.attrib
     "%lang.attrib;"
>

<!ENTITY % Common.extra.attrib "" >
<!ENTITY % XHTML.global.common.extra.attrib "" >

<!-- intrinsic event attributes declared previously
-->
<!ENTITY % Events.attrib "" >

<!ENTITY % XHTML.global.events.attrib "" >

<!ENTITY % Common.attrib
     "%Core.attrib;
      %I18n.attrib;
      %Events.attrib;
      %Common.extra.attrib;"
>

<!ENTITY % XHTML.global.common.attrib
     "%XHTML.xmlns.attrib.prefixed;
      %XHTML.global.core.attrib;
	  %XHTML.global.i18n.attrib;
	  %XHTML.global.events.attrib;
	  %XHTML.global.common.extra.attrib;"
>

<!-- end of xhtml-attribs-1.mod -->
