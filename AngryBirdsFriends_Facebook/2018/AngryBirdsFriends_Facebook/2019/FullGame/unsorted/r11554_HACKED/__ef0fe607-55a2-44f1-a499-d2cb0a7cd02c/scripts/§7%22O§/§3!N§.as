package §7"O§
{
   import flash.events.Event;
   
   public class §3!N§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §0!+§:int;
      
      public function §3!N§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0!+§ = param2;
      }
      
      public function get state() : int
      {
         return this.§0!+§;
      }
   }
}
