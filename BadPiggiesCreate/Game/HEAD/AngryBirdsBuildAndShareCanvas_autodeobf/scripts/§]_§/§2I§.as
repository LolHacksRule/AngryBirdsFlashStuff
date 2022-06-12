package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §2I§ extends §9!0§
   {
       
      
      public function §2I§(param1:§?f§, param2:Number)
      {
         super(param1,param2);
         §!"-§ = param1.duration;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §2I§(§7"?§.clone() as §?f§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §7"?§.update(§!"-§ - param1);
      }
   }
}
