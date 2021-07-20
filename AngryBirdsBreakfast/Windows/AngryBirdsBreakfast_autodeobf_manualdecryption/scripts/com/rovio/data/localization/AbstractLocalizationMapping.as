package com.rovio.data.localization
{
   public class AbstractLocalizationMapping implements ILocalizationMapping
   {
       
      
      protected var mLanguage:String;
      
      public function AbstractLocalizationMapping(param1:String)
      {
         super();
         this.mLanguage = param1;
      }
      
      public function setLanguage(param1:String) : void
      {
         this.mLanguage = param1;
      }
      
      public function getLocalizedString(param1:String) : String
      {
         throw "--#AbstractLocalizationMapping[getLocalizedString]:: Implement method";
      }
   }
}
