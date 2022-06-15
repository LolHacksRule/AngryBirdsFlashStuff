package §7"G§
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7!n§ extends Event
   {
      
      public static const §+F§:String = "AnimationComplete";
      
      public static const §?"?§:String = "AnimationStarted";
       
      
      private var §&R§:MovieClip;
      
      public function §7!n§(param1:String, param2:MovieClip, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§&R§ = param2;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&R§;
      }
   }
}
