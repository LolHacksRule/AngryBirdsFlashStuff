package starling.events
{
   import §@e§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § $§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §1e§:String = "triggered";
      
      public static const §!M§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §1E§:String = "removeFromJuggler";
       
      
      private var §6[§:EventDispatcher;
      
      private var §3J§:EventDispatcher;
      
      private var §1i§:String;
      
      private var §3!C§:Boolean;
      
      private var §"y§:Boolean;
      
      private var § else§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§1i§ = param1;
         this.§3!C§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§"y§ = true;
      }
      
      public function §%§() : void
      {
         this.§ else§ = true;
         this.§"y§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§1i§,this.§3!C§);
      }
      
      function §`g§(param1:EventDispatcher) : void
      {
         this.§6[§ = param1;
      }
      
      function §%$§(param1:EventDispatcher) : void
      {
         this.§3J§ = param1;
      }
      
      function get §'q§() : Boolean
      {
         return this.§"y§;
      }
      
      function get § c§() : Boolean
      {
         return this.§ else§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§3!C§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§6[§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§3J§;
      }
      
      public function get type() : String
      {
         return this.§1i§;
      }
   }
}
