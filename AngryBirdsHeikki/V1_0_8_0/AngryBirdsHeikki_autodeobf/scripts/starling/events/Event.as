package starling.events
{
   import §6K§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §-j§:String = "removed";
      
      public static const §,_§:String = "removedFromStage";
      
      public static const §4!-§:String = "triggered";
      
      public static const §5!2§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §@j§:String = "removeFromJuggler";
       
      
      private var §8j§:EventDispatcher;
      
      private var §7!6§:EventDispatcher;
      
      private var §<!#§:String;
      
      private var §<y§:Boolean;
      
      private var §9n§:Boolean;
      
      private var §6I§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§<!#§ = param1;
         this.§<y§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§9n§ = true;
      }
      
      public function §<!"§() : void
      {
         this.§6I§ = true;
         this.§9n§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§<!#§,this.§<y§);
      }
      
      function §@m§(param1:EventDispatcher) : void
      {
         this.§8j§ = param1;
      }
      
      function §6!M§(param1:EventDispatcher) : void
      {
         this.§7!6§ = param1;
      }
      
      function get §%!_§() : Boolean
      {
         return this.§9n§;
      }
      
      function get §%!;§() : Boolean
      {
         return this.§6I§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§<y§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8j§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§7!6§;
      }
      
      public function get type() : String
      {
         return this.§<!#§;
      }
   }
}
