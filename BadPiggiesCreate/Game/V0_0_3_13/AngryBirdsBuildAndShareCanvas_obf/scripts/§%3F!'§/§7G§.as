package §?!'§
{
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§]!"§;
   
   public class §7G§ extends §67§
   {
       
      
      private var §,!y§:Number;
      
      public function §7G§(param1:§4!T§, param2:Number)
      {
         super(param1,0);
         §+6§ = param1.duration * param2;
         this.§,!y§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§,!y§;
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §7G§(§9!=§.clone() as §4!T§,this.§,!y§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §9!=§.update(param1 / this.scale);
      }
   }
}
