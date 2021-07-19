package starling.events
{
   public class §%S§ extends Event
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
      
      private var §?!#§:int;
      
      private var §26§:int;
      
      public function §%S§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param4);
         }
         do
         {
            this.§?!#§ = param2;
            do
            {
               this.§26§ = param3;
            }
            while(!(_loc6_ || this));
            
         }
         while(!_loc6_);
         
      }
      
      public function get width() : int
      {
         return this.§?!#§;
      }
      
      public function get height() : int
      {
         return this.§26§;
      }
   }
}
