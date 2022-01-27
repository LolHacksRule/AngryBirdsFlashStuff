package starling.events
{
   import §"=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §8H§:String = "removed";
      
      public static const §7!B§:String = "removedFromStage";
      
      public static const § !F§:String = "triggered";
      
      public static const §9l§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §4f§:String = "removeFromJuggler";
       
      
      private var §2Z§:EventDispatcher;
      
      private var §`X§:EventDispatcher;
      
      private var §!,§:String;
      
      private var §+^§:Boolean;
      
      private var §;&§:Boolean;
      
      private var §4,§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§!,§ = param1;
         this.§+^§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§;&§ = true;
      }
      
      public function §do§() : void
      {
         this.§4,§ = true;
         this.§;&§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§!,§,this.§+^§);
      }
      
      function §[!P§(param1:EventDispatcher) : void
      {
         this.§2Z§ = param1;
      }
      
      function §%y§(param1:EventDispatcher) : void
      {
         this.§`X§ = param1;
      }
      
      function get §^l§() : Boolean
      {
         return this.§;&§;
      }
      
      function get §7f§() : Boolean
      {
         return this.§4,§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+^§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§2Z§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§`X§;
      }
      
      public function get type() : String
      {
         return this.§!,§;
      }
   }
}
