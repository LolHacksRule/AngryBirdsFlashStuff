package starling.events
{
   import §<§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §]!-§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §2+§:String = "triggered";
      
      public static const §>T§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §%O§:String = "removeFromJuggler";
       
      
      private var override:EventDispatcher;
      
      private var §%z§:EventDispatcher;
      
      private var §@M§:String;
      
      private var §0!9§:Boolean;
      
      private var §+8§:Boolean;
      
      private var §'!7§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§@M§ = param1;
         this.§0!9§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§+8§ = true;
      }
      
      public function §=!#§() : void
      {
         this.§'!7§ = true;
         this.§+8§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§@M§,this.§0!9§);
      }
      
      function §#7§(param1:EventDispatcher) : void
      {
         this.override = param1;
      }
      
      function §%n§(param1:EventDispatcher) : void
      {
         this.§%z§ = param1;
      }
      
      function get §8T§() : Boolean
      {
         return this.§+8§;
      }
      
      function get §+!!§() : Boolean
      {
         return this.§'!7§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§0!9§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.override;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§%z§;
      }
      
      public function get type() : String
      {
         return this.§@M§;
      }
   }
}
