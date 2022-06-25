package starling.events
{
   public class §`R§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §[v§:int;
      
      private var §5%§:int;
      
      public function §`R§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param4);
            while(true)
            {
               this.§[v§ = param2;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§5%§ = param3;
            if(!(_loc6_ && param3))
            {
               if(!(_loc6_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§[v§;
      }
      
      public function get height() : int
      {
         return this.§5%§;
      }
   }
}
