package starling.events
{
   public class §8$§ extends Event
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
      
      private var §",§:int;
      
      private var §%"0§:int;
      
      public function §8$§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param4);
            while(true)
            {
               this.§",§ = param2;
               loop1:
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     this.§%"0§ = param3;
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get width() : int
      {
         return this.§",§;
      }
      
      public function get height() : int
      {
         return this.§%"0§;
      }
   }
}
