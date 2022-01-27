package starling.events
{
   import §;!F§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §-'§:String = "removed";
      
      public static const §>!^§:String = "removedFromStage";
      
      public static const §,!5§:String = "triggered";
      
      public static const §[P§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §?!E§:String = "removeFromJuggler";
       
      
      private var §2[§:EventDispatcher;
      
      private var §"!C§:EventDispatcher;
      
      private var §<]§:String;
      
      private var §7`§:Boolean;
      
      private var §5I§:Boolean;
      
      private var §@!G§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§<]§ = param1;
         this.§7`§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§5I§ = true;
      }
      
      public function §"-§() : void
      {
         this.§@!G§ = true;
         this.§5I§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§<]§,this.§7`§);
      }
      
      function §<!P§(param1:EventDispatcher) : void
      {
         this.§2[§ = param1;
      }
      
      function static(param1:EventDispatcher) : void
      {
         this.§"!C§ = param1;
      }
      
      function get §?!-§() : Boolean
      {
         return this.§5I§;
      }
      
      function get §2i§() : Boolean
      {
         return this.§@!G§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§7`§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§2[§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"!C§;
      }
      
      public function get type() : String
      {
         return this.§<]§;
      }
   }
}
