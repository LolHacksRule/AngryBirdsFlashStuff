package starling.events
{
   import §^!^§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §-,§:String = "removed";
      
      public static const §>@§:String = "removedFromStage";
      
      public static const §,m§:String = "triggered";
      
      public static const §3o§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §2"$§:String = "removeFromJuggler";
       
      
      private var §!N§:EventDispatcher;
      
      private var §2I§:EventDispatcher;
      
      private var §#!-§:String;
      
      private var §2'§:Boolean;
      
      private var §]!I§:Boolean;
      
      private var §try §:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§#!-§ = param1;
         this.§2'§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§]!I§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§try § = true;
         this.§]!I§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§#!-§,this.§2'§);
      }
      
      function §>"-§(param1:EventDispatcher) : void
      {
         this.§!N§ = param1;
      }
      
      function §-I§(param1:EventDispatcher) : void
      {
         this.§2I§ = param1;
      }
      
      function get §[x§() : Boolean
      {
         return this.§]!I§;
      }
      
      function get §,"!§() : Boolean
      {
         return this.§try §;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2'§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§!N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2I§;
      }
      
      public function get type() : String
      {
         return this.§#!-§;
      }
   }
}
