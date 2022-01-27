package starling.events
{
   import §[4§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@=§:String = "removed";
      
      public static const §1!+§:String = "removedFromStage";
      
      public static const §?!6§:String = "triggered";
      
      public static const §]g§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §@" §:String = "removeFromJuggler";
       
      
      private var §?!§:EventDispatcher;
      
      private var §[o§:EventDispatcher;
      
      private var § !b§:String;
      
      private var §>?§:Boolean;
      
      private var §;T§:Boolean;
      
      private var §^!E§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§ !b§ = param1;
         this.§>?§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§;T§ = true;
      }
      
      public function §[!o§() : void
      {
         this.§^!E§ = true;
         this.§;T§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§ !b§,this.§>?§);
      }
      
      function §'!U§(param1:EventDispatcher) : void
      {
         this.§?!§ = param1;
      }
      
      function §>Z§(param1:EventDispatcher) : void
      {
         this.§[o§ = param1;
      }
      
      function get §@!#§() : Boolean
      {
         return this.§;T§;
      }
      
      function get §`!c§() : Boolean
      {
         return this.§^!E§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§>?§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§?!§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§[o§;
      }
      
      public function get type() : String
      {
         return this.§ !b§;
      }
   }
}
