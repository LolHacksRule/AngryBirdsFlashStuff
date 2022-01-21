package starling.events
{
   import §'!>§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §#A§:String = "removed";
      
      public static const §@!-§:String = "removedFromStage";
      
      public static const §3E§:String = "triggered";
      
      public static const §'D§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §#3§:String = "removeFromJuggler";
       
      
      private var §]A§:EventDispatcher;
      
      private var §^P§:EventDispatcher;
      
      private var §4!O§:String;
      
      private var §]!I§:Boolean;
      
      private var §9I§:Boolean;
      
      private var §3W§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§4!O§ = param1;
         this.§]!I§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§9I§ = true;
      }
      
      public function §;p§() : void
      {
         this.§3W§ = true;
         this.§9I§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§4!O§,this.§]!I§);
      }
      
      function §%]§(param1:EventDispatcher) : void
      {
         this.§]A§ = param1;
      }
      
      function §"!e§(param1:EventDispatcher) : void
      {
         this.§^P§ = param1;
      }
      
      function get §;!,§() : Boolean
      {
         return this.§9I§;
      }
      
      function get §[![§() : Boolean
      {
         return this.§3W§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§]!I§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§]A§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^P§;
      }
      
      public function get type() : String
      {
         return this.§4!O§;
      }
   }
}
