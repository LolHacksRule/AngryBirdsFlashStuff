package starling.events
{
   import §=9§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §"!f§:String = "removed";
      
      public static const §=!S§:String = "removedFromStage";
      
      public static const §;!_§:String = "triggered";
      
      public static const §6!a§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §9Y§:String = "removeFromJuggler";
       
      
      private var §'Q§:EventDispatcher;
      
      private var §?!&§:EventDispatcher;
      
      private var §>A§:String;
      
      private var §-3§:Boolean;
      
      private var §#y§:Boolean;
      
      private var §#G§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§>A§ = param1;
         this.§-3§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§#y§ = true;
      }
      
      public function §5W§() : void
      {
         this.§#G§ = true;
         this.§#y§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§>A§,this.§-3§);
      }
      
      function §&z§(param1:EventDispatcher) : void
      {
         this.§'Q§ = param1;
      }
      
      function §1!+§(param1:EventDispatcher) : void
      {
         this.§?!&§ = param1;
      }
      
      function get §<U§() : Boolean
      {
         return this.§#y§;
      }
      
      function get §&!R§() : Boolean
      {
         return this.§#G§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§-3§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§'Q§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§?!&§;
      }
      
      public function get type() : String
      {
         return this.§>A§;
      }
   }
}
