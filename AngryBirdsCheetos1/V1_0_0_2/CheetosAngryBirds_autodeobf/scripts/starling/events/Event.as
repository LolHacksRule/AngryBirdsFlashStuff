package starling.events
{
   import §_-mb§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-OR§:String = "removed";
      
      public static const §_-0V§:String = "removedFromStage";
      
      public static const §_-FP§:String = "triggered";
      
      public static const §_-8-§:String = "movieCompleted";
      
      public static const §_-Fh§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-GK§:EventDispatcher;
      
      private var §_-FI§:EventDispatcher;
      
      private var §_-XG§:String;
      
      private var §_-Zs§:Boolean;
      
      private var §_-JA§:Boolean;
      
      private var §_-FR§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-XG§ = param1;
         this.§_-Zs§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-JA§ = true;
      }
      
      public function §_-a4§() : void
      {
         this.§_-FR§ = true;
         this.§_-JA§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-XG§,this.§_-Zs§);
      }
      
      function §_-QX§(param1:EventDispatcher) : void
      {
         this.§_-GK§ = param1;
      }
      
      function §_-9z§(param1:EventDispatcher) : void
      {
         this.§_-FI§ = param1;
      }
      
      function get §_-Yb§() : Boolean
      {
         return this.§_-JA§;
      }
      
      function get §_-fq§() : Boolean
      {
         return this.§_-FR§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-Zs§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-GK§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-FI§;
      }
      
      public function get type() : String
      {
         return this.§_-XG§;
      }
   }
}
