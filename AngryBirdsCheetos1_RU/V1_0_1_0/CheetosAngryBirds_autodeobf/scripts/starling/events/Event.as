package starling.events
{
   import §%W§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §<7§:String = "removed";
      
      public static const §;c§:String = "removedFromStage";
      
      public static const §,3§:String = "triggered";
      
      public static const §3t§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §6w§:String = "removeFromJuggler";
       
      
      private var §&7§:EventDispatcher;
      
      private var §2!V§:EventDispatcher;
      
      private var §>!X§:String;
      
      private var §2i§:Boolean;
      
      private var §0!<§:Boolean;
      
      private var §+!U§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§>!X§ = param1;
         this.§2i§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§0!<§ = true;
      }
      
      public function §5p§() : void
      {
         this.§+!U§ = true;
         this.§0!<§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§>!X§,this.§2i§);
      }
      
      function §;S§(param1:EventDispatcher) : void
      {
         this.§&7§ = param1;
      }
      
      function §74§(param1:EventDispatcher) : void
      {
         this.§2!V§ = param1;
      }
      
      function get §'!;§() : Boolean
      {
         return this.§0!<§;
      }
      
      function get §?g§() : Boolean
      {
         return this.§+!U§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2i§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&7§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2!V§;
      }
      
      public function get type() : String
      {
         return this.§>!X§;
      }
   }
}
