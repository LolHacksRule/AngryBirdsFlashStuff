package §&$!§
{
   public class §+#!§ implements §'P§
   {
       
      
      private var §`!C§:Vector.<§[r§>;
      
      private var §5&§:§'P§;
      
      public function §+#!§(param1:§'P§)
      {
         super();
         this.§5&§ = param1;
         this.§`!C§ = new Vector.<§[r§>();
      }
      
      public function set §=d§(param1:§'P§) : void
      {
         this.§5&§ = param1;
      }
      
      public function get §=d§() : §'P§
      {
         return this.§5&§;
      }
      
      public function addLocalizationTarget(param1:§[r§) : void
      {
         this.§`!C§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§[r§) : void
      {
         if(this.§`!C§.indexOf(param1) != -1)
         {
            this.§`!C§.splice(this.§`!C§.indexOf(param1),1);
         }
      }
      
      public function §@#E§(param1:String) : void
      {
         var _loc2_:§[r§ = null;
         this.§5&§.§@#E§(param1);
         for each(_loc2_ in this.§`!C§)
         {
            _loc2_.§>#k§();
         }
      }
      
      public function §-"$§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§5&§.getLocalizedString(param1);
      }
   }
}
