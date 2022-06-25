package starling.events
{
   public class §+!R§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            RESIZE = "resize";
         }
      }
      
      private var §,<§:int;
      
      private var §5,§:int;
      
      public function §+!R§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param4);
            while(true)
            {
               this.§,<§ = param2;
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     this.§5,§ = param3;
                     if(!_loc6_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function get width() : int
      {
         return this.§,<§;
      }
      
      public function get height() : int
      {
         return this.§5,§;
      }
   }
}
