package §'!u§
{
   public class §&S§ implements §6q§
   {
       
      
      private var §%!8§:Vector.<§catch§>;
      
      private var §-!?§:§6q§;
      
      public function §&S§(param1:§6q§)
      {
         super();
         this.§-!?§ = param1;
         this.§%!8§ = new Vector.<§catch§>();
      }
      
      public function set §3H§(param1:§6q§) : void
      {
         this.§-!?§ = param1;
      }
      
      public function get §3H§() : §6q§
      {
         return this.§-!?§;
      }
      
      public function addLocalizationTarget(param1:§catch§) : void
      {
         this.§%!8§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§catch§) : void
      {
         if(this.§%!8§.indexOf(param1) != -1)
         {
            this.§%!8§.splice(this.§%!8§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§catch§ = null;
         this.§-!?§.setLanguage(param1);
         for each(_loc2_ in this.§%!8§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§-!?§.getLocalizedString(param1);
      }
   }
}
