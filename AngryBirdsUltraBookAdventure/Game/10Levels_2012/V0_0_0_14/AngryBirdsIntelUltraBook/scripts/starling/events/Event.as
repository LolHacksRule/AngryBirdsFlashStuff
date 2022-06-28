package starling.events
{
   import §2N§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@!!§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<!!§:String = "triggered";
      
      public static const §&f§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §"!_§:String = "removeFromJuggler";
       
      
      private var §,t§:EventDispatcher;
      
      private var §`!k§:EventDispatcher;
      
      private var §2§:String;
      
      private var §+r§:Boolean;
      
      private var §>Q§:Boolean;
      
      private var §;!Q§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§2§ = param1;
         this.§+r§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>Q§ = true;
      }
      
      public function §[!+§() : void
      {
         this.§;!Q§ = true;
         this.§>Q§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§2§,this.§+r§);
      }
      
      function § 7§(param1:EventDispatcher) : void
      {
         this.§,t§ = param1;
      }
      
      function §2!N§(param1:EventDispatcher) : void
      {
         this.§`!k§ = param1;
      }
      
      function get §]A§() : Boolean
      {
         return this.§>Q§;
      }
      
      function get §-6§() : Boolean
      {
         return this.§;!Q§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+r§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§,t§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§`!k§;
      }
      
      public function get type() : String
      {
         return this.§2§;
      }
   }
}
