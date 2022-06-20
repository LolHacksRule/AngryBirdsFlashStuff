package §'U§
{
   public class §]#[§ implements §-$#§
   {
       
      
      private var §;!=§:Vector.<§6!B§>;
      
      private var §7x§:§-$#§;
      
      public function §]#[§(param1:§-$#§)
      {
         super();
         this.§7x§ = param1;
         this.§;!=§ = new Vector.<§6!B§>();
      }
      
      public function set §-#V§(param1:§-$#§) : void
      {
         this.§7x§ = param1;
      }
      
      public function get §-#V§() : §-$#§
      {
         return this.§7x§;
      }
      
      public function addLocalizationTarget(param1:§6!B§) : void
      {
         this.§;!=§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§6!B§) : void
      {
         if(this.§;!=§.indexOf(param1) != -1)
         {
            this.§;!=§.splice(this.§;!=§.indexOf(param1),1);
         }
      }
      
      public function §`!8§(param1:String) : void
      {
         var _loc2_:§6!B§ = null;
         this.§7x§.§`!8§(param1);
         for each(_loc2_ in this.§;!=§)
         {
            _loc2_.§3F§();
         }
      }
      
      public function §%#F§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§7x§.getLocalizedString(param1);
      }
   }
}
