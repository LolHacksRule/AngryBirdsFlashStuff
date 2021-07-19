package starling.events
{
   import §+o§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § =§:String = "removed";
      
      public static const §get §:String = "removedFromStage";
      
      public static const §#!V§:String = "triggered";
      
      public static const §#&§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §;8§:String = "removeFromJuggler";
       
      
      private var §9U§:EventDispatcher;
      
      private var §2!i§:EventDispatcher;
      
      private var §^"'§:String;
      
      private var §6!h§:Boolean;
      
      private var §>!D§:Boolean;
      
      private var §@+§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§^"'§ = param1;
         this.§6!h§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§>!D§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§@+§ = true;
         this.§>!D§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§^"'§,this.§6!h§);
      }
      
      function §5",§(param1:EventDispatcher) : void
      {
         this.§9U§ = param1;
      }
      
      function §=!^§(param1:EventDispatcher) : void
      {
         this.§2!i§ = param1;
      }
      
      function get §,G§() : Boolean
      {
         return this.§>!D§;
      }
      
      function get §4n§() : Boolean
      {
         return this.§@+§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§6!h§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§9U§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2!i§;
      }
      
      public function get type() : String
      {
         return this.§^"'§;
      }
   }
}
