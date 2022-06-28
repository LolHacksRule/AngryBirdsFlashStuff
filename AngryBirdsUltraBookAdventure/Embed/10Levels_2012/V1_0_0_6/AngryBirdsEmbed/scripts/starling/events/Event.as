package starling.events
{
   import §,G§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §[Q§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §7!,§:String = "triggered";
      
      public static const §02§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^#§:String = "removeFromJuggler";
       
      
      private var §#B§:EventDispatcher;
      
      private var §&@§:EventDispatcher;
      
      private var §[!+§:String;
      
      private var §8v§:Boolean;
      
      private var §7n§:Boolean;
      
      private var §#!7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§[!+§ = param1;
         this.§8v§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§7n§ = true;
      }
      
      public function §=p§() : void
      {
         this.§#!7§ = true;
         this.§7n§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[!+§,this.§8v§);
      }
      
      function §#^§(param1:EventDispatcher) : void
      {
         this.§#B§ = param1;
      }
      
      function §%!C§(param1:EventDispatcher) : void
      {
         this.§&@§ = param1;
      }
      
      function get §3!%§() : Boolean
      {
         return this.§7n§;
      }
      
      function get §>^§() : Boolean
      {
         return this.§#!7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§8v§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§#B§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§&@§;
      }
      
      public function get type() : String
      {
         return this.§[!+§;
      }
   }
}
