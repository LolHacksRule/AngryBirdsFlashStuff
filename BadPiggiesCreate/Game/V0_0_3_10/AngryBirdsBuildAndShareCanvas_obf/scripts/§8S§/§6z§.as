package §8S§
{
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §'!D§.§9!W§;
   
   public class §6z§ extends §1!J§
   {
       
      
      public function §6z§(param1:§&s§, param2:Number)
      {
         super(param1,param2);
         §4!V§ = param1.duration;
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §6z§(§%!§.clone() as §&s§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §%!§.update(§4!V§ - param1);
      }
   }
}
