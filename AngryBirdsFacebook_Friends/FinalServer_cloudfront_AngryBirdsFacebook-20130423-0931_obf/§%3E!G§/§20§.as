package §>!G§
{
   import flash.events.Event;
   
   public class §20§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            STATE_CHANGED = "STATE_CHANGED";
         }
      }
      
      private var §;E§:int;
      
      public function §20§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§;E§ = param2;
         }
         while(!_loc6_);
         
      }
      
      public function get state() : int
      {
         return this.§;E§;
      }
   }
}
