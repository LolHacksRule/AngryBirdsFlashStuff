package starling.events
{
   public class §6!>§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §6!>§)
         {
            RESIZE = "resize";
         }
      }
      
      private var §?l§:int;
      
      private var §+G§:int;
      
      public function §6!>§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            while(true)
            {
               this.§?l§ = param2;
               loop1:
               while(_loc6_ || param1)
               {
                  while(true)
                  {
                     this.§+G§ = param3;
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get width() : int
      {
         return this.§?l§;
      }
      
      public function get height() : int
      {
         return this.§+G§;
      }
   }
}
