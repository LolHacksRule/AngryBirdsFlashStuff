package starling.events
{
   import §_-UD§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-VT§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §_-fg§:String = "triggered";
      
      public static const §_-YD§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §_-rC§:String = "removeFromJuggler";
       
      
      private var §_-EY§:EventDispatcher;
      
      private var §_-Yb§:EventDispatcher;
      
      private var §_-kV§:String;
      
      private var §_-Be§:Boolean;
      
      private var §_-2o§:Boolean;
      
      private var §_-ZY§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-kV§ = param1;
         this.§_-Be§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-2o§ = true;
      }
      
      public function §_-Iu§() : void
      {
         this.§_-ZY§ = true;
         this.§_-2o§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-kV§,this.§_-Be§);
      }
      
      function §_-dc§(param1:EventDispatcher) : void
      {
         this.§_-EY§ = param1;
      }
      
      function §_-j5§(param1:EventDispatcher) : void
      {
         this.§_-Yb§ = param1;
      }
      
      function get §_-AR§() : Boolean
      {
         return this.§_-2o§;
      }
      
      function get §_-sM§() : Boolean
      {
         return this.§_-ZY§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-Be§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-EY§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-Yb§;
      }
      
      public function get type() : String
      {
         return this.§_-kV§;
      }
   }
}
