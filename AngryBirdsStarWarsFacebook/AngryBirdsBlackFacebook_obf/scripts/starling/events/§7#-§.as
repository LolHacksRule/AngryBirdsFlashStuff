package starling.events
{
   public class §7#-§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            RESIZE = "resize";
         }
      }
      
      private var §6"?§:int;
      
      private var §[!4§:int;
      
      public function §7#-§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param4);
         }
         do
         {
            this.§6"?§ = param2;
            do
            {
               this.§[!4§ = param3;
            }
            while(_loc6_ && param1);
            
         }
         while(_loc6_ && param3);
         
      }
      
      public function get width() : int
      {
         return this.§6"?§;
      }
      
      public function get height() : int
      {
         return this.§[!4§;
      }
   }
}
