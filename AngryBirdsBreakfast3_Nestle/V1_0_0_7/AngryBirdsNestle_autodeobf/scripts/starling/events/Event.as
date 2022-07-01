package starling.events
{
   import §=D§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §28§:String = "removed";
      
      public static const §=!#§:String = "removedFromStage";
      
      public static const §9D§:String = "triggered";
      
      public static const §4"2§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §3!Y§:String = "removeFromJuggler";
       
      
      private var §!!0§:EventDispatcher;
      
      private var §0" §:EventDispatcher;
      
      private var §3d§:String;
      
      private var §=!;§:Boolean;
      
      private var §4T§:Boolean;
      
      private var §2m§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§3d§ = param1;
         this.§=!;§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§4T§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§2m§ = true;
         this.§4T§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§3d§,this.§=!;§);
      }
      
      function §#i§(param1:EventDispatcher) : void
      {
         this.§!!0§ = param1;
      }
      
      function §!5§(param1:EventDispatcher) : void
      {
         this.§0" § = param1;
      }
      
      function get §=T§() : Boolean
      {
         return this.§4T§;
      }
      
      function get §!A§() : Boolean
      {
         return this.§2m§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§=!;§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§!!0§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§0" §;
      }
      
      public function get type() : String
      {
         return this.§3d§;
      }
   }
}
