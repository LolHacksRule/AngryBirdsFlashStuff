package §?a§
{
   import §4"D§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2o§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §3"?§:String = "triggered";
      
      public static const §8#i§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §[_§:String = "rootCreated";
      
      public static const §[#H§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const § "z§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §-"l§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §>F§:EventDispatcher;
      
      private var §,"G§:EventDispatcher;
      
      private var §+#w§:String;
      
      private var §8!d§:Boolean;
      
      private var §@"x§:Boolean;
      
      private var §+";§:Boolean;
      
      private var §+!&§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§+#w§ = param1;
         this.§8!d§ = param2;
         this.§+!&§ = param3;
      }
      
      static function §]"f§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§-"l§.length)
         {
            return §-"l§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §4!m§(param1:Event) : void
      {
         param1.§+!&§ = param1.§>F§ = param1.§,"G§ = null;
         §-"l§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§@"x§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§+";§ = true;
         this.§@"x§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§+#w§,this.§8!d§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§8!d§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§>F§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§,"G§;
      }
      
      public function get type() : String
      {
         return this.§+#w§;
      }
      
      public function get data() : Object
      {
         return this.§+!&§;
      }
      
      function §@"^§(param1:EventDispatcher) : void
      {
         this.§>F§ = param1;
      }
      
      function §7!Z§(param1:EventDispatcher) : void
      {
         this.§,"G§ = param1;
      }
      
      function §;"K§(param1:Object) : void
      {
         this.§+!&§ = param1;
      }
      
      function get §;"5§() : Boolean
      {
         return this.§@"x§;
      }
      
      function get §,7§() : Boolean
      {
         return this.§+";§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§+#w§ = param1;
         this.§8!d§ = param2;
         this.§+!&§ = param3;
         this.§>F§ = this.§,"G§ = null;
         this.§@"x§ = this.§+";§ = false;
         return this;
      }
   }
}
