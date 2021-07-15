package com.rovio.data.localization
{
   public class LocalizationManager implements ILocalizationMapping
   {
       
      
      private var mLocalizationTargetPool:Vector.<ILocalizable>;
      
      private var mLocalizationMapping:ILocalizationMapping;
      
      public function LocalizationManager(param1:ILocalizationMapping)
      {
         super();
         this.mLocalizationMapping = param1;
         this.mLocalizationTargetPool = new Vector.<ILocalizable>();
      }
      
      public function set localizationMapping(param1:ILocalizationMapping) : void
      {
         this.mLocalizationMapping = param1;
      }
      
      public function get localizationMapping() : ILocalizationMapping
      {
         return this.mLocalizationMapping;
      }
      
      public function addLocalizationTarget(param1:ILocalizable) : void
      {
         this.mLocalizationTargetPool.push(param1);
      }
      
      public function removeLocalizationTarget(param1:ILocalizable) : void
      {
         if(this.mLocalizationTargetPool.indexOf(param1) != -1)
         {
            this.mLocalizationTargetPool.splice(this.mLocalizationTargetPool.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:ILocalizable = null;
         this.mLocalizationMapping.setLanguage(param1);
         for each(_loc2_ in this.mLocalizationTargetPool)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedBoldString(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.mLocalizationMapping.getLocalizedString(param1);
      }
   }
}
