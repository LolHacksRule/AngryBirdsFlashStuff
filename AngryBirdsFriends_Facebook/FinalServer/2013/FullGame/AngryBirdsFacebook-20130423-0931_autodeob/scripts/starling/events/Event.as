package starling.events
{
   import §!=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,"W§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §7z§:String = "triggered";
      
      public static const §1!`§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'J§:String = "removeFromJuggler";
       
      
      private var §1"'§:EventDispatcher;
      
      private var §5"Q§:EventDispatcher;
      
      private var §'!'§:String;
      
      private var §'!%§:Boolean;
      
      private var §>r§:Boolean;
      
      private var §2!A§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§'!'§ = param1;
         this.§'!%§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>r§ = true;
      }
      
      public function §,"J§() : void
      {
         this.§2!A§ = true;
         this.§>r§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'!'§,this.§'!%§);
      }
      
      function §#O§(param1:EventDispatcher) : void
      {
         this.§1"'§ = param1;
      }
      
      function §''§(param1:EventDispatcher) : void
      {
         this.§5"Q§ = param1;
      }
      
      function get §#p§() : Boolean
      {
         return this.§>r§;
      }
      
      function get §2"U§() : Boolean
      {
         return this.§2!A§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'!%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§1"'§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§5"Q§;
      }
      
      public function get type() : String
      {
         return this.§'!'§;
      }
   }
}
