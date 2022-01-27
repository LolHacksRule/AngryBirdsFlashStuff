package starling.events
{
   import §5D§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §![§:String = "removed";
      
      public static const §[K§:String = "removedFromStage";
      
      public static const §7b§:String = "triggered";
      
      public static const §6C§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §>r§:String = "removeFromJuggler";
       
      
      private var §3j§:EventDispatcher;
      
      private var §^!>§:EventDispatcher;
      
      private var §<q§:String;
      
      private var §]o§:Boolean;
      
      private var §;!4§:Boolean;
      
      private var §4_§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.§<q§ = param1;
         this.§]o§ = param2;
      }
      
      public function stopPropagation() : void
      {
         this.§;!4§ = true;
      }
      
      public function §&!#§() : void
      {
         this.§4_§ = true;
         this.§;!4§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§<q§,this.§]o§);
      }
      
      function §,!?§(param1:EventDispatcher) : void
      {
         this.§3j§ = param1;
      }
      
      function §>g§(param1:EventDispatcher) : void
      {
         this.§^!>§ = param1;
      }
      
      function get §+7§() : Boolean
      {
         return this.§;!4§;
      }
      
      function get §+!&§() : Boolean
      {
         return this.§4_§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§]o§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§3j§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^!>§;
      }
      
      public function get type() : String
      {
         return this.§<q§;
      }
   }
}
