package starling.events
{
   import §&!Z§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §<!L§:String = "removed";
      
      public static const §5!C§:String = "removedFromStage";
      
      public static const §<K§:String = "triggered";
      
      public static const §>"6§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^m§:String = "removeFromJuggler";
       
      
      private var §?!<§:EventDispatcher;
      
      private var §@"'§:EventDispatcher;
      
      private var §!k§:String;
      
      private var §`!S§:Boolean;
      
      private var §"]§:Boolean;
      
      private var §^!R§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§!k§ = param1;
         this.§`!S§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§"]§ = true;
      }
      
      public function §%!v§() : void
      {
         this.§^!R§ = true;
         this.§"]§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§!k§,this.§`!S§);
      }
      
      function §%i§(param1:EventDispatcher) : void
      {
         this.§?!<§ = param1;
      }
      
      function §'!`§(param1:EventDispatcher) : void
      {
         this.§@"'§ = param1;
      }
      
      function get §?Z§() : Boolean
      {
         return this.§"]§;
      }
      
      function get §@!"§() : Boolean
      {
         return this.§^!R§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`!S§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§?!<§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§@"'§;
      }
      
      public function get type() : String
      {
         return this.§!k§;
      }
   }
}
