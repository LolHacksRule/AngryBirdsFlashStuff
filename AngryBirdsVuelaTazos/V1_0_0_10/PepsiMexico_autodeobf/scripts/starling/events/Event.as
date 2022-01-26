package starling.events
{
   import §_-Zq§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-s0§:String = "removed";
      
      public static const §_-6P§:String = "removedFromStage";
      
      public static const §_-mB§:String = "triggered";
      
      public static const §_-V9§:String = "movieCompleted";
      
      public static const §_-Xt§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-11§:EventDispatcher;
      
      private var §_-X3§:EventDispatcher;
      
      private var §_-jG§:String;
      
      private var §_-S1§:Boolean;
      
      private var §_-RW§:Boolean;
      
      private var §_-fO§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-jG§ = param1;
         this.§_-S1§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-RW§ = true;
      }
      
      public function §_-Ly§() : void
      {
         this.§_-fO§ = true;
         this.§_-RW§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-jG§,this.§_-S1§);
      }
      
      function §_-Nw§(param1:EventDispatcher) : void
      {
         this.§_-11§ = param1;
      }
      
      function §_-LO§(param1:EventDispatcher) : void
      {
         this.§_-X3§ = param1;
      }
      
      function get §_-Wv§() : Boolean
      {
         return this.§_-RW§;
      }
      
      function get §_-cB§() : Boolean
      {
         return this.§_-fO§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-S1§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-11§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-X3§;
      }
      
      public function get type() : String
      {
         return this.§_-jG§;
      }
   }
}
