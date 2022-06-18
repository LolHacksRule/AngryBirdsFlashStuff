package starling.events
{
   import §@u§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §43§:String = "removed";
      
      public static const §;!5§:String = "removedFromStage";
      
      public static const §^s§:String = "triggered";
      
      public static const §%!Q§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §,V§:String = "removeFromJuggler";
       
      
      private var §>M§:EventDispatcher;
      
      private var §"!Q§:EventDispatcher;
      
      private var §&1§:String;
      
      private var §#h§:Boolean;
      
      private var §>N§:Boolean;
      
      private var §0!D§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§&1§ = param1;
         this.§#h§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>N§ = true;
      }
      
      public function §5!D§() : void
      {
         this.§0!D§ = true;
         this.§>N§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§&1§,this.§#h§);
      }
      
      function §"!I§(param1:EventDispatcher) : void
      {
         this.§>M§ = param1;
      }
      
      function §?g§(param1:EventDispatcher) : void
      {
         this.§"!Q§ = param1;
      }
      
      function get §;!"§() : Boolean
      {
         return this.§>N§;
      }
      
      function get §4N§() : Boolean
      {
         return this.§0!D§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§#h§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§>M§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"!Q§;
      }
      
      public function get type() : String
      {
         return this.§&1§;
      }
   }
}
