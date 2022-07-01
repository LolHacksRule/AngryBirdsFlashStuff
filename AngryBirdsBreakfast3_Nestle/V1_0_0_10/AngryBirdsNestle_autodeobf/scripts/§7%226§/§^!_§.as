package §7"6§
{
   public class §^!_§ implements §9!p§
   {
       
      
      private var §96§:Vector.<§?m§>;
      
      private var §9[§:§9!p§;
      
      public function §^!_§(param1:§9!p§)
      {
         super();
         this.§9[§ = param1;
         this.§96§ = new Vector.<§?m§>();
      }
      
      public function set §'6§(param1:§9!p§) : void
      {
         this.§9[§ = param1;
      }
      
      public function get §'6§() : §9!p§
      {
         return this.§9[§;
      }
      
      public function addLocalizationTarget(param1:§?m§) : void
      {
         this.§96§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§?m§) : void
      {
         if(this.§96§.indexOf(param1) != -1)
         {
            this.§96§.splice(this.§96§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§?m§ = null;
         this.§9[§.setLanguage(param1);
         for each(_loc2_ in this.§96§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function §9O§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§9[§.getLocalizedString(param1);
      }
   }
}
