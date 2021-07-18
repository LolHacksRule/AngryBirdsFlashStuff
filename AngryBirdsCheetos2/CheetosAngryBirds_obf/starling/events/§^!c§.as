package starling.events
{
   public class §^!c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            RESIZE = "resize";
         }
      }
      
      private var §]>§:int;
      
      private var §7w§:int;
      
      public function §^!c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param4);
            while(true)
            {
               this.§]>§ = param2;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§7w§ = param3;
            if(!_loc5_)
            {
               if(!(_loc5_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get width() : int
      {
         return this.§]>§;
      }
      
      public function get height() : int
      {
         return this.§7w§;
      }
   }
}
