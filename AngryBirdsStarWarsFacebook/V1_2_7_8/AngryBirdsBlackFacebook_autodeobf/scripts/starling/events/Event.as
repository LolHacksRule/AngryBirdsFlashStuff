package starling.events
{
   import §3"e§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §0"x§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §-"_§:String = "triggered";
      
      public static const §#I§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §>!V§:String = "removeFromJuggler";
       
      
      private var §6"c§:EventDispatcher;
      
      private var §<"q§:EventDispatcher;
      
      private var §]m§:String;
      
      private var §&e§:Boolean;
      
      private var §[!x§:Boolean;
      
      private var §"!r§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§]m§ = param1;
         this.§&e§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§[!x§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§"!r§ = true;
         this.§[!x§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§]m§,this.§&e§);
      }
      
      function §"!#§(param1:EventDispatcher) : void
      {
         this.§6"c§ = param1;
      }
      
      function §6!P§(param1:EventDispatcher) : void
      {
         this.§<"q§ = param1;
      }
      
      function get §[";§() : Boolean
      {
         return this.§[!x§;
      }
      
      function get §%R§() : Boolean
      {
         return this.§"!r§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§&e§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§6"c§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§<"q§;
      }
      
      public function get type() : String
      {
         return this.§]m§;
      }
   }
}
