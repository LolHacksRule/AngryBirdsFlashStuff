package com.rovio.data.localization
{
   public class AbstractLocalizationMapping implements ILocalizationMapping
   {
       
      
      protected var mLanguage:String;
      
      public function AbstractLocalizationMapping(language:String)
      {
         super();
         this.mLanguage = language;
      }
      
      public function setLanguage(language:String) : void
      {
         this.mLanguage = language;
      }
      
      public function getLocalizedString(elementID:String) : String
      {
         throw "--#AbstractLocalizationMapping[getLocalizedString]:: Implement method";
      }
   }
}
