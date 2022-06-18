package starling.events
{
   import §;!,§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2j§:String = "removed";
      
      public static const §?y§:String = "removedFromStage";
      
      public static const §8!G§:String = "triggered";
      
      public static const §!O§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §7W§:String = "removeFromJuggler";
       
      
      private var §?Z§:EventDispatcher;
      
      private var §'V§:EventDispatcher;
      
      private var §[!P§:String;
      
      private var §@!1§:Boolean;
      
      private var §^!0§:Boolean;
      
      private var §0b§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§[!P§ = param1;
         this.§@!1§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§^!0§ = true;
      }
      
      public function §8!`§() : void
      {
         this.§0b§ = true;
         this.§^!0§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[!P§,this.§@!1§);
      }
      
      function §@F§(param1:EventDispatcher) : void
      {
         this.§?Z§ = param1;
      }
      
      function §+X§(param1:EventDispatcher) : void
      {
         this.§'V§ = param1;
      }
      
      function get §<<§() : Boolean
      {
         return this.§^!0§;
      }
      
      function get §7C§() : Boolean
      {
         return this.§0b§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§@!1§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§?Z§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'V§;
      }
      
      public function get type() : String
      {
         return this.§[!P§;
      }
   }
}
