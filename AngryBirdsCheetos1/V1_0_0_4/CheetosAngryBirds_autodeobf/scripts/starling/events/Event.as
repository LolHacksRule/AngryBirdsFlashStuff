package starling.events
{
   import §_-kC§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-ni§:String = "removed";
      
      public static const §_-LS§:String = "removedFromStage";
      
      public static const §_-Yr§:String = "triggered";
      
      public static const §_-ap§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §_-VS§:String = "removeFromJuggler";
       
      
      private var §_-wF§:EventDispatcher;
      
      private var §_-B0§:EventDispatcher;
      
      private var §_-IE§:String;
      
      private var §_-2H§:Boolean;
      
      private var §_-Bu§:Boolean;
      
      private var §_-jF§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-IE§ = param1;
         this.§_-2H§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-Bu§ = true;
      }
      
      public function §_-uB§() : void
      {
         this.§_-jF§ = true;
         this.§_-Bu§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-IE§,this.§_-2H§);
      }
      
      function §_-bw§(param1:EventDispatcher) : void
      {
         this.§_-wF§ = param1;
      }
      
      function §_-TV§(param1:EventDispatcher) : void
      {
         this.§_-B0§ = param1;
      }
      
      function get §_-0U§() : Boolean
      {
         return this.§_-Bu§;
      }
      
      function get §_-w9§() : Boolean
      {
         return this.§_-jF§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-2H§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-wF§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-B0§;
      }
      
      public function get type() : String
      {
         return this.§_-IE§;
      }
   }
}
