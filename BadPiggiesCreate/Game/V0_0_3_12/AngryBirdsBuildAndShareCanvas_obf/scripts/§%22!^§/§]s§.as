package §"!^§
{
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §]s§ extends §3!_§
   {
       
      
      public function §]s§(param1:§3j§, param2:Number)
      {
         super(param1,param2);
         §,!O§ = param1.duration;
      }
      
      override protected function newInstance() : §5f§
      {
         return new §]s§(§0v§.clone() as §3j§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §0v§.update(§,!O§ - param1);
      }
   }
}
