package starling.events
{
   public class §"!§ extends Event
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
      
      private var §2!d§:int;
      
      private var §@@§:int;
      
      public function §"!§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            while(true)
            {
               this.§2!d§ = param2;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            this.§@@§ = param3;
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§2!d§;
      }
      
      public function get height() : int
      {
         return this.§@@§;
      }
   }
}
