package §@!l§
{
   import flash.events.Event;
   
   public class §+!N§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §7B§:int;
      
      public function §+!N§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§7B§ = param2;
      }
      
      public function get state() : int
      {
         return this.§7B§;
      }
   }
}
