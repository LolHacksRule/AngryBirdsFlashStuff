package starling.events
{
   import §>!a§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,Y§:String = "removed";
      
      public static const §#o§:String = "removedFromStage";
      
      public static const § !G§:String = "triggered";
      
      public static const §%!A§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §?i§:String = "removeFromJuggler";
       
      
      private var §6,§:EventDispatcher;
      
      private var §"f§:EventDispatcher;
      
      private var §8!4§:String;
      
      private var §[Y§:Boolean;
      
      private var §7!b§:Boolean;
      
      private var §6!1§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§8!4§ = param1;
         this.§[Y§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§7!b§ = true;
      }
      
      public function §!!+§() : void
      {
         this.§6!1§ = true;
         this.§7!b§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§8!4§,this.§[Y§);
      }
      
      function § !+§(param1:EventDispatcher) : void
      {
         this.§6,§ = param1;
      }
      
      function §!Y§(param1:EventDispatcher) : void
      {
         this.§"f§ = param1;
      }
      
      function get §-M§() : Boolean
      {
         return this.§7!b§;
      }
      
      function get §#!r§() : Boolean
      {
         return this.§6!1§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§[Y§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§6,§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"f§;
      }
      
      public function get type() : String
      {
         return this.§8!4§;
      }
   }
}
