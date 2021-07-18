package starling.events
{
   import §3W§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2!v§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §"g§:String = "triggered";
      
      public static const §^n§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^8§:String = "removeFromJuggler";
       
      
      private var §;D§:EventDispatcher;
      
      private var §%">§:EventDispatcher;
      
      private var §#!W§:String;
      
      private var §!"6§:Boolean;
      
      private var §%!I§:Boolean;
      
      private var §3L§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§#!W§ = param1;
         this.§!"6§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§%!I§ = true;
      }
      
      public function §[p§() : void
      {
         this.§3L§ = true;
         this.§%!I§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§#!W§,this.§!"6§);
      }
      
      function §0'§(param1:EventDispatcher) : void
      {
         this.§;D§ = param1;
      }
      
      function §<!D§(param1:EventDispatcher) : void
      {
         this.§%">§ = param1;
      }
      
      function get §[X§() : Boolean
      {
         return this.§%!I§;
      }
      
      function get §%!9§() : Boolean
      {
         return this.§3L§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!"6§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§;D§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§%">§;
      }
      
      public function get type() : String
      {
         return this.§#!W§;
      }
   }
}
