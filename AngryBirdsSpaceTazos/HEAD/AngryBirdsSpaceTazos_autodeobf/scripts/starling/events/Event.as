package starling.events
{
   import §6!5§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §%!V§:String = "removed";
      
      public static const §&!S§:String = "removedFromStage";
      
      public static const §5D§:String = "triggered";
      
      public static const §#!W§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §#!B§:String = "removeFromJuggler";
       
      
      private var §4!v§:EventDispatcher;
      
      private var §0!y§:EventDispatcher;
      
      private var §'!$§:String;
      
      private var §[!z§:Boolean;
      
      private var §>>§:Boolean;
      
      private var §^!R§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§'!$§ = param1;
         this.§[!z§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>>§ = true;
      }
      
      public function §!"%§() : void
      {
         this.§^!R§ = true;
         this.§>>§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'!$§,this.§[!z§);
      }
      
      function §!! §(param1:EventDispatcher) : void
      {
         this.§4!v§ = param1;
      }
      
      function §-!%§(param1:EventDispatcher) : void
      {
         this.§0!y§ = param1;
      }
      
      function get §^!"§() : Boolean
      {
         return this.§>>§;
      }
      
      function get §9E§() : Boolean
      {
         return this.§^!R§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§[!z§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§4!v§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§0!y§;
      }
      
      public function get type() : String
      {
         return this.§'!$§;
      }
   }
}
