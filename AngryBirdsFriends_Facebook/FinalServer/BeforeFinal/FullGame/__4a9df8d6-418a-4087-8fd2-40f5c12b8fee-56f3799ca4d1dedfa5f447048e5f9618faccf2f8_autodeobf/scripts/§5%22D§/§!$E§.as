package §5"D§
{
   import flash.events.Event;
   
   public class §!$E§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §<!C§:int;
      
      public function §!$E§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§<!C§ = param2;
      }
      
      public function get state() : int
      {
         return this.§<!C§;
      }
   }
}
