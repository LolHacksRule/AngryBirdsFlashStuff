package starling.events
{
   import §=]§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §["f§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §>a§:String = "triggered";
      
      public static const §[#J§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §&!T§:String = "removeFromJuggler";
       
      
      private var §%!c§:EventDispatcher;
      
      private var §+#L§:EventDispatcher;
      
      private var §;"-§:String;
      
      private var §5!$§:Boolean;
      
      private var §0J§:Boolean;
      
      private var §%#§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§;"-§ = param1;
         this.§5!$§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§0J§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§%#§ = true;
         this.§0J§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;"-§,this.§5!$§);
      }
      
      function §2!`§(param1:EventDispatcher) : void
      {
         this.§%!c§ = param1;
      }
      
      function §#!s§(param1:EventDispatcher) : void
      {
         this.§+#L§ = param1;
      }
      
      function get §4'§() : Boolean
      {
         return this.§0J§;
      }
      
      function get §4!!§() : Boolean
      {
         return this.§%#§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§5!$§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§%!c§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§+#L§;
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
   }
}
