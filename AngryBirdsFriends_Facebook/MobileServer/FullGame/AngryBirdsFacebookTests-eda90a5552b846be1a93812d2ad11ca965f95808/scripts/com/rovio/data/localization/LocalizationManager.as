package com.rovio.data.localization
{
   public class LocalizationManager implements ILocalizationMapping
   {
       
      
      private var mLocalizationTargetPool:Vector.<ILocalizable>;
      
      private var mLocalizationMapping:ILocalizationMapping;
      
      public function LocalizationManager(localizationMapping:ILocalizationMapping)
      {
         super();
         this.mLocalizationMapping = localizationMapping;
         this.mLocalizationTargetPool = new Vector.<ILocalizable>();
      }
      
      public function set localizationMapping(value:ILocalizationMapping) : void
      {
         this.mLocalizationMapping = value;
      }
      
      public function get localizationMapping() : ILocalizationMapping
      {
         return this.mLocalizationMapping;
      }
      
      public function addLocalizationTarget(target:ILocalizable) : void
      {
         this.mLocalizationTargetPool.push(target);
      }
      
      public function removeLocalizationTarget(target:ILocalizable) : void
      {
         if(this.mLocalizationTargetPool.indexOf(target) != -1)
         {
            this.mLocalizationTargetPool.splice(this.mLocalizationTargetPool.indexOf(target),1);
         }
      }
      
      public function setLanguage(language:String) : void
      {
         var target:ILocalizable = null;
         this.mLocalizationMapping.setLanguage(language);
         for each(target in this.mLocalizationTargetPool)
         {
            target.updateLocalization();
         }
      }
      
      public function getLocalizedBoldString(elementId:String) : String
      {
         return "<b>" + this.getLocalizedString(elementId) + "</b>";
      }
      
      public function getLocalizedString(elementId:String) : String
      {
         return this.mLocalizationMapping.getLocalizedString(elementId);
      }
   }
}
