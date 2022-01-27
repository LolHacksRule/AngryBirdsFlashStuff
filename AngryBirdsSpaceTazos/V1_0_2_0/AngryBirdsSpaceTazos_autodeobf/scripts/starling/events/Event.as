package starling.events
{
   import §!!a§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §%!Y§:String = "removed";
      
      public static const §[!w§:String = "removedFromStage";
      
      public static const §`!5§:String = "triggered";
      
      public static const §3"B§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §[!y§:String = "removeFromJuggler";
       
      
      private var §+!>§:EventDispatcher;
      
      private var §3!O§:EventDispatcher;
      
      private var §-!e§:String;
      
      private var §>!w§:Boolean;
      
      private var §2d§:Boolean;
      
      private var §7@§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§-!e§ = param1;
         this.§>!w§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§2d§ = true;
      }
      
      public function §&Y§() : void
      {
         this.§7@§ = true;
         this.§2d§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§-!e§,this.§>!w§);
      }
      
      function §&X§(param1:EventDispatcher) : void
      {
         this.§+!>§ = param1;
      }
      
      function §"+§(param1:EventDispatcher) : void
      {
         this.§3!O§ = param1;
      }
      
      function get §4F§() : Boolean
      {
         return this.§2d§;
      }
      
      function get §'B§() : Boolean
      {
         return this.§7@§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§>!w§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+!>§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§3!O§;
      }
      
      public function get type() : String
      {
         return this.§-!e§;
      }
   }
}
