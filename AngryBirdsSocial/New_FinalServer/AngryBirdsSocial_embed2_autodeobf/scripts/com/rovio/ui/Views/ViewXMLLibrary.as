package com.rovio.ui.Views
{
   import com.rovio.factory.XMLFactory;
   
   public class ViewXMLLibrary
   {
      
      [Embed(source="../embedded_assets/xml/UI_ViewData.xml",mimeType="application/octet-stream")]
      private static var mLibraryBin:Class = ViewXMLLibrary_mLibraryBin;
      
      public static var mLibrary:XML;
       
      
      public function ViewXMLLibrary()
      {
         super();
      }
      
      public static function init() : void
      {
         mLibrary = XMLFactory.fromOctetStreamClass(mLibraryBin);
      }
   }
}
