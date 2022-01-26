package starling.events
{
   import §_-0b§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-18§:String = "removed";
      
      public static const §_-Kf§:String = "removedFromStage";
      
      public static const §_-5g§:String = "triggered";
      
      public static const §_-gJ§:String = "movieCompleted";
      
      public static const §_-0l§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-Kv§:EventDispatcher;
      
      private var §_-jo§:EventDispatcher;
      
      private var §_-YX§:String;
      
      private var §_-e3§:Boolean;
      
      private var §_-Ur§:Boolean;
      
      private var §_-g3§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-YX§ = param1;
         this.§_-e3§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-Ur§ = true;
      }
      
      public function §_-H5§() : void
      {
         this.§_-g3§ = true;
         this.§_-Ur§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-YX§,this.§_-e3§);
      }
      
      function §_-nd§(param1:EventDispatcher) : void
      {
         this.§_-Kv§ = param1;
      }
      
      function §_-sJ§(param1:EventDispatcher) : void
      {
         this.§_-jo§ = param1;
      }
      
      function get §_-dZ§() : Boolean
      {
         return this.§_-Ur§;
      }
      
      function get §_-OS§() : Boolean
      {
         return this.§_-g3§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-e3§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-Kv§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-jo§;
      }
      
      public function get type() : String
      {
         return this.§_-YX§;
      }
   }
}
