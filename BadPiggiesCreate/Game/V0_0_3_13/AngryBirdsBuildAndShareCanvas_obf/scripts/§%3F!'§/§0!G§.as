package §?!'§
{
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§]!"§;
   
   public class §0!G§ extends §67§
   {
       
      
      public function §0!G§(param1:§4!T§, param2:Number)
      {
         super(param1,param2);
         §+6§ = param1.duration;
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §0!G§(§9!=§.clone() as §4!T§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §9!=§.update(§+6§ - param1);
      }
   }
}
