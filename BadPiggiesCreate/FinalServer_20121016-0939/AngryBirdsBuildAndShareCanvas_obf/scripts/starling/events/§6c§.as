package starling.events
{
   public class §6c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §7!T§:int;
      
      private var §>w§:int;
      
      public function §6c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param4);
            while(true)
            {
               this.§7!T§ = param2;
               loop1:
               while(_loc6_)
               {
                  while(true)
                  {
                     this.§>w§ = param3;
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get width() : int
      {
         return this.§7!T§;
      }
      
      public function get height() : int
      {
         return this.§>w§;
      }
   }
}
