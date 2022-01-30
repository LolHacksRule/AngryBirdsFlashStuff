package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §=!X§ extends §9!0§
   {
       
      
      private var §-">§:Number;
      
      public function §=!X§(param1:§?f§, param2:Number)
      {
         super(param1,0);
         §!"-§ = param1.duration * param2;
         this.§-">§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§-">§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §=!X§(§7"?§.clone() as §?f§,this.§-">§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §7"?§.update(param1 / this.scale);
      }
   }
}
