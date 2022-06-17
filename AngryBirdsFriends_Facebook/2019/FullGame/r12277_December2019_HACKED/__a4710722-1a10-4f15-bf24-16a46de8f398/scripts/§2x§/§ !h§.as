package §2x§
{
   import flash.events.Event;
   
   public class § !h§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §`"Y§:int;
      
      public function § !h§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`"Y§ = param2;
      }
      
      public function get state() : int
      {
         return this.§`"Y§;
      }
   }
}
