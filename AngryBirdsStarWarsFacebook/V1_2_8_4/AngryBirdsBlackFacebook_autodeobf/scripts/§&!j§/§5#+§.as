package §&!j§
{
   public class §5#+§ implements §6!9§
   {
       
      
      private var §&";§:Vector.<§6"v§>;
      
      private var §7!#§:§6!9§;
      
      public function §5#+§(param1:§6!9§)
      {
         super();
         this.§7!#§ = param1;
         this.§&";§ = new Vector.<§6"v§>();
      }
      
      public function set localizationMapping(param1:§6!9§) : void
      {
         this.§7!#§ = param1;
      }
      
      public function get localizationMapping() : §6!9§
      {
         return this.§7!#§;
      }
      
      public function addLocalizationTarget(param1:§6"v§) : void
      {
         this.§&";§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§6"v§) : void
      {
         if(this.§&";§.indexOf(param1) != -1)
         {
            this.§&";§.splice(this.§&";§.indexOf(param1),1);
         }
      }
      
      public function §-!d§(param1:String) : void
      {
         var _loc2_:§6"v§ = null;
         this.§7!#§.§-!d§(param1);
         for each(_loc2_ in this.§&";§)
         {
            _loc2_.§^"u§();
         }
      }
      
      public function §2"V§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§7!#§.getLocalizedString(param1);
      }
   }
}
