package starling.events
{
   import §5!3§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §<T§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<2§:String = "triggered";
      
      public static const §@!<§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §=O§:String = "removeFromJuggler";
       
      
      private var §">§:EventDispatcher;
      
      private var §0I§:EventDispatcher;
      
      private var §>F§:String;
      
      private var §"^§:Boolean;
      
      private var §>N§:Boolean;
      
      private var §`p§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§>F§ = param1;
         this.§"^§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>N§ = true;
      }
      
      public function §[q§() : void
      {
         this.§`p§ = true;
         this.§>N§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§>F§,this.§"^§);
      }
      
      function §3#§(param1:EventDispatcher) : void
      {
         this.§">§ = param1;
      }
      
      function §'L§(param1:EventDispatcher) : void
      {
         this.§0I§ = param1;
      }
      
      function get §7a§() : Boolean
      {
         return this.§>N§;
      }
      
      function get §9!7§() : Boolean
      {
         return this.§`p§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"^§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§">§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§0I§;
      }
      
      public function get type() : String
      {
         return this.§>F§;
      }
   }
}
