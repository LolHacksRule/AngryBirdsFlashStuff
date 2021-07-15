package com.rovio.data.localization
{
   import flash.utils.Dictionary;
   
   public class DefaultLocalizationMapping extends AbstractLocalizationMapping
   {
       
      
      protected var mLocalizationMap:Dictionary;
      
      public function DefaultLocalizationMapping(param1:String = "en")
      {
         super(param1);
         this.mLocalizationMap = new Dictionary();
         this.mLocalizationMap[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.mLocalizationMap[mLanguage][param1])
         {
            _loc2_ = this.mLocalizationMap[mLanguage][param1];
         }
         return _loc2_;
      }
   }
}
