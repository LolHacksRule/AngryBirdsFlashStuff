package starling.events
{
   import §^!L§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §^!W§:String = "removed";
      
      public static const §``§:String = "removedFromStage";
      
      public static const § true§:String = "triggered";
      
      public static const §@!O§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §?s§:String = "removeFromJuggler";
       
      
      private var §0!C§:EventDispatcher;
      
      private var §'!T§:EventDispatcher;
      
      private var §^;§:String;
      
      private var §-!]§:Boolean;
      
      private var §;!=§:Boolean;
      
      private var §^f§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§^;§ = param1;
         this.§-!]§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§;!=§ = true;
      }
      
      public function §0!B§() : void
      {
         this.§^f§ = true;
         this.§;!=§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§^;§,this.§-!]§);
      }
      
      function §5!M§(param1:EventDispatcher) : void
      {
         this.§0!C§ = param1;
      }
      
      function §<j§(param1:EventDispatcher) : void
      {
         this.§'!T§ = param1;
      }
      
      function get §!I§() : Boolean
      {
         return this.§;!=§;
      }
      
      function get §-#§() : Boolean
      {
         return this.§^f§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§-!]§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§0!C§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'!T§;
      }
      
      public function get type() : String
      {
         return this.§^;§;
      }
   }
}
