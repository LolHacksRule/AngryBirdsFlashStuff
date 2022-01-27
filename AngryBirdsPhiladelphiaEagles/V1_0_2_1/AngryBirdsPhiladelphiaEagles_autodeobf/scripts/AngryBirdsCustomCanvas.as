package
{
   import §!=§.§[!F§;
   import §3!G§.§>y§;
   import §9!0§.§ §;
   import §9!0§.§15§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §^h§.§2l§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustomCanvas extends §>y§
   {
      
      public static const §[!0§:int = 570;
      
      public static const §>!8§:int = 380;
      
      public static const §+!#§:String = "0.0.1.0 (r98732)";
       
      
      private var §7h§:Boolean = false;
      
      private var §3-§:Number;
      
      private var §&!I§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§"!0§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §[!F§.§;!&§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§3-§ = stage.stageWidth;
         this.§&!I§ = stage.stageHeight;
         § §.§9>§(stage,"UA-23082676-22");
         § §.enabled = true;
         §15§.§[§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§+P§);
         }
         else
         {
            this.§<!;§();
         }
      }
      
      private function §"!0§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§"!0§);
         this.init();
      }
      
      private function §+P§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§+P§);
         this.§<!;§();
      }
      
      protected function §<!;§() : void
      {
         §15§.§,!1§(§ §.§'!!§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§>!;§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§55§();
            }
            else
            {
               this.§55§();
            }
         }
         else
         {
            this.§=!1§();
         }
      }
      
      private function §=!1§() : void
      {
         var _loc1_:TextField = new TextField();
         _loc1_.text = "Please install Flash 11 to play";
         _loc1_.textColor = 0;
         _loc1_.selectable = false;
         _loc1_.height = 30;
         _loc1_.width = 250;
         _loc1_.autoSize = TextFieldAutoSize.CENTER;
         stage.addChild(_loc1_);
         _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
         _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
         _loc1_.mouseEnabled = true;
         stage.addEventListener(MouseEvent.CLICK,this.§27§);
      }
      
      private function §27§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§27§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §55§() : void
      {
         new §#!1§(this,this.§3-§,this.§&!I§);
      }
      
      protected function §>!;§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!this.§7h§)
         {
            this.§7h§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc10_ = param1.error as Error).errorID;
               _loc5_ = _loc10_.message;
               _loc3_ = _loc10_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
            }
            §15§.§2!0§(_loc2_,_loc6_);
            if(§5!+§.§5!6§ != null)
            {
               _loc4_ = §5!+§.§5!6§.§[!'§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §6H§.§"Q§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§2l§.§7K§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§2l§.§,X§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §+!#§;
            §15§.§,!1§(§ §.§5`§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §15§.§,!1§(§ §.§2g§,_loc12_,_loc6_);
            }
         }
      }
   }
}
