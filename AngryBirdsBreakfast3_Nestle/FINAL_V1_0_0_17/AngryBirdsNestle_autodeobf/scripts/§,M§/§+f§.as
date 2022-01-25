package §,M§
{
   public class §+f§ implements §%!l§
   {
       
      
      private var §?!D§:Vector.<§0V§>;
      
      private var §9#§:§%!l§;
      
      public function §+f§(param1:§%!l§)
      {
         super();
         this.§9#§ = param1;
         this.§?!D§ = new Vector.<§0V§>();
      }
      
      public function set §6V§(param1:§%!l§) : void
      {
         this.§9#§ = param1;
      }
      
      public function get §6V§() : §%!l§
      {
         return this.§9#§;
      }
      
      public function addLocalizationTarget(param1:§0V§) : void
      {
         this.§?!D§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§0V§) : void
      {
         if(this.§?!D§.indexOf(param1) != -1)
         {
            this.§?!D§.splice(this.§?!D§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§0V§ = null;
         this.§9#§.setLanguage(param1);
         for each(_loc2_ in this.§?!D§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function §[m§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§9#§.getLocalizedString(param1);
      }
   }
}
