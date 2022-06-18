package starling.events
{
   import §@!E§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § !E§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §4w§:String = "triggered";
      
      public static const §^1§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'!-§:String = "removeFromJuggler";
       
      
      private var §?!<§:EventDispatcher;
      
      private var §"m§:EventDispatcher;
      
      private var §[`§:String;
      
      private var §]!§:Boolean;
      
      private var §5!;§:Boolean;
      
      private var §1!,§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§[`§ = param1;
         this.§]!§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§5!;§ = true;
      }
      
      public function §4!-§() : void
      {
         this.§1!,§ = true;
         this.§5!;§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[`§,this.§]!§);
      }
      
      function § <§(param1:EventDispatcher) : void
      {
         this.§?!<§ = param1;
      }
      
      function §@;§(param1:EventDispatcher) : void
      {
         this.§"m§ = param1;
      }
      
      function get §]M§() : Boolean
      {
         return this.§5!;§;
      }
      
      function get §`2§() : Boolean
      {
         return this.§1!,§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§]!§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§?!<§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"m§;
      }
      
      public function get type() : String
      {
         return this.§[`§;
      }
   }
}
