package starling.events
{
   import §>!+§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §-!P§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §["=§:String = "triggered";
      
      public static const §!u§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §4v§:String = "removeFromJuggler";
       
      
      private var §@"<§:EventDispatcher;
      
      private var §[!C§:EventDispatcher;
      
      private var §+q§:String;
      
      private var §1!i§:Boolean;
      
      private var §6m§:Boolean;
      
      private var §&!z§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§+q§ = param1;
         this.§1!i§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§6m§ = true;
      }
      
      public function §4,§() : void
      {
         this.§&!z§ = true;
         this.§6m§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§+q§,this.§1!i§);
      }
      
      function §>H§(param1:EventDispatcher) : void
      {
         this.§@"<§ = param1;
      }
      
      function §with§(param1:EventDispatcher) : void
      {
         this.§[!C§ = param1;
      }
      
      function get §8!4§() : Boolean
      {
         return this.§6m§;
      }
      
      function get §7r§() : Boolean
      {
         return this.§&!z§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§1!i§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§@"<§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§[!C§;
      }
      
      public function get type() : String
      {
         return this.§+q§;
      }
   }
}
