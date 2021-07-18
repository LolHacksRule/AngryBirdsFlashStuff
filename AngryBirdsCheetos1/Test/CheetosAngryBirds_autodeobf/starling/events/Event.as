package starling.events
{
   import §4v§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4![§:String = "removed";
      
      public static const §0!Q§:String = "removedFromStage";
      
      public static const §>!M§:String = "triggered";
      
      public static const §^!U§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §8v§:String = "removeFromJuggler";
       
      
      private var §[!W§:EventDispatcher;
      
      private var §=!1§:EventDispatcher;
      
      private var § !H§:String;
      
      private var §@`§:Boolean;
      
      private var §##§:Boolean;
      
      private var §=A§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§ !H§ = param1;
         this.§@`§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§##§ = true;
      }
      
      public function §"!a§() : void
      {
         this.§=A§ = true;
         this.§##§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§ !H§,this.§@`§);
      }
      
      function §4!E§(param1:EventDispatcher) : void
      {
         this.§[!W§ = param1;
      }
      
      function §"!>§(param1:EventDispatcher) : void
      {
         this.§=!1§ = param1;
      }
      
      function get §-!^§() : Boolean
      {
         return this.§##§;
      }
      
      function get §<!b§() : Boolean
      {
         return this.§=A§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§@`§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§[!W§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=!1§;
      }
      
      public function get type() : String
      {
         return this.§ !H§;
      }
   }
}
