package §1!f§
{
   import §6P§.§!b§;
   import §6P§.§>Z§;
   import §6P§.§@o§;
   
   public class §4!A§ extends §@o§
   {
       
      
      private var §+!%§:Number;
      
      private var §`"4§:uint;
      
      public function §4!A§(param1:§!b§, param2:uint)
      {
         super(param1,0);
         this.§+!%§ = param1.duration;
         this.§`"4§ = param2;
         §"!,§ = this.§+!%§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §"!,§ ? this.§+!%§ * int(param1 / this.§+!%§) : §"!,§ - this.§+!%§;
         }
         §-!$§.update(param1);
      }
      
      public function get §#V§() : uint
      {
         return this.§`"4§;
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §4!A§(§-!$§.clone() as §!b§,this.§#V§);
      }
   }
}
