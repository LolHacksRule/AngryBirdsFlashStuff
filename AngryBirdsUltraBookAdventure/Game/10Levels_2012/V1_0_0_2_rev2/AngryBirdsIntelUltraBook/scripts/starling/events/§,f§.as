package starling.events
{
   public class §,f§ extends Event
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
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      public function §,f§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param4);
            while(true)
            {
               this.§'O§ = param2;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§!!A§ = param3;
            if(!(_loc5_ && this))
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§'O§;
      }
      
      public function get height() : int
      {
         return this.§!!A§;
      }
   }
}
