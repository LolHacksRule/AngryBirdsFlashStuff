package §?!'§
{
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§]!"§;
   
   public class §?u§ extends §67§
   {
       
      
      private var §?!P§:Number;
      
      private var §;c§:Number;
      
      public function §?u§(param1:§4!T§, param2:Number, param3:Number)
      {
         super(param1,0);
         §+6§ = param2 + param1.duration + param3;
         this.§;c§ = param2;
         this.§?!P§ = param3;
      }
      
      public function get §2!?§() : Number
      {
         return this.§;c§;
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §?u§(§9!=§.clone() as §4!T§,this.§;c§,this.§?!P§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §9!=§.update(param1 - this.§;c§);
      }
      
      public function get §"^§() : Number
      {
         return this.§?!P§;
      }
   }
}
