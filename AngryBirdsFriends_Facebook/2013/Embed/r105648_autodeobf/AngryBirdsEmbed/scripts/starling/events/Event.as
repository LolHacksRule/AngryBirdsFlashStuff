package starling.events
{
   import §`8§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §8H§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<J§:String = "triggered";
      
      public static const §9d§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §!q§:String = "removeFromJuggler";
       
      
      private var §4!-§:EventDispatcher;
      
      private var §=<§:EventDispatcher;
      
      private var §`_§:String;
      
      private var §`T§:Boolean;
      
      private var § y§:Boolean;
      
      private var §0M§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§`_§ = param1;
         this.§`T§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§ y§ = true;
      }
      
      public function §,!4§() : void
      {
         this.§0M§ = true;
         this.§ y§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`_§,this.§`T§);
      }
      
      function §=B§(param1:EventDispatcher) : void
      {
         this.§4!-§ = param1;
      }
      
      function §]!1§(param1:EventDispatcher) : void
      {
         this.§=<§ = param1;
      }
      
      function get §@!1§() : Boolean
      {
         return this.§ y§;
      }
      
      function get §?0§() : Boolean
      {
         return this.§0M§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`T§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§4!-§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=<§;
      }
      
      public function get type() : String
      {
         return this.§`_§;
      }
   }
}
