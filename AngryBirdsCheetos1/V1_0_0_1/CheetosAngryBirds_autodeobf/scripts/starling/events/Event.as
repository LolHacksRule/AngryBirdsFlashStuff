package starling.events
{
   import §_-Bt§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-kM§:String = "removed";
      
      public static const §_-4K§:String = "removedFromStage";
      
      public static const §_-IP§:String = "triggered";
      
      public static const §_-XQ§:String = "movieCompleted";
      
      public static const §_-l1§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-tB§:EventDispatcher;
      
      private var §_-ff§:EventDispatcher;
      
      private var §_-cR§:String;
      
      private var §_-Xt§:Boolean;
      
      private var §_-yK§:Boolean;
      
      private var §_-pd§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-cR§ = param1;
         this.§_-Xt§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-yK§ = true;
      }
      
      public function §_-aS§() : void
      {
         this.§_-pd§ = true;
         this.§_-yK§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-cR§,this.§_-Xt§);
      }
      
      function §_-xW§(param1:EventDispatcher) : void
      {
         this.§_-tB§ = param1;
      }
      
      function §_-0-x§(param1:EventDispatcher) : void
      {
         this.§_-ff§ = param1;
      }
      
      function get §_-nT§() : Boolean
      {
         return this.§_-yK§;
      }
      
      function get §_-5B§() : Boolean
      {
         return this.§_-pd§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-Xt§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-tB§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-ff§;
      }
      
      public function get type() : String
      {
         return this.§_-cR§;
      }
   }
}
