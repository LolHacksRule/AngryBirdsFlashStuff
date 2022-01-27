package §71§
{
   public class §;l§ implements §>j§
   {
       
      
      private var §=a§:Vector.<§%`§>;
      
      private var §`y§:§>j§;
      
      public function §;l§(param1:§>j§)
      {
         super();
         this.§`y§ = param1;
         this.§=a§ = new Vector.<§%`§>();
      }
      
      public function set §@!e§(param1:§>j§) : void
      {
         this.§`y§ = param1;
      }
      
      public function get §@!e§() : §>j§
      {
         return this.§`y§;
      }
      
      public function addLocalizationTarget(param1:§%`§) : void
      {
         this.§=a§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§%`§) : void
      {
         if(this.§=a§.indexOf(param1) != -1)
         {
            this.§=a§.splice(this.§=a§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§%`§ = null;
         this.§`y§.setLanguage(param1);
         for each(_loc2_ in this.§=a§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§`y§.getLocalizedString(param1);
      }
   }
}
