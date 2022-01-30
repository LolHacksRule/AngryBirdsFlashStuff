package starling.events
{
   import §!p§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §&!R§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §7&§:String = "triggered";
      
      public static const §^d§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<">§:String = "removeFromJuggler";
       
      
      private var §%"6§:EventDispatcher;
      
      private var §?`§:EventDispatcher;
      
      private var §`"=§:String;
      
      private var §,&§:Boolean;
      
      private var §3"0§:Boolean;
      
      private var §7D§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§`"=§ = param1;
         this.§,&§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§3"0§ = true;
      }
      
      public function §<!D§() : void
      {
         this.§7D§ = true;
         this.§3"0§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`"=§,this.§,&§);
      }
      
      function §';§(param1:EventDispatcher) : void
      {
         this.§%"6§ = param1;
      }
      
      function §<G§(param1:EventDispatcher) : void
      {
         this.§?`§ = param1;
      }
      
      function get §<z§() : Boolean
      {
         return this.§3"0§;
      }
      
      function get §5;§() : Boolean
      {
         return this.§7D§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§,&§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§%"6§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§?`§;
      }
      
      public function get type() : String
      {
         return this.§`"=§;
      }
   }
}
