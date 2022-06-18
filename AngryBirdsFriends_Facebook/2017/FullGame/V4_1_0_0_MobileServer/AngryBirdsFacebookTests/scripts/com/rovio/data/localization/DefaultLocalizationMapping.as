package com.rovio.data.localization
{
   import flash.utils.Dictionary;
   
   public class DefaultLocalizationMapping extends AbstractLocalizationMapping
   {
       
      
      protected var mLocalizationMap:Dictionary;
      
      public function DefaultLocalizationMapping(language:String = "en")
      {
         super(language);
         this.mLocalizationMap = new Dictionary();
         this.mLocalizationMap[language] = new Dictionary();
      }
      
      override public function getLocalizedString(elementID:String) : String
      {
         var localized:String = "";
         if(this.mLocalizationMap[mLanguage][elementID])
         {
            localized = this.mLocalizationMap[mLanguage][elementID];
         }
         return localized;
      }
   }
}
