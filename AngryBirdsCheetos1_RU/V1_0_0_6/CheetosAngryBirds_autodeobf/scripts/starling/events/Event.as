package starling.events
{
   import §9!V§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §6Y§:String = "removed";
      
      public static const §+9§:String = "removedFromStage";
      
      public static const §'!<§:String = "triggered";
      
      public static const §4j§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<P§:String = "removeFromJuggler";
       
      
      private var §+S§:EventDispatcher;
      
      private var §7J§:EventDispatcher;
      
      private var §#!S§:String;
      
      private var §0!Z§:Boolean;
      
      private var §'!Y§:Boolean;
      
      private var §3!X§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§#!S§ = param1;
         this.§0!Z§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§'!Y§ = true;
      }
      
      public function §;!B§() : void
      {
         this.§3!X§ = true;
         this.§'!Y§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§#!S§,this.§0!Z§);
      }
      
      function §#W§(param1:EventDispatcher) : void
      {
         this.§+S§ = param1;
      }
      
      function §%z§(param1:EventDispatcher) : void
      {
         this.§7J§ = param1;
      }
      
      function get §[^§() : Boolean
      {
         return this.§'!Y§;
      }
      
      function get §"!§() : Boolean
      {
         return this.§3!X§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§0!Z§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+S§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§7J§;
      }
      
      public function get type() : String
      {
         return this.§#!S§;
      }
   }
}
