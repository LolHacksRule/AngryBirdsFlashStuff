package
{
   import §"! §.§6<§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §;!B§.§1"§;
   import §;!B§.§14§;
   import §@!L§.§%K§;
   import §@g§.§4!@§;
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
   
   public class AngryBirdsCustomCanvas extends §6<§
   {
      
      public static const §[!1§:int = 570;
      
      public static const §87§:int = 380;
      
      public static const §<U§:String = "0.0.1.0 (r98427)";
       
      
      private var §9!E§:Boolean = false;
      
      private var §6!J§:Number;
      
      private var §^!?§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§"!2§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §%K§.§6!K§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§6!J§ = stage.stageWidth;
         this.§^!?§ = stage.stageHeight;
         §1"§.§#!7§(stage,"UA-23082676-22");
         §1"§.enabled = true;
         §14§.§2+§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§0p§);
         }
         else
         {
            this.§;m§();
         }
      }
      
      private function §"!2§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§"!2§);
         this.init();
      }
      
      private function §0p§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§0p§);
         this.§;m§();
      }
      
      protected function §;m§() : void
      {
         §14§.§`!O§(§1"§.§7l§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§6#§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§?m§();
            }
            else
            {
               this.§?m§();
            }
         }
         else
         {
            this.§2X§();
         }
      }
      
      private function §2X§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§[!5§);
      }
      
      private function §[!5§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§[!5§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §?m§() : void
      {
         new §>!?§(this,this.§6!J§,this.§^!?§);
      }
      
      protected function §6#§(param1:UncaughtErrorEvent) : void
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
         if(!this.§9!E§)
         {
            this.§9!E§ = true;
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
            §14§.§<!0§(_loc2_,_loc6_);
            if(§[F§.§-4§ != null)
            {
               _loc4_ = §[F§.§-4§.§1'§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §2h§.§,!P§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§4!@§.§ C§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§4!@§.§@m§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §<U§;
            §14§.§`!O§(§1"§.§9E§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §14§.§`!O§(§1"§.§=!L§,_loc12_,_loc6_);
            }
         }
      }
   }
}
