package starling.events
{
   import §<C§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §`=§:String = "removed";
      
      public static const §]!Z§:String = "removedFromStage";
      
      public static const §;!C§:String = "triggered";
      
      public static const §]q§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §=P§:String = "removeFromJuggler";
       
      
      private var §7!_§:EventDispatcher;
      
      private var §;!K§:EventDispatcher;
      
      private var §1!p§:String;
      
      private var §""§:Boolean;
      
      private var §^"+§:Boolean;
      
      private var §;!+§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§1!p§ = param1;
         this.§""§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§^"+§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§;!+§ = true;
         this.§^"+§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§1!p§,this.§""§);
      }
      
      function §&g§(param1:EventDispatcher) : void
      {
         this.§7!_§ = param1;
      }
      
      function §@!N§(param1:EventDispatcher) : void
      {
         this.§;!K§ = param1;
      }
      
      function get §"t§() : Boolean
      {
         return this.§^"+§;
      }
      
      function get §%G§() : Boolean
      {
         return this.§;!+§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§""§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§7!_§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§;!K§;
      }
      
      public function get type() : String
      {
         return this.§1!p§;
      }
   }
}
