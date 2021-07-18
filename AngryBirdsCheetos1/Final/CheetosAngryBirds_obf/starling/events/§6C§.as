package starling.events
{
   public class §6C§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §^!I§:int;
      
      private var §,!X§:int;
      
      public function §6C§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param4);
            while(true)
            {
               this.§^!I§ = param2;
               while(!(_loc5_ && param3))
               {
                  this.§,!X§ = param3;
                  if(_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get width() : int
      {
         return this.§^!I§;
      }
      
      public function get height() : int
      {
         return this.§,!X§;
      }
   }
}
