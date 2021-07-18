package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §2I§ extends §9!0§
   {
       
      
      public function §2I§(param1:§?f§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
            do
            {
               §!"-§ = param1.duration;
            }
            while(_loc4_ && param1);
            
         }
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §2I§(§7"?§.clone() as §?f§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §7"?§.update(§!"-§ - param1);
         }
      }
   }
}
