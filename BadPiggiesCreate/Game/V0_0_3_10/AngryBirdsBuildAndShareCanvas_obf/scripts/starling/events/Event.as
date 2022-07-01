package starling.events
{
   import §="#§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §%!]§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §#! §:String = "triggered";
      
      public static const §0!u§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §7d§:String = "removeFromJuggler";
       
      
      private var §<6§:EventDispatcher;
      
      private var §1$§:EventDispatcher;
      
      private var §5!d§:String;
      
      private var §2!H§:Boolean;
      
      private var §[s§:Boolean;
      
      private var § !r§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§5!d§ = param1;
         this.§2!H§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§[s§ = true;
      }
      
      public function §["5§() : void
      {
         this.§ !r§ = true;
         this.§[s§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§5!d§,this.§2!H§);
      }
      
      function §<T§(param1:EventDispatcher) : void
      {
         this.§<6§ = param1;
      }
      
      function §"%§(param1:EventDispatcher) : void
      {
         this.§1$§ = param1;
      }
      
      function get §18§() : Boolean
      {
         return this.§[s§;
      }
      
      function get §6!R§() : Boolean
      {
         return this.§ !r§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!H§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§<6§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§1$§;
      }
      
      public function get type() : String
      {
         return this.§5!d§;
      }
   }
}
