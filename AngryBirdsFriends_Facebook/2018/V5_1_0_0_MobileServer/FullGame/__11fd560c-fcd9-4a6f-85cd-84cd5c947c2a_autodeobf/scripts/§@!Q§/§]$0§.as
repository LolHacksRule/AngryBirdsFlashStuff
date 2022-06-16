package §@!Q§
{
   import flash.events.Event;
   
   public class §]$0§ extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var §+a§:int;
      
      public function §]$0§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+a§ = param2;
      }
      
      public function get state() : int
      {
         return this.§+a§;
      }
   }
}
