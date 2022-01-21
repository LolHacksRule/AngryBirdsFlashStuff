package starling.events
{
   import §=E§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §>!"§:String = "removed";
      
      public static const §?2§:String = "removedFromStage";
      
      public static const §>§:String = "triggered";
      
      public static const §&=§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §9Q§:String = "removeFromJuggler";
       
      
      private var §[e§:EventDispatcher;
      
      private var §]I§:EventDispatcher;
      
      private var §'&§:String;
      
      private var §#>§:Boolean;
      
      private var §<2§:Boolean;
      
      private var §'!F§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§'&§ = param1;
         this.§#>§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§<2§ = true;
      }
      
      public function § !<§() : void
      {
         this.§'!F§ = true;
         this.§<2§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'&§,this.§#>§);
      }
      
      function §3E§(param1:EventDispatcher) : void
      {
         this.§[e§ = param1;
      }
      
      function §8I§(param1:EventDispatcher) : void
      {
         this.§]I§ = param1;
      }
      
      function get §6!,§() : Boolean
      {
         return this.§<2§;
      }
      
      function get §#l§() : Boolean
      {
         return this.§'!F§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§#>§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§[e§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§]I§;
      }
      
      public function get type() : String
      {
         return this.§'&§;
      }
   }
}
