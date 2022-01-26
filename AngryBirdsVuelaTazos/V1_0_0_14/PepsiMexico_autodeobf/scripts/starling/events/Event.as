package starling.events
{
   import §_-CG§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-xz§:String = "removed";
      
      public static const §_-H5§:String = "removedFromStage";
      
      public static const §_-ZP§:String = "triggered";
      
      public static const §_-H4§:String = "movieCompleted";
      
      public static const §_-m1§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-0V§:EventDispatcher;
      
      private var §_-x1§:EventDispatcher;
      
      private var §_-yc§:String;
      
      private var §_-gK§:Boolean;
      
      private var §_-Dh§:Boolean;
      
      private var §_-9V§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-yc§ = param1;
         this.§_-gK§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-Dh§ = true;
      }
      
      public function §_-m9§() : void
      {
         this.§_-9V§ = true;
         this.§_-Dh§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-yc§,this.§_-gK§);
      }
      
      function §_-TI§(param1:EventDispatcher) : void
      {
         this.§_-0V§ = param1;
      }
      
      function §_-k2§(param1:EventDispatcher) : void
      {
         this.§_-x1§ = param1;
      }
      
      function get §_-GR§() : Boolean
      {
         return this.§_-Dh§;
      }
      
      function get §_-58§() : Boolean
      {
         return this.§_-9V§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-gK§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-0V§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-x1§;
      }
      
      public function get type() : String
      {
         return this.§_-yc§;
      }
   }
}
