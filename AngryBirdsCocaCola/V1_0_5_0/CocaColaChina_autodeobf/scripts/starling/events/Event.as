package starling.events
{
   import §%Q§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §7!F§:String = "removed";
      
      public static const §[!I§:String = "removedFromStage";
      
      public static const §catch§:String = "triggered";
      
      public static const §>!G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §?!V§:String = "removeFromJuggler";
       
      
      private var §9!J§:EventDispatcher;
      
      private var §2!>§:EventDispatcher;
      
      private var §+!I§:String;
      
      private var §"4§:Boolean;
      
      private var §"!-§:Boolean;
      
      private var §]!E§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§+!I§ = param1;
         this.§"4§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§"!-§ = true;
      }
      
      public function §1x§() : void
      {
         this.§]!E§ = true;
         this.§"!-§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§+!I§,this.§"4§);
      }
      
      function §'x§(param1:EventDispatcher) : void
      {
         this.§9!J§ = param1;
      }
      
      function §+!b§(param1:EventDispatcher) : void
      {
         this.§2!>§ = param1;
      }
      
      function get §>?§() : Boolean
      {
         return this.§"!-§;
      }
      
      function get §+C§() : Boolean
      {
         return this.§]!E§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"4§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§9!J§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2!>§;
      }
      
      public function get type() : String
      {
         return this.§+!I§;
      }
   }
}
