package starling.events
{
   import §_-6A§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §_-ab§:String = "removed";
      
      public static const §_-j8§:String = "removedFromStage";
      
      public static const §_-Jg§:String = "triggered";
      
      public static const §_-VJ§:String = "movieCompleted";
      
      public static const §_-mp§:String = "flatten";
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-Ul§:EventDispatcher;
      
      private var §_-FF§:EventDispatcher;
      
      private var §_-Qg§:String;
      
      private var §_-J2§:Boolean;
      
      private var §_-pT§:Boolean;
      
      private var §_-Nk§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§_-Qg§ = param1;
         this.§_-J2§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§_-pT§ = true;
      }
      
      public function §_-ht§() : void
      {
         this.§_-Nk§ = true;
         this.§_-pT§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§_-Qg§,this.§_-J2§);
      }
      
      function §_-Kq§(param1:EventDispatcher) : void
      {
         this.§_-Ul§ = param1;
      }
      
      function §_-my§(param1:EventDispatcher) : void
      {
         this.§_-FF§ = param1;
      }
      
      function get §_-mt§() : Boolean
      {
         return this.§_-pT§;
      }
      
      function get §_-bF§() : Boolean
      {
         return this.§_-Nk§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§_-J2§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§_-Ul§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§_-FF§;
      }
      
      public function get type() : String
      {
         return this.§_-Qg§;
      }
   }
}
