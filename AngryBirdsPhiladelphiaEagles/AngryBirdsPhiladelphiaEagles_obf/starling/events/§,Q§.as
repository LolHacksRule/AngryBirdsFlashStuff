package starling.events
{
   public class §,Q§ extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §,Q§)
         {
            RESIZE = "resize";
         }
      }
      
      private var §6! §:int;
      
      private var §@g§:int;
      
      public function §,Q§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param4);
            while(true)
            {
               this.§6! § = param2;
               while(_loc6_ || param1)
               {
                  this.§@g§ = param3;
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get width() : int
      {
         return this.§6! §;
      }
      
      public function get height() : int
      {
         return this.§@g§;
      }
   }
}
