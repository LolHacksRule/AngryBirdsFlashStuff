package starling.events
{
   import §7H§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §'C§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const § H§:String = "triggered";
      
      public static const §[!G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §%!W§:String = "removeFromJuggler";
       
      
      private var §+F§:EventDispatcher;
      
      private var §0t§:EventDispatcher;
      
      private var §;!L§:String;
      
      private var §!,§:Boolean;
      
      private var §]!T§:Boolean;
      
      private var §#4§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§;!L§ = param1;
         this.§!,§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§]!T§ = true;
      }
      
      public function §@J§() : void
      {
         this.§#4§ = true;
         this.§]!T§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;!L§,this.§!,§);
      }
      
      function §<!1§(param1:EventDispatcher) : void
      {
         this.§+F§ = param1;
      }
      
      function §;!;§(param1:EventDispatcher) : void
      {
         this.§0t§ = param1;
      }
      
      function get §]!W§() : Boolean
      {
         return this.§]!T§;
      }
      
      function get §^X§() : Boolean
      {
         return this.§#4§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!,§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+F§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§0t§;
      }
      
      public function get type() : String
      {
         return this.§;!L§;
      }
   }
}
