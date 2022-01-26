package starling.events
{
   import §5L§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §`!O§:String = "removed";
      
      public static const §-<§:String = "removedFromStage";
      
      public static const §#Q§:String = "triggered";
      
      public static const §4!L§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §9!?§:String = "removeFromJuggler";
       
      
      private var §5^§:EventDispatcher;
      
      private var §5!L§:EventDispatcher;
      
      private var §-]§:String;
      
      private var §9H§:Boolean;
      
      private var §3!;§:Boolean;
      
      private var §&u§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§-]§ = param1;
         this.§9H§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§3!;§ = true;
      }
      
      public function §^Y§() : void
      {
         this.§&u§ = true;
         this.§3!;§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§-]§,this.§9H§);
      }
      
      function §#!-§(param1:EventDispatcher) : void
      {
         this.§5^§ = param1;
      }
      
      function §&!4§(param1:EventDispatcher) : void
      {
         this.§5!L§ = param1;
      }
      
      function get §9m§() : Boolean
      {
         return this.§3!;§;
      }
      
      function get §5@§() : Boolean
      {
         return this.§&u§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§9H§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§5^§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§5!L§;
      }
      
      public function get type() : String
      {
         return this.§-]§;
      }
   }
}
