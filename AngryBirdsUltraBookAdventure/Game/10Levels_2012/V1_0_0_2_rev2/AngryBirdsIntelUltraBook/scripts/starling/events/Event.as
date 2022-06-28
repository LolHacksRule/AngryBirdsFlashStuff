package starling.events
{
   import §`s§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1d§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §-U§:String = "triggered";
      
      public static const §&!E§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §]!%§:String = "removeFromJuggler";
       
      
      private var §0!R§:EventDispatcher;
      
      private var §=^§:EventDispatcher;
      
      private var §,s§:String;
      
      private var §+c§:Boolean;
      
      private var §<-§:Boolean;
      
      private var §2!E§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§,s§ = param1;
         this.§+c§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§<-§ = true;
      }
      
      public function §>!<§() : void
      {
         this.§2!E§ = true;
         this.§<-§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,s§,this.§+c§);
      }
      
      function §`"§(param1:EventDispatcher) : void
      {
         this.§0!R§ = param1;
      }
      
      function §%!u§(param1:EventDispatcher) : void
      {
         this.§=^§ = param1;
      }
      
      function get §;r§() : Boolean
      {
         return this.§<-§;
      }
      
      function get §&c§() : Boolean
      {
         return this.§2!E§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+c§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§0!R§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=^§;
      }
      
      public function get type() : String
      {
         return this.§,s§;
      }
   }
}
