package §,$&§
{
   import §8#p§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §#7§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const § !?§:String = "triggered";
      
      public static const §+#,§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §3+§:String = "rootCreated";
      
      public static const §]#h§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §0!I§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §;"H§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §["8§:EventDispatcher;
      
      private var §9!&§:EventDispatcher;
      
      private var §2"G§:String;
      
      private var §;Z§:Boolean;
      
      private var §^"k§:Boolean;
      
      private var §,#L§:Boolean;
      
      private var §1!,§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§2"G§ = param1;
         this.§;Z§ = param2;
         this.§1!,§ = param3;
      }
      
      static function §<!G§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§;"H§.length)
         {
            return §;"H§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §<$D§(param1:Event) : void
      {
         param1.§1!,§ = param1.§["8§ = param1.§9!&§ = null;
         §;"H§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§^"k§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§,#L§ = true;
         this.§^"k§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§2"G§,this.§;Z§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§;Z§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§["8§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§9!&§;
      }
      
      public function get type() : String
      {
         return this.§2"G§;
      }
      
      public function get data() : Object
      {
         return this.§1!,§;
      }
      
      function §'2§(param1:EventDispatcher) : void
      {
         this.§["8§ = param1;
      }
      
      function § #4§(param1:EventDispatcher) : void
      {
         this.§9!&§ = param1;
      }
      
      function §8#y§(param1:Object) : void
      {
         this.§1!,§ = param1;
      }
      
      function get §4!+§() : Boolean
      {
         return this.§^"k§;
      }
      
      function get §'!y§() : Boolean
      {
         return this.§,#L§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§2"G§ = param1;
         this.§;Z§ = param2;
         this.§1!,§ = param3;
         this.§["8§ = this.§9!&§ = null;
         this.§^"k§ = this.§,#L§ = false;
         return this;
      }
   }
}
