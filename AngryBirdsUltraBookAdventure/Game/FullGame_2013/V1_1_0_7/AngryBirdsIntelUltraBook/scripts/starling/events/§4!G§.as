package starling.events
{
   public class §4!G§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §4!G§))
         {
            RESIZE = "resize";
         }
      }
      
      private var §3!8§:int;
      
      private var §0!Q§:int;
      
      public function §4!G§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super(param1,param4);
            while(true)
            {
               this.§3!8§ = param2;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§0!Q§ = param3;
            if(!(_loc6_ && param3))
            {
               if(!(_loc6_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§3!8§;
      }
      
      public function get height() : int
      {
         return this.§0!Q§;
      }
   }
}
