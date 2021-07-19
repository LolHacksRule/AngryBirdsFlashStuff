package starling.events
{
   public class §0!]§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §<!f§:int;
      
      private var §8>§:int;
      
      public function §0!]§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param4);
         }
         while(true)
         {
            this.§<!f§ = param2;
            while(!(_loc6_ && param3))
            {
               this.§8>§ = param3;
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function get width() : int
      {
         return this.§<!f§;
      }
      
      public function get height() : int
      {
         return this.§8>§;
      }
   }
}
