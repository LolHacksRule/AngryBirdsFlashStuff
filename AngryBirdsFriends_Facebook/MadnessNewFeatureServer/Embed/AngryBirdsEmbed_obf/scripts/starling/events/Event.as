package starling.events
{
   import §5^§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §6!'§:String = "triggered";
      
      public static const §2V§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const § `§:String = "removeFromJuggler";
       
      
      private var §=r§:EventDispatcher;
      
      private var §2Y§:EventDispatcher;
      
      private var §"q§:String;
      
      private var §6!I§:Boolean;
      
      private var §2!F§:Boolean;
      
      private var §=!G§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§"q§ = param1;
         this.§6!I§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§2!F§ = true;
      }
      
      public function §@!4§() : void
      {
         this.§=!G§ = true;
         this.§2!F§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§"q§,this.§6!I§);
      }
      
      function §^§(param1:EventDispatcher) : void
      {
         this.§=r§ = param1;
      }
      
      function §&§(param1:EventDispatcher) : void
      {
         this.§2Y§ = param1;
      }
      
      function get §1"§() : Boolean
      {
         return this.§2!F§;
      }
      
      function get §7V§() : Boolean
      {
         return this.§=!G§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§6!I§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§=r§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2Y§;
      }
      
      public function get type() : String
      {
         return this.§"q§;
      }
   }
}
