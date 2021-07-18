package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §@!`§ extends §"U§
   {
       
      
      public function §@!`§(param1:§?H§, param2:Number)
      {
         super(param1,param2);
         §[m§ = param1.duration;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §@!`§(§>d§.clone() as §?H§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §>d§.update(§[m§ - param1);
      }
   }
}
