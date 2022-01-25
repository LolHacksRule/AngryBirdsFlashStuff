package starling.events
{
   import §@!a§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §7W§:String = "removed";
      
      public static const §,?§:String = "removedFromStage";
      
      public static const §!!5§:String = "triggered";
      
      public static const §>! §:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §`c§:String = "removeFromJuggler";
       
      
      private var §+Q§:EventDispatcher;
      
      private var §6'§:EventDispatcher;
      
      private var §;6§:String;
      
      private var §+!b§:Boolean;
      
      private var §5L§:Boolean;
      
      private var §4!C§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§;6§ = param1;
         this.§+!b§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§5L§ = true;
      }
      
      public function §3!`§() : void
      {
         this.§4!C§ = true;
         this.§5L§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;6§,this.§+!b§);
      }
      
      function §<V§(param1:EventDispatcher) : void
      {
         this.§+Q§ = param1;
      }
      
      function §0d§(param1:EventDispatcher) : void
      {
         this.§6'§ = param1;
      }
      
      function get §^!H§() : Boolean
      {
         return this.§5L§;
      }
      
      function get §"%§() : Boolean
      {
         return this.§4!C§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+!b§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+Q§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§6'§;
      }
      
      public function get type() : String
      {
         return this.§;6§;
      }
   }
}
