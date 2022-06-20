package §<!S§
{
   import §0"D§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §%#e§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §6!_§:String = "triggered";
      
      public static const §?%§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §7"5§:String = "rootCreated";
      
      public static const §`!5§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §&#&§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §1X§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §7N§:EventDispatcher;
      
      private var §7B§:EventDispatcher;
      
      private var §4!$§:String;
      
      private var §`C§:Boolean;
      
      private var §^!J§:Boolean;
      
      private var §""J§:Boolean;
      
      private var §6"G§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§4!$§ = param1;
         this.§`C§ = param2;
         this.§6"G§ = param3;
      }
      
      static function §!4§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§1X§.length)
         {
            return §1X§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §-!3§(param1:Event) : void
      {
         param1.§6"G§ = param1.§7N§ = param1.§7B§ = null;
         §1X§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§^!J§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§""J§ = true;
         this.§^!J§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§4!$§,this.§`C§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`C§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§7N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§7B§;
      }
      
      public function get type() : String
      {
         return this.§4!$§;
      }
      
      public function get data() : Object
      {
         return this.§6"G§;
      }
      
      function §7"I§(param1:EventDispatcher) : void
      {
         this.§7N§ = param1;
      }
      
      function §8B§(param1:EventDispatcher) : void
      {
         this.§7B§ = param1;
      }
      
      function §@$§(param1:Object) : void
      {
         this.§6"G§ = param1;
      }
      
      function get §="u§() : Boolean
      {
         return this.§^!J§;
      }
      
      function get §93§() : Boolean
      {
         return this.§""J§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§4!$§ = param1;
         this.§`C§ = param2;
         this.§6"G§ = param3;
         this.§7N§ = this.§7B§ = null;
         this.§^!J§ = this.§""J§ = false;
         return this;
      }
   }
}
