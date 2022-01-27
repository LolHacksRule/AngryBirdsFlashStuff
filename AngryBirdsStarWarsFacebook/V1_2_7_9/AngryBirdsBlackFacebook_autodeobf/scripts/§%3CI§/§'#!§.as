package §<I§
{
   import flash.events.Event;
   
   public class §'#!§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §]"U§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §8!F§:String = "go_to_state";
      
      public static const §<"T§:String = "disable_complete";
       
      
      public var §^#1§:String;
      
      public function §'#!§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§^#1§ = param2;
      }
   }
}
