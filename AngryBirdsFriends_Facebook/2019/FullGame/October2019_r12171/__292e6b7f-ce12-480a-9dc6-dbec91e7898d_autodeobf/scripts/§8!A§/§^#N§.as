package §8!A§
{
   import flash.events.Event;
   
   public class §^#N§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §0!5§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §8#j§:String = "go_to_state";
      
      public static const §0#T§:String = "disable_complete";
       
      
      public var §#$#§:String;
      
      public function §^#N§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§#$#§ = param2;
      }
   }
}
