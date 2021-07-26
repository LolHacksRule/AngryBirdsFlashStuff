package §5#m§
{
   import §5!D§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §'T§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §1">§:String = "triggered";
      
      public static const §,#j§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'"'§:String = "rootCreated";
      
      public static const §7">§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §`#_§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §+!s§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §%"P§:EventDispatcher;
      
      private var § f§:EventDispatcher;
      
      private var §"#7§:String;
      
      private var §,!@§:Boolean;
      
      private var §6!l§:Boolean;
      
      private var §2$0§:Boolean;
      
      private var §["[§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§"#7§ = param1;
         this.§,!@§ = param2;
         this.§["[§ = param3;
      }
      
      static function §]"r§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§+!s§.length)
         {
            return §+!s§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §0"<§(param1:Event) : void
      {
         param1.§["[§ = param1.§%"P§ = param1.§ f§ = null;
         §+!s§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§6!l§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§2$0§ = true;
         this.§6!l§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§"#7§,this.§,!@§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§,!@§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§%"P§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§ f§;
      }
      
      public function get type() : String
      {
         return this.§"#7§;
      }
      
      public function get data() : Object
      {
         return this.§["[§;
      }
      
      function §<"v§(param1:EventDispatcher) : void
      {
         this.§%"P§ = param1;
      }
      
      function §;#T§(param1:EventDispatcher) : void
      {
         this.§ f§ = param1;
      }
      
      function §>#<§(param1:Object) : void
      {
         this.§["[§ = param1;
      }
      
      function get §9#E§() : Boolean
      {
         return this.§6!l§;
      }
      
      function get §9!k§() : Boolean
      {
         return this.§2$0§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§"#7§ = param1;
         this.§,!@§ = param2;
         this.§["[§ = param3;
         this.§%"P§ = this.§ f§ = null;
         this.§6!l§ = this.§2$0§ = false;
         return this;
      }
   }
}
