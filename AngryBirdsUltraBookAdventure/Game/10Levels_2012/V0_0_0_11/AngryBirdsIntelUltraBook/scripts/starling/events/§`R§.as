package starling.events
{
   public class §`R§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(_loc5_ || param1)
         {
            super(param1,param4);
         }
         while(true)
         {
            this.§[v§ = param2;
            while(_loc5_ || param1)
            {
               this.§5%§ = param3;
               if(!(_loc6_ && this))
               {
                  return;
               }
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
