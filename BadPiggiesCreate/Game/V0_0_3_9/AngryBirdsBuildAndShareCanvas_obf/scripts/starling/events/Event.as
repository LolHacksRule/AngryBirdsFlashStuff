package starling.events
{
   import §+M§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § !h§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §[!B§:String = "triggered";
      
      public static const §>-§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §5F§:String = "removeFromJuggler";
       
      
      private var §9#§:EventDispatcher;
      
      private var §'G§:EventDispatcher;
      
      private var §[!G§:String;
      
      private var §=R§:Boolean;
      
      private var §&!,§:Boolean;
      
      private var §`@§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§[!G§ = param1;
         this.§=R§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§&!,§ = true;
      }
      
      public function § !$§() : void
      {
         this.§`@§ = true;
         this.§&!,§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[!G§,this.§=R§);
      }
      
      function §-!u§(param1:EventDispatcher) : void
      {
         this.§9#§ = param1;
      }
      
      function §2!%§(param1:EventDispatcher) : void
      {
         this.§'G§ = param1;
      }
      
      function get §#!>§() : Boolean
      {
         return this.§&!,§;
      }
      
      function get §&" §() : Boolean
      {
         return this.§`@§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§=R§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§9#§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'G§;
      }
      
      public function get type() : String
      {
         return this.§[!G§;
      }
   }
}
