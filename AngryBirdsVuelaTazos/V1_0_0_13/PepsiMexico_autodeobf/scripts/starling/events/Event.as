package starling.events
{
   import §_-kX§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-x0§:String = "removed";
      
      public static const §_-cf§:String = "removedFromStage";
      
      public static const §_-Vs§:String = "triggered";
      
      public static const §_-jP§:String = "movieCompleted";
      
      public static const §_-bm§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-Wh§:EventDispatcher;
      
      private var §_-yZ§:EventDispatcher;
      
      private var §_-CV§:String;
      
      private var §_-1t§:Boolean;
      
      private var §_-RF§:Boolean;
      
      private var §_-BB§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-CV§ = param1;
         this.§_-1t§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-RF§ = true;
      }
      
      public function §_-gC§() : void
      {
         this.§_-BB§ = true;
         this.§_-RF§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-CV§,this.§_-1t§);
      }
      
      function §_-9p§(param1:EventDispatcher) : void
      {
         this.§_-Wh§ = param1;
      }
      
      function §_-wA§(param1:EventDispatcher) : void
      {
         this.§_-yZ§ = param1;
      }
      
      function get §_-2r§() : Boolean
      {
         return this.§_-RF§;
      }
      
      function get §_-qc§() : Boolean
      {
         return this.§_-BB§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-1t§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-Wh§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-yZ§;
      }
      
      public function get type() : String
      {
         return this.§_-CV§;
      }
   }
}
