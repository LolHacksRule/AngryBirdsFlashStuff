package starling.events
{
   import §9![§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §38§:String = "removed";
      
      public static const §=P§:String = "removedFromStage";
      
      public static const §`!9§:String = "triggered";
      
      public static const §8L§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §]T§:String = "removeFromJuggler";
       
      
      private var §%j§:EventDispatcher;
      
      private var §<![§:EventDispatcher;
      
      private var §9!@§:String;
      
      private var §[r§:Boolean;
      
      private var §;!H§:Boolean;
      
      private var §0!U§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§9!@§ = param1;
         this.§[r§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§;!H§ = true;
      }
      
      public function §;Z§() : void
      {
         this.§0!U§ = true;
         this.§;!H§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§9!@§,this.§[r§);
      }
      
      function §3P§(param1:EventDispatcher) : void
      {
         this.§%j§ = param1;
      }
      
      function § do§(param1:EventDispatcher) : void
      {
         this.§<![§ = param1;
      }
      
      function get §for§() : Boolean
      {
         return this.§;!H§;
      }
      
      function get §%!;§() : Boolean
      {
         return this.§0!U§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§[r§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§%j§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§<![§;
      }
      
      public function get type() : String
      {
         return this.§9!@§;
      }
   }
}
