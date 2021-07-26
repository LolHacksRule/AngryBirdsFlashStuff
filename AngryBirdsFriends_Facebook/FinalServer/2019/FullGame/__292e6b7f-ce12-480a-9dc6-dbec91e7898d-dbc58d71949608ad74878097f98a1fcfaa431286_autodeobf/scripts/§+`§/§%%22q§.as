package §+`§
{
   public class §%"q§ implements §+!m§
   {
       
      
      private var §]"s§:Vector.<§6!%§>;
      
      private var §7!v§:§+!m§;
      
      public function §%"q§(param1:§+!m§)
      {
         super();
         this.§7!v§ = param1;
         this.§]"s§ = new Vector.<§6!%§>();
      }
      
      public function set §@o§(param1:§+!m§) : void
      {
         this.§7!v§ = param1;
      }
      
      public function get §@o§() : §+!m§
      {
         return this.§7!v§;
      }
      
      public function addLocalizationTarget(param1:§6!%§) : void
      {
         this.§]"s§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§6!%§) : void
      {
         if(this.§]"s§.indexOf(param1) != -1)
         {
            this.§]"s§.splice(this.§]"s§.indexOf(param1),1);
         }
      }
      
      public function §[T§(param1:String) : void
      {
         var _loc2_:§6!%§ = null;
         this.§7!v§.§[T§(param1);
         for each(_loc2_ in this.§]"s§)
         {
            _loc2_.§-u§();
         }
      }
      
      public function §6!Y§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§7!v§.getLocalizedString(param1);
      }
   }
}
