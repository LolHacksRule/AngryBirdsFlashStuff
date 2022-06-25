package starling.events
{
   public class §-1§ extends Event
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
      
      private var § l§:int;
      
      private var §4N§:int;
      
      public function §-1§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            if(_loc6_ || param3)
            {
               this.§ l§ = param2;
               if(!_loc6_)
               {
               }
               §§goto(addr48);
            }
            this.§4N§ = param3;
         }
         addr48:
      }
      
      public function get width() : int
      {
         return this.§ l§;
      }
      
      public function get height() : int
      {
         return this.§4N§;
      }
   }
}
