package §1!f§
{
   import §6P§.§!b§;
   import §6P§.§>Z§;
   import §6P§.§@o§;
   
   public class §!!0§ extends §@o§
   {
       
      
      public function §!!0§(param1:§!b§, param2:Number)
      {
         super(param1,param2);
         §"!,§ = param1.duration;
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §!!0§(§-!$§.clone() as §!b§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §-!$§.update(§"!,§ - param1);
      }
   }
}
