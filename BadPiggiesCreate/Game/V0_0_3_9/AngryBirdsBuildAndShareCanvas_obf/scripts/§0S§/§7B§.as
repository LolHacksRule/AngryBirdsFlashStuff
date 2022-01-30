package §0S§
{
   import §6!!§.§,!B§;
   import §6!!§.§9o§;
   import §6!!§.§?t§;
   
   public class §7B§ extends §9o§
   {
       
      
      public function §7B§(param1:§,!B§, param2:Number)
      {
         super(param1,param2);
         §4!1§ = param1.duration;
      }
      
      override protected function newInstance() : §?t§
      {
         return new §7B§(§,!]§.clone() as §,!B§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §,!]§.update(§4!1§ - param1);
      }
   }
}
