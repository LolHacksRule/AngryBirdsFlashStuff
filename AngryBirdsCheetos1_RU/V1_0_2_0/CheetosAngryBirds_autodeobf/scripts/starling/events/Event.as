package starling.events
{
   import §&b§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §'j§:String = "removed";
      
      public static const §6!R§:String = "removedFromStage";
      
      public static const §#w§:String = "triggered";
      
      public static const §[y§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^5§:String = "removeFromJuggler";
       
      
      private var §8+§:EventDispatcher;
      
      private var §22§:EventDispatcher;
      
      private var §%!J§:String;
      
      private var §9!V§:Boolean;
      
      private var §7`§:Boolean;
      
      private var §%!U§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§%!J§ = param1;
         this.§9!V§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§7`§ = true;
      }
      
      public function §1!P§() : void
      {
         this.§%!U§ = true;
         this.§7`§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%!J§,this.§9!V§);
      }
      
      function §7f§(param1:EventDispatcher) : void
      {
         this.§8+§ = param1;
      }
      
      function §&!_§(param1:EventDispatcher) : void
      {
         this.§22§ = param1;
      }
      
      function get §>,§() : Boolean
      {
         return this.§7`§;
      }
      
      function get §2q§() : Boolean
      {
         return this.§%!U§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§9!V§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8+§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§22§;
      }
      
      public function get type() : String
      {
         return this.§%!J§;
      }
   }
}
