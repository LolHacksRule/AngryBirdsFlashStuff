package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §@!`§ extends §"U§
   {
       
      
      public function §@!`§(param1:§?H§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
         do
         {
            §[m§ = param1.duration;
         }
         while(_loc4_);
         
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §@!`§(§>d§.clone() as §?H§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §>d§.update(§[m§ - param1);
         }
      }
   }
}
