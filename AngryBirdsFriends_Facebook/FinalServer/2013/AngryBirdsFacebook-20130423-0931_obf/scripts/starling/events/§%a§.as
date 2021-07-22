package starling.events
{
   public class §%a§ extends Event
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
      
      private var §,>§:int;
      
      private var §`;§:int;
      
      public function §%a§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param4);
         }
         while(true)
         {
            this.§,>§ = param2;
            while(_loc6_ || this)
            {
               this.§`;§ = param3;
               if(_loc6_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      public function get width() : int
      {
         return this.§,>§;
      }
      
      public function get height() : int
      {
         return this.§`;§;
      }
   }
}
