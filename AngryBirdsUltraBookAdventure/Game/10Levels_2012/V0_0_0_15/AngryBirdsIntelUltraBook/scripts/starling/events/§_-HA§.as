package starling.events
{
   public class §_-HA§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-HA§)
         {
            RESIZE = "resize";
         }
      }
      
      private var §_-ux§:int;
      
      private var §_-09f§:int;
      
      public function §_-HA§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param4);
            do
            {
               this.§_-ux§ = param2;
               do
               {
                  this.§_-09f§ = param3;
               }
               while(_loc6_ && this);
               
            }
            while(_loc6_ && param3);
            
         }
      }
      
      public function get width() : int
      {
         return this.§_-ux§;
      }
      
      public function get height() : int
      {
         return this.§_-09f§;
      }
   }
}
