package starling.events
{
   import §-$§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §0"2§:String = "removed";
      
      public static const §<!X§:String = "removedFromStage";
      
      public static const §8i§:String = "triggered";
      
      public static const §4S§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §;J§:String = "removeFromJuggler";
       
      
      private var §7f§:EventDispatcher;
      
      private var §#k§:EventDispatcher;
      
      private var §]" §:String;
      
      private var §'+§:Boolean;
      
      private var §+!!§:Boolean;
      
      private var §,H§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§]" § = param1;
         this.§'+§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§+!!§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§,H§ = true;
         this.§+!!§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§]" §,this.§'+§);
      }
      
      function §2h§(param1:EventDispatcher) : void
      {
         this.§7f§ = param1;
      }
      
      function §"X§(param1:EventDispatcher) : void
      {
         this.§#k§ = param1;
      }
      
      function get §'!^§() : Boolean
      {
         return this.§+!!§;
      }
      
      function get §2""§() : Boolean
      {
         return this.§,H§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'+§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§7f§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§#k§;
      }
      
      public function get type() : String
      {
         return this.§]" §;
      }
   }
}
