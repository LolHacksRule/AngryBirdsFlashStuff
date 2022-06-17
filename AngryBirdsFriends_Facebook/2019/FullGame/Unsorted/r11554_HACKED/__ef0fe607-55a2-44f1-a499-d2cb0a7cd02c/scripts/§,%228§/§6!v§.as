package §,"8§
{
   import flash.events.Event;
   
   public class §6!v§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §#j§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §5"R§:String = "go_to_state";
      
      public static const §7G§:String = "disable_complete";
       
      
      public var §?h§:String;
      
      public function §6!v§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?h§ = param2;
      }
   }
}
