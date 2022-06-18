package starling.events
{
   import §8j§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §[B§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §?§:String = "triggered";
      
      public static const §#!6§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §]I§:String = "removeFromJuggler";
       
      
      private var §&P§:EventDispatcher;
      
      private var §!2§:EventDispatcher;
      
      private var §3]§:String;
      
      private var §9%§:Boolean;
      
      private var §,@§:Boolean;
      
      private var §0%§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§3]§ = param1;
         this.§9%§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§,@§ = true;
      }
      
      public function §>H§() : void
      {
         this.§0%§ = true;
         this.§,@§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§3]§,this.§9%§);
      }
      
      function §!t§(param1:EventDispatcher) : void
      {
         this.§&P§ = param1;
      }
      
      function §%!E§(param1:EventDispatcher) : void
      {
         this.§!2§ = param1;
      }
      
      function get §2H§() : Boolean
      {
         return this.§,@§;
      }
      
      function get §1D§() : Boolean
      {
         return this.§0%§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§9%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&P§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§!2§;
      }
      
      public function get type() : String
      {
         return this.§3]§;
      }
   }
}
