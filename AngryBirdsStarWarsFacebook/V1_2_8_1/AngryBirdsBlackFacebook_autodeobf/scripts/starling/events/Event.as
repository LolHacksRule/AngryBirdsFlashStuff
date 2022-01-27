package starling.events
{
   import §7"G§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §#"g§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §""N§:String = "triggered";
      
      public static const §-"=§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §8"e§:String = "removeFromJuggler";
       
      
      private var §'"§:EventDispatcher;
      
      private var §%!9§:EventDispatcher;
      
      private var §=B§:String;
      
      private var §1I§:Boolean;
      
      private var §4!3§:Boolean;
      
      private var §6"b§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§=B§ = param1;
         this.§1I§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§4!3§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§6"b§ = true;
         this.§4!3§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§=B§,this.§1I§);
      }
      
      function §[V§(param1:EventDispatcher) : void
      {
         this.§'"§ = param1;
      }
      
      function §["`§(param1:EventDispatcher) : void
      {
         this.§%!9§ = param1;
      }
      
      function get §-6§() : Boolean
      {
         return this.§4!3§;
      }
      
      function get §4"u§() : Boolean
      {
         return this.§6"b§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§1I§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§'"§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§%!9§;
      }
      
      public function get type() : String
      {
         return this.§=B§;
      }
   }
}
