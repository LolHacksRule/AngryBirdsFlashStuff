package starling.events
{
   import §+§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4Y§:String = "removed";
      
      public static const §<!=§:String = "removedFromStage";
      
      public static const §8r§:String = "triggered";
      
      public static const §"@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §,m§:String = "removeFromJuggler";
       
      
      private var §8S§:EventDispatcher;
      
      private var §^!<§:EventDispatcher;
      
      private var §6!'§:String;
      
      private var §"1§:Boolean;
      
      private var §"!O§:Boolean;
      
      private var §%!O§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§6!'§ = param1;
         this.§"1§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§"!O§ = true;
      }
      
      public function §9!?§() : void
      {
         this.§%!O§ = true;
         this.§"!O§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§6!'§,this.§"1§);
      }
      
      function §9X§(param1:EventDispatcher) : void
      {
         this.§8S§ = param1;
      }
      
      function §+Z§(param1:EventDispatcher) : void
      {
         this.§^!<§ = param1;
      }
      
      function get § J§() : Boolean
      {
         return this.§"!O§;
      }
      
      function get §0G§() : Boolean
      {
         return this.§%!O§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"1§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8S§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^!<§;
      }
      
      public function get type() : String
      {
         return this.§6!'§;
      }
   }
}
