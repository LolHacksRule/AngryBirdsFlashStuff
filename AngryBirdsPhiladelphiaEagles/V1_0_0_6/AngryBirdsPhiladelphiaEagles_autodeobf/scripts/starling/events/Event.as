package starling.events
{
   import §7G§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@L§:String = "removed";
      
      public static const §4#§:String = "removedFromStage";
      
      public static const §#?§:String = "triggered";
      
      public static const §'9§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §9Y§:String = "removeFromJuggler";
       
      
      private var §6!-§:EventDispatcher;
      
      private var §=T§:EventDispatcher;
      
      private var §5!9§:String;
      
      private var §0W§:Boolean;
      
      private var §=!H§:Boolean;
      
      private var §73§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§5!9§ = param1;
         this.§0W§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§=!H§ = true;
      }
      
      public function §=!D§() : void
      {
         this.§73§ = true;
         this.§=!H§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§5!9§,this.§0W§);
      }
      
      function §5-§(param1:EventDispatcher) : void
      {
         this.§6!-§ = param1;
      }
      
      function §+T§(param1:EventDispatcher) : void
      {
         this.§=T§ = param1;
      }
      
      function get §^!;§() : Boolean
      {
         return this.§=!H§;
      }
      
      function get §'v§() : Boolean
      {
         return this.§73§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§0W§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§6!-§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=T§;
      }
      
      public function get type() : String
      {
         return this.§5!9§;
      }
   }
}
