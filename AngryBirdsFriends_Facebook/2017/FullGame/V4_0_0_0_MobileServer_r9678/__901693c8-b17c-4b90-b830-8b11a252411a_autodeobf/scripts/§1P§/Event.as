package §1P§
{
   import §>l§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1A§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §"!l§:String = "triggered";
      
      public static const §#!G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §7!+§:String = "rootCreated";
      
      public static const § #X§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §3p§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §20§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §,!T§:EventDispatcher;
      
      private var §+#@§:EventDispatcher;
      
      private var §7#n§:String;
      
      private var §+g§:Boolean;
      
      private var §6?§:Boolean;
      
      private var §"!-§:Boolean;
      
      private var §]!$§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§7#n§ = param1;
         this.§+g§ = param2;
         this.§]!$§ = param3;
      }
      
      static function §=+§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§20§.length)
         {
            return §20§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §"#p§(param1:Event) : void
      {
         param1.§]!$§ = param1.§,!T§ = param1.§+#@§ = null;
         §20§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§6?§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§"!-§ = true;
         this.§6?§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§7#n§,this.§+g§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+g§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§,!T§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§+#@§;
      }
      
      public function get type() : String
      {
         return this.§7#n§;
      }
      
      public function get data() : Object
      {
         return this.§]!$§;
      }
      
      function §"0§(param1:EventDispatcher) : void
      {
         this.§,!T§ = param1;
      }
      
      function §"%§(param1:EventDispatcher) : void
      {
         this.§+#@§ = param1;
      }
      
      function §5a§(param1:Object) : void
      {
         this.§]!$§ = param1;
      }
      
      function get §^^§() : Boolean
      {
         return this.§6?§;
      }
      
      function get §;!O§() : Boolean
      {
         return this.§"!-§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§7#n§ = param1;
         this.§+g§ = param2;
         this.§]!$§ = param3;
         this.§,!T§ = this.§+#@§ = null;
         this.§6?§ = this.§"!-§ = false;
         return this;
      }
   }
}
