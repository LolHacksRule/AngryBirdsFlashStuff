package starling.events
{
   import §'7§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,3§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §0!?§:String = "triggered";
      
      public static const §0!!§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const § Z§:String = "removeFromJuggler";
       
      
      private var §7@§:EventDispatcher;
      
      private var §-! §:EventDispatcher;
      
      private var §?!%§:String;
      
      private var §`_§:Boolean;
      
      private var §5O§:Boolean;
      
      private var §<j§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§?!%§ = param1;
         this.§`_§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§5O§ = true;
      }
      
      public function §2!8§() : void
      {
         this.§<j§ = true;
         this.§5O§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§?!%§,this.§`_§);
      }
      
      function §#s§(param1:EventDispatcher) : void
      {
         this.§7@§ = param1;
      }
      
      function §+^§(param1:EventDispatcher) : void
      {
         this.§-! § = param1;
      }
      
      function get §1v§() : Boolean
      {
         return this.§5O§;
      }
      
      function get §[$§() : Boolean
      {
         return this.§<j§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`_§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§7@§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§-! §;
      }
      
      public function get type() : String
      {
         return this.§?!%§;
      }
   }
}
