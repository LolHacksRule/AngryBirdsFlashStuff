package starling.events
{
   import §-!%§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §`6§:String = "removed";
      
      public static const §#!1§:String = "removedFromStage";
      
      public static const §,!8§:String = "triggered";
      
      public static const §^!8§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §"!B§:String = "removeFromJuggler";
       
      
      private var §@r§:EventDispatcher;
      
      private var §!j§:EventDispatcher;
      
      private var §%@§:String;
      
      private var §0J§:Boolean;
      
      private var § y§:Boolean;
      
      private var §3!M§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§%@§ = param1;
         this.§0J§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§ y§ = true;
      }
      
      public function §?!Q§() : void
      {
         this.§3!M§ = true;
         this.§ y§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%@§,this.§0J§);
      }
      
      function §+J§(param1:EventDispatcher) : void
      {
         this.§@r§ = param1;
      }
      
      function §1! §(param1:EventDispatcher) : void
      {
         this.§!j§ = param1;
      }
      
      function get §'5§() : Boolean
      {
         return this.§ y§;
      }
      
      function get §1h§() : Boolean
      {
         return this.§3!M§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§0J§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§@r§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§!j§;
      }
      
      public function get type() : String
      {
         return this.§%@§;
      }
   }
}
