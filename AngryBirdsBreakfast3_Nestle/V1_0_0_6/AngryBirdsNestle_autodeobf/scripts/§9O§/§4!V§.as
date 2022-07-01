package §9O§
{
   import flash.events.Event;
   
   public class §4!V§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §0u§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §'!Z§:String = "go_to_state";
      
      public static const §!n§:String = "disable_complete";
       
      
      public var §<e§:String;
      
      public function §4!V§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§<e§ = param2;
      }
   }
}
