package §0!=§
{
   import § §.§&7§;
   import § §.§3Q§;
   import § §.§4#`§;
   import § §.§<!`§;
   import §5t§.Log;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §7!$§.§&$§;
   import §<!o§.§[§;
   import §<w§.§^!q§;
   import §="2§.§?!r§;
   import §>@§.§#" §;
   import §>@§.§5"H§;
   import §`!o§.§6",§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]"3§ extends §&7§ implements IEventDispatcher
   {
      
      public static var §?p§:Number;
      
      public static var §4w§:Number;
       
      
      public var §^#`§:Number;
      
      private var §[4§:EventDispatcher;
      
      private var §^"N§:§5"H§;
      
      public function §]"3§(param1:§'"]§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'"]§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§[4§ = new EventDispatcher();
         super(canvas);
         if(§["A§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §["A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §["A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §4#,§() : §5"H§
      {
         return this.§^"N§;
      }
      
      protected function §`!G§() : void
      {
         §?!r§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§^"N§ = new §5"H§(new §#" §("en"));
         §[#3§.initialize(stage);
         §[#3§.§&!`§ = false;
         Log.§#!4§(this.getVersionInfo());
         Log.§<"a§ = this.getVersionInfo();
         §4#`§.§8X§ = §["A§.stage.loaderInfo.parameters;
         this.§`!G§();
         §7![§(new §<!`§(this.§4#,§));
         var _loc4_:§3Q§ = this.initStateLoad();
         §7![§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§+!^§(param3);
         §&$§.init(param2);
         if(§6",§.§;!=§())
         {
            §6",§.§%C§("serverConnectionError");
         }
         § g§(§3Q§.§^!7§);
         this.§,"j§();
      }
      
      protected function initStateLoad() : §3Q§
      {
         return new §3Q§(this.§4#,§,true,§3Q§.§^!7§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,"j§() : void
      {
         §["A§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §["A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §["A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §["A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§^#`§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§@!2§())
         {
            §@!2§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§@!2§())
         {
            §@!2§().keyDown(param1);
         }
         Log.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§@!2§())
         {
            §@!2§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§^#`§;
         this.§^#`§ = getTimer();
         §-#C§.§%!E§.update(_loc2_);
         var _loc3_:§^!q§ = new §^!q§(§^!q§.§1c§,_loc2_,param1.bubbles,param1.cancelable);
         this.§[4§.dispatchEvent(_loc3_);
         §`"+§.§1"L§(§["A§.mouseX,§["A§.mouseY);
         if(§'"s§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §4#`§.§-#_§)
         {
            §'"s§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§@!2§().isGenericState())
         {
            if(_loc2_ == §4#`§.§-#_§)
            {
               §["A§.addChild(§`"+§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §-#C§.§%!E§.§##M§();
      }
      
      public function setFirstGameState() : void
      {
         § g§(§<!`§.§^!7§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§[4§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[4§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[4§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[4§.willTrigger(param1);
      }
   }
}
