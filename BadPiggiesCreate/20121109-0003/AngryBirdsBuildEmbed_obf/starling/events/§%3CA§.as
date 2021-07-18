package starling.events
{
   public class §<A§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<A§))
         {
            RESIZE = "resize";
         }
      }
      
      private var §4!L§:int;
      
      private var §"!C§:int;
      
      public function §<A§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param4);
            if(!(_loc5_ && param2))
            {
               addr45:
               this.§4!L§ = param2;
               if(_loc6_ || param2)
               {
                  this.§"!C§ = param3;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get width() : int
      {
         return this.§4!L§;
      }
      
      public function get height() : int
      {
         return this.§"!C§;
      }
   }
}
