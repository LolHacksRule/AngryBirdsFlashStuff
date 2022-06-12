package starling.events
{
   public class §4=§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4=§))
         {
            RESIZE = "resize";
         }
      }
      
      private var §`w§:int;
      
      private var §%m§:int;
      
      public function §4=§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param4);
            do
            {
               this.§`w§ = param2;
               do
               {
                  this.§%m§ = param3;
               }
               while(!(_loc5_ || param3));
               
            }
            while(_loc6_ && this);
            
         }
      }
      
      public function get width() : int
      {
         return this.§`w§;
      }
      
      public function get height() : int
      {
         return this.§%m§;
      }
   }
}
