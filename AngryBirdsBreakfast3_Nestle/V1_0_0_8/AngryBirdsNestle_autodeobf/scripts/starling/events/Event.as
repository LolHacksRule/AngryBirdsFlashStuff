package starling.events
{
   import §"!t§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §49§:String = "removed";
      
      public static const §7!h§:String = "removedFromStage";
      
      public static const §@S§:String = "triggered";
      
      public static const §[!H§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §#X§:String = "removeFromJuggler";
       
      
      private var §`!a§:EventDispatcher;
      
      private var §8!u§:EventDispatcher;
      
      private var §2E§:String;
      
      private var §%!+§:Boolean;
      
      private var §%!!§:Boolean;
      
      private var §1"'§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§2E§ = param1;
         this.§%!+§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§%!!§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§1"'§ = true;
         this.§%!!§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§2E§,this.§%!+§);
      }
      
      function §,L§(param1:EventDispatcher) : void
      {
         this.§`!a§ = param1;
      }
      
      function §0!f§(param1:EventDispatcher) : void
      {
         this.§8!u§ = param1;
      }
      
      function get §#!y§() : Boolean
      {
         return this.§%!!§;
      }
      
      function get §[`§() : Boolean
      {
         return this.§1"'§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§%!+§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§`!a§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§8!u§;
      }
      
      public function get type() : String
      {
         return this.§2E§;
      }
   }
}
