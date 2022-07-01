package starling.events
{
   import §9!a§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §<e§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const § !Q§:String = "triggered";
      
      public static const §3!@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §@!i§:String = "removeFromJuggler";
       
      
      private var §^!X§:EventDispatcher;
      
      private var §^!+§:EventDispatcher;
      
      private var §'N§:String;
      
      private var §1#§:Boolean;
      
      private var §+O§:Boolean;
      
      private var §&!B§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§'N§ = param1;
         this.§1#§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§+O§ = true;
      }
      
      public function §?o§() : void
      {
         this.§&!B§ = true;
         this.§+O§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'N§,this.§1#§);
      }
      
      function §[!'§(param1:EventDispatcher) : void
      {
         this.§^!X§ = param1;
      }
      
      function §%P§(param1:EventDispatcher) : void
      {
         this.§^!+§ = param1;
      }
      
      function get §'!i§() : Boolean
      {
         return this.§+O§;
      }
      
      function get §[C§() : Boolean
      {
         return this.§&!B§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§1#§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§^!X§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^!+§;
      }
      
      public function get type() : String
      {
         return this.§'N§;
      }
   }
}
