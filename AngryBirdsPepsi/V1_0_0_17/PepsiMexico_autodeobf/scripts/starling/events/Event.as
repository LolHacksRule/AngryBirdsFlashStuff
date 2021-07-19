package starling.events
{
   import §_-ia§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-dC§:String = "removed";
      
      public static const §_-av§:String = "removedFromStage";
      
      public static const §_-4F§:String = "triggered";
      
      public static const §_-hZ§:String = "movieCompleted";
      
      public static const §_-GI§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-Cc§:EventDispatcher;
      
      private var §_-nc§:EventDispatcher;
      
      private var §_-gA§:String;
      
      private var §_-xP§:Boolean;
      
      private var §_-Kv§:Boolean;
      
      private var §_-DM§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-gA§ = param1;
         this.§_-xP§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-Kv§ = true;
      }
      
      public function §_-2P§() : void
      {
         this.§_-DM§ = true;
         this.§_-Kv§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-gA§,this.§_-xP§);
      }
      
      function §_-Lb§(param1:EventDispatcher) : void
      {
         this.§_-Cc§ = param1;
      }
      
      function §_-6Y§(param1:EventDispatcher) : void
      {
         this.§_-nc§ = param1;
      }
      
      function get §_-eJ§() : Boolean
      {
         return this.§_-Kv§;
      }
      
      function get §_-MZ§() : Boolean
      {
         return this.§_-DM§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-xP§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-Cc§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-nc§;
      }
      
      public function get type() : String
      {
         return this.§_-gA§;
      }
   }
}
