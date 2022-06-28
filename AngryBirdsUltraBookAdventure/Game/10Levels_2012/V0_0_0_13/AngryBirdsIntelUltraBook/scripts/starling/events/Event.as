package starling.events
{
   import §8g§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § q§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<!=§:String = "triggered";
      
      public static const §0G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §-!&§:String = "removeFromJuggler";
       
      
      private var §#!+§:EventDispatcher;
      
      private var §,!d§:EventDispatcher;
      
      private var §00§:String;
      
      private var §2!%§:Boolean;
      
      private var §][§:Boolean;
      
      private var §5I§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§00§ = param1;
         this.§2!%§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§][§ = true;
      }
      
      public function §4!V§() : void
      {
         this.§5I§ = true;
         this.§][§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§00§,this.§2!%§);
      }
      
      function §,!g§(param1:EventDispatcher) : void
      {
         this.§#!+§ = param1;
      }
      
      function §`?§(param1:EventDispatcher) : void
      {
         this.§,!d§ = param1;
      }
      
      function get §>q§() : Boolean
      {
         return this.§][§;
      }
      
      function get § ;§() : Boolean
      {
         return this.§5I§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§#!+§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§,!d§;
      }
      
      public function get type() : String
      {
         return this.§00§;
      }
   }
}
