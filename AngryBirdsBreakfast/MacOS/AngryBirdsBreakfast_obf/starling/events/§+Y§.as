package starling.events
{
   public class §+Y§ extends Event
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
      
      private var §<`§:int;
      
      private var §#!A§:int;
      
      public function §+Y§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param4);
         }
         do
         {
            this.§<`§ = param2;
            do
            {
               this.§#!A§ = param3;
            }
            while(!(_loc6_ || param1));
            
         }
         while(!(_loc6_ || param1));
         
      }
      
      public function get width() : int
      {
         return this.§<`§;
      }
      
      public function get height() : int
      {
         return this.§#!A§;
      }
   }
}
