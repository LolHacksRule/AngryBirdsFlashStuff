package §0S§
{
   import §6!!§.§,!B§;
   import §6!!§.§9o§;
   import §6!!§.§?t§;
   
   public class §-!x§ extends §9o§
   {
       
      
      private var §1P§:Number;
      
      private var §#1§:Number;
      
      public function §-!x§(param1:§,!B§, param2:Number, param3:Number)
      {
         super(param1,0);
         §4!1§ = param2 + param1.duration + param3;
         this.§#1§ = param2;
         this.§1P§ = param3;
      }
      
      public function get §3_§() : Number
      {
         return this.§#1§;
      }
      
      override protected function newInstance() : §?t§
      {
         return new §-!x§(§,!]§.clone() as §,!B§,this.§#1§,this.§1P§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §,!]§.update(param1 - this.§#1§);
      }
      
      public function get §%T§() : Number
      {
         return this.§1P§;
      }
   }
}
