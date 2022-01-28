package starling.events
{
   import §_-OP§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-a7§:String = "removed";
      
      public static const §_-iz§:String = "removedFromStage";
      
      public static const §_-YH§:String = "triggered";
      
      public static const §_-yC§:String = "movieCompleted";
      
      public static const §_-wi§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-d8§:EventDispatcher;
      
      private var §_-lq§:EventDispatcher;
      
      private var §_-mW§:String;
      
      private var §_-1C§:Boolean;
      
      private var §_-Wa§:Boolean;
      
      private var §_-jz§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-mW§ = param1;
         this.§_-1C§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-Wa§ = true;
      }
      
      public function §_-wh§() : void
      {
         this.§_-jz§ = true;
         this.§_-Wa§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-mW§,this.§_-1C§);
      }
      
      function §_-fA§(param1:EventDispatcher) : void
      {
         this.§_-d8§ = param1;
      }
      
      function §_-PU§(param1:EventDispatcher) : void
      {
         this.§_-lq§ = param1;
      }
      
      function get §_-0-§() : Boolean
      {
         return this.§_-Wa§;
      }
      
      function get §_-Mt§() : Boolean
      {
         return this.§_-jz§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-1C§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-d8§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-lq§;
      }
      
      public function get type() : String
      {
         return this.§_-mW§;
      }
   }
}
