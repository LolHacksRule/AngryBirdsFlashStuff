package §!#`§
{
   import §#"l§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §#G§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §0"I§:String = "triggered";
      
      public static const §%!L§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §=#O§:String = "rootCreated";
      
      public static const §?§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §?"j§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §,#x§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §[! §:EventDispatcher;
      
      private var §""o§:EventDispatcher;
      
      private var §=$?§:String;
      
      private var §#!§:Boolean;
      
      private var §!!S§:Boolean;
      
      private var §#!A§:Boolean;
      
      private var §"""§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§=$?§ = param1;
         this.§#!§ = param2;
         this.§"""§ = param3;
      }
      
      static function §+!G§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§,#x§.length)
         {
            return §,#x§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §6#L§(param1:Event) : void
      {
         param1.§"""§ = param1.§[! § = param1.§""o§ = null;
         §,#x§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§!!S§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§#!A§ = true;
         this.§!!S§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§=$?§,this.§#!§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§#!§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§[! §;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§""o§;
      }
      
      public function get type() : String
      {
         return this.§=$?§;
      }
      
      public function get data() : Object
      {
         return this.§"""§;
      }
      
      function §3#I§(param1:EventDispatcher) : void
      {
         this.§[! § = param1;
      }
      
      function §<$'§(param1:EventDispatcher) : void
      {
         this.§""o§ = param1;
      }
      
      function §%6§(param1:Object) : void
      {
         this.§"""§ = param1;
      }
      
      function get §7H§() : Boolean
      {
         return this.§!!S§;
      }
      
      function get §[#Z§() : Boolean
      {
         return this.§#!A§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§=$?§ = param1;
         this.§#!§ = param2;
         this.§"""§ = param3;
         this.§[! § = this.§""o§ = null;
         this.§!!S§ = this.§#!A§ = false;
         return this;
      }
   }
}
