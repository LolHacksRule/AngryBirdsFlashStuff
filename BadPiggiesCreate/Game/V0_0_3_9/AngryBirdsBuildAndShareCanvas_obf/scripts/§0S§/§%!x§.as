package §0S§
{
   import §6!!§.§,!B§;
   import §6!!§.§9o§;
   import §6!!§.§?t§;
   
   public class §%!x§ extends §9o§
   {
       
      
      private var §#!U§:Number;
      
      public function §%!x§(param1:§,!B§, param2:Number)
      {
         super(param1,0);
         §4!1§ = param1.duration * param2;
         this.§#!U§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§#!U§;
      }
      
      override protected function newInstance() : §?t§
      {
         return new §%!x§(§,!]§.clone() as §,!B§,this.§#!U§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §,!]§.update(param1 / this.scale);
      }
   }
}
