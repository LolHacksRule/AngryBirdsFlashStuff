package §'x§
{
   import flash.events.Event;
   
   public class §=!R§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §67§:int;
      
      public function §=!R§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§67§ = param2;
      }
      
      public function get state() : int
      {
         return this.§67§;
      }
   }
}
