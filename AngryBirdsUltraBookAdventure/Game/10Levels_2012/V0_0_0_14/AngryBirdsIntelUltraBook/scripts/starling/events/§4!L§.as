package starling.events
{
   public class §4!L§ extends Event
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
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      public function §4!L§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param4);
            while(true)
            {
               this.§>!D§ = param2;
               while(!_loc5_)
               {
                  this.§7!3§ = param3;
                  if(!_loc5_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function get width() : int
      {
         return this.§>!D§;
      }
      
      public function get height() : int
      {
         return this.§7!3§;
      }
   }
}
