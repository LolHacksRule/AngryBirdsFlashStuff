package §`"%§
{
   import flash.events.Event;
   
   public class §"!4§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §!#B§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §@L§:String = "go_to_state";
      
      public static const § z§:String = "disable_complete";
       
      
      public var §^"y§:String;
      
      public function §"!4§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§^"y§ = param2;
      }
   }
}
