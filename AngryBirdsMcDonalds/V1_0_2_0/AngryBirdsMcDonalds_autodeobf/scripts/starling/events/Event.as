package starling.events
{
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §8L§:String = "removed";
      
      public static const §>!c§:String = "removedFromStage";
      
      public static const §-8§:String = "triggered";
      
      public static const §'!^§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<x§:String = "removeFromJuggler";
       
      
      private var §3!]§:EventDispatcher;
      
      private var §[!§:EventDispatcher;
      
      private var §91§:String;
      
      private var §8!$§:Boolean;
      
      private var §4I§:Boolean;
      
      private var §-!M§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§91§ = param1;
         this.§8!$§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§4I§ = true;
      }
      
      public function §#!Z§() : void
      {
         this.§-!M§ = true;
         this.§4I§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§91§,this.§8!$§);
      }
      
      function §!!l§(param1:EventDispatcher) : void
      {
         this.§3!]§ = param1;
      }
      
      function §;4§(param1:EventDispatcher) : void
      {
         this.§[!§ = param1;
      }
      
      function get §0!F§() : Boolean
      {
         return this.§4I§;
      }
      
      function get §!4§() : Boolean
      {
         return this.§-!M§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§8!$§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§3!]§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§[!§;
      }
      
      public function get type() : String
      {
         return this.§91§;
      }
   }
}
