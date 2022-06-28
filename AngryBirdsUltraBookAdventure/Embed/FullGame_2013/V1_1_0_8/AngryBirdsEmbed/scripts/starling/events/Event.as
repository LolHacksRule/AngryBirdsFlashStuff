package starling.events
{
   import §'j§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,6§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §>Y§:String = "triggered";
      
      public static const §0@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'D§:String = "removeFromJuggler";
       
      
      private var §@N§:EventDispatcher;
      
      private var §'!I§:EventDispatcher;
      
      private var §<"§:String;
      
      private var §4z§:Boolean;
      
      private var §+=§:Boolean;
      
      private var §9J§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§<"§ = param1;
         this.§4z§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§+=§ = true;
      }
      
      public function §&!H§() : void
      {
         this.§9J§ = true;
         this.§+=§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§<"§,this.§4z§);
      }
      
      function §'^§(param1:EventDispatcher) : void
      {
         this.§@N§ = param1;
      }
      
      function §8!I§(param1:EventDispatcher) : void
      {
         this.§'!I§ = param1;
      }
      
      function get §2S§() : Boolean
      {
         return this.§+=§;
      }
      
      function get §4n§() : Boolean
      {
         return this.§9J§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§4z§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§@N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'!I§;
      }
      
      public function get type() : String
      {
         return this.§<"§;
      }
   }
}
