package starling.events
{
   public class §&#§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §^B§:int;
      
      private var §+!d§:int;
      
      public function §&#§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            while(true)
            {
               this.§^B§ = param2;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§+!d§ = param3;
            if(!(_loc5_ && param1))
            {
               if(!(_loc5_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§^B§;
      }
      
      public function get height() : int
      {
         return this.§+!d§;
      }
   }
}
