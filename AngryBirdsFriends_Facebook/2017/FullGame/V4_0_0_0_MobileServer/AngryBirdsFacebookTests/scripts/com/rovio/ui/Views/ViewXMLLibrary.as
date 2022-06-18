package com.rovio.ui.Views
{
   public class ViewXMLLibrary
   {
      
      public static var mLibrary:XML;
       
      
      public function ViewXMLLibrary()
      {
         super();
      }
      
      public static function init(library:XML) : void
      {
         mLibrary = library;
      }
   }
}
