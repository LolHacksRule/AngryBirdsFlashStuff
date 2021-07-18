package §>@§
{
   public class §5"H§ implements §%!-§
   {
       
      
      private var §-!U§:Vector.<§#y§>;
      
      private var §3#!§:§%!-§;
      
      public function §5"H§(param1:§%!-§)
      {
         super();
         this.§3#!§ = param1;
         this.§-!U§ = new Vector.<§#y§>();
      }
      
      public function set localizationMapping(param1:§%!-§) : void
      {
         this.§3#!§ = param1;
      }
      
      public function get localizationMapping() : §%!-§
      {
         return this.§3#!§;
      }
      
      public function addLocalizationTarget(param1:§#y§) : void
      {
         this.§-!U§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§#y§) : void
      {
         if(this.§-!U§.indexOf(param1) != -1)
         {
            this.§-!U§.splice(this.§-!U§.indexOf(param1),1);
         }
      }
      
      public function §6W§(param1:String) : void
      {
         var _loc2_:§#y§ = null;
         this.§3#!§.§6W§(param1);
         for each(_loc2_ in this.§-!U§)
         {
            _loc2_.§9!J§();
         }
      }
      
      public function §@"n§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§3#!§.getLocalizedString(param1);
      }
   }
}
