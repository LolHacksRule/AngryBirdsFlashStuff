package starling.events
{
   import §+<§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §null §:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §'!]§:String = "triggered";
      
      public static const §^§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §,!c§:String = "removeFromJuggler";
       
      
      private var §;Z§:EventDispatcher;
      
      private var §<!]§:EventDispatcher;
      
      private var §4!I§:String;
      
      private var §!2§:Boolean;
      
      private var §'!-§:Boolean;
      
      private var §4k§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§4!I§ = param1;
         this.§!2§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§'!-§ = true;
      }
      
      public function §%1§() : void
      {
         this.§4k§ = true;
         this.§'!-§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§4!I§,this.§!2§);
      }
      
      function §=!#§(param1:EventDispatcher) : void
      {
         this.§;Z§ = param1;
      }
      
      function §7!Q§(param1:EventDispatcher) : void
      {
         this.§<!]§ = param1;
      }
      
      function get §%!w§() : Boolean
      {
         return this.§'!-§;
      }
      
      function get §-l§() : Boolean
      {
         return this.§4k§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!2§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§;Z§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§<!]§;
      }
      
      public function get type() : String
      {
         return this.§4!I§;
      }
   }
}
