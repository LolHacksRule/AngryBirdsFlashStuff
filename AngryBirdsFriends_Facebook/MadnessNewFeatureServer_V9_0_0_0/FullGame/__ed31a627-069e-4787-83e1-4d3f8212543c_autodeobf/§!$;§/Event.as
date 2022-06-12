package §!$;§
{
   import §,#=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2"K§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §]#&§:String = "triggered";
      
      public static const §4"g§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §`#=§:String = "rootCreated";
      
      public static const §>#R§:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const §`!=§:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var §3!u§:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var §##i§:EventDispatcher;
      
      private var §##E§:EventDispatcher;
      
      private var §@4§:String;
      
      private var §"-§:Boolean;
      
      private var § "#§:Boolean;
      
      private var §=#h§:Boolean;
      
      private var §8#f§:Object;
      
      public function Event(param1:String, param2:Boolean = false, param3:Object = null)
      {
         super();
         this.§@4§ = param1;
         this.§"-§ = param2;
         this.§8#f§ = param3;
      }
      
      static function §-"+§(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         if(§3!u§.length)
         {
            return §3!u§.pop().reset(param1,param2,param3);
         }
         return new Event(param1,param2,param3);
      }
      
      static function §"$2§(param1:Event) : void
      {
         param1.§8#f§ = param1.§##i§ = param1.§##E§ = null;
         §3!u§.push(param1);
      }
      
      public function stopPropagation() : void
      {
         this.§ "#§ = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.§=#h§ = true;
         this.§ "#§ = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§@4§,this.§"-§);
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"-§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§##i§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§##E§;
      }
      
      public function get type() : String
      {
         return this.§@4§;
      }
      
      public function get data() : Object
      {
         return this.§8#f§;
      }
      
      function §15§(param1:EventDispatcher) : void
      {
         this.§##i§ = param1;
      }
      
      function §#"A§(param1:EventDispatcher) : void
      {
         this.§##E§ = param1;
      }
      
      function §`#[§(param1:Object) : void
      {
         this.§8#f§ = param1;
      }
      
      function get §-"H§() : Boolean
      {
         return this.§ "#§;
      }
      
      function get §#"n§() : Boolean
      {
         return this.§=#h§;
      }
      
      function reset(param1:String, param2:Boolean = false, param3:Object = null) : Event
      {
         this.§@4§ = param1;
         this.§"-§ = param2;
         this.§8#f§ = param3;
         this.§##i§ = this.§##E§ = null;
         this.§ "#§ = this.§=#h§ = false;
         return this;
      }
   }
}
