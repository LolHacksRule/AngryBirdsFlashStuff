package starling.events
{
   import §2!+§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,X§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §!C§:String = "triggered";
      
      public static const §0`§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §!!8§:String = "removeFromJuggler";
       
      
      private var §+v§:EventDispatcher;
      
      private var §]!<§:EventDispatcher;
      
      private var §[!0§:String;
      
      private var §!6§:Boolean;
      
      private var §0!9§:Boolean;
      
      private var §?w§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§[!0§ = param1;
         this.§!6§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§0!9§ = true;
      }
      
      public function §0^§() : void
      {
         this.§?w§ = true;
         this.§0!9§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§[!0§,this.§!6§);
      }
      
      function §2n§(param1:EventDispatcher) : void
      {
         this.§+v§ = param1;
      }
      
      function §;l§(param1:EventDispatcher) : void
      {
         this.§]!<§ = param1;
      }
      
      function get §5R§() : Boolean
      {
         return this.§0!9§;
      }
      
      function get §9o§() : Boolean
      {
         return this.§?w§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!6§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§+v§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§]!<§;
      }
      
      public function get type() : String
      {
         return this.§[!0§;
      }
   }
}
