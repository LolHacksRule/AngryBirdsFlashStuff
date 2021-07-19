package starling.events
{
   public class §<!"§ extends Event
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
      
      private var §!a§:int;
      
      private var §2!y§:int;
      
      public function §<!"§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param4);
         }
         while(true)
         {
            this.§!a§ = param2;
            while(!(_loc6_ && param3))
            {
               this.§2!y§ = param3;
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function get width() : int
      {
         return this.§!a§;
      }
      
      public function get height() : int
      {
         return this.§2!y§;
      }
   }
}
