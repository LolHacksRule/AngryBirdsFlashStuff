package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §^!B§ extends §9!0§
   {
       
      
      private var §@!?§:Number;
      
      private var §5!A§:Number;
      
      public function §^!B§(param1:§?f§, param2:Number, param3:Number)
      {
         super(param1,0);
         §!"-§ = param2 + param1.duration + param3;
         this.§5!A§ = param2;
         this.§@!?§ = param3;
      }
      
      public function get §@"$§() : Number
      {
         return this.§5!A§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §^!B§(§7"?§.clone() as §?f§,this.§5!A§,this.§@!?§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §7"?§.update(param1 - this.§5!A§);
      }
      
      public function get §],§() : Number
      {
         return this.§@!?§;
      }
   }
}
