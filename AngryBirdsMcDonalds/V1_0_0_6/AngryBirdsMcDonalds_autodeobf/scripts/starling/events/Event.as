package starling.events
{
   import §6!J§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §+]§:String = "removed";
      
      public static const §7!X§:String = "removedFromStage";
      
      public static const §<m§:String = "triggered";
      
      public static const §!>§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §#G§:String = "removeFromJuggler";
       
      
      private var §+!N§:EventDispatcher;
      
      private var §6M§:EventDispatcher;
      
      private var §8!`§:String;
      
      private var §0D§:Boolean;
      
      private var §4!c§:Boolean;
      
      private var §#!O§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§8!`§ = param1;
         this.§0D§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§4!c§ = true;
      }
      
      public function §%!b§() : void
      {
         this.§#!O§ = true;
         this.§4!c§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§8!`§,this.§0D§);
      }
      
      function §'D§(param1:EventDispatcher) : void
      {
         this.§+!N§ = param1;
      }
      
      function §=![§(param1:EventDispatcher) : void
      {
         this.§6M§ = param1;
      }
      
      function get §6G§() : Boolean
      {
         return this.§4!c§;
      }
      
      function get §]'§() : Boolean
      {
         return this.§#!O§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§0D§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+!N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§6M§;
      }
      
      public function get type() : String
      {
         return this.§8!`§;
      }
   }
}
