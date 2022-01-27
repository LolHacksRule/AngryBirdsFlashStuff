package
{
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §@B§.§8V§;
   import §^]§.§`!K§;
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
   
   public class AngryBirdsCustomCanvas extends §'B§
   {
      
      public static const §-p§:int = 570;
      
      public static const §5!9§:int = 380;
      
      public static const §'S§:String = "0.0.1.0 (r98915)";
       
      
      private var §8Q§:Boolean = false;
      
      private var §=!0§:Number;
      
      private var §?2§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §8V§.§^^§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§=!0§ = stage.stageWidth;
         this.§?2§ = stage.stageHeight;
         §3"§.§7&§(stage,"UA-23082676-22");
         §3"§.enabled = true;
         §-<§.§8!!§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§-!?§);
         }
         else
         {
            this.§]!1§();
         }
      }
      
      private function §+!F§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
         this.init();
      }
      
      private function §-!?§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§-!?§);
         this.§]!1§();
      }
      
      protected function §]!1§() : void
      {
         §-<§.§>v§(§3"§.§8`§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§3s§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§6"§();
            }
            else
            {
               this.§6"§();
            }
         }
         else
         {
            this.§ !6§();
         }
      }
      
      private function § !6§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§@T§);
      }
      
      private function §@T§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§@T§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §6"§() : void
      {
         new §!D§(this,this.§=!0§,this.§?2§);
      }
      
      protected function §3s§(param1:UncaughtErrorEvent) : void
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
         if(!this.§8Q§)
         {
            this.§8Q§ = true;
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
            §-<§.§]S§(_loc2_,_loc6_);
            if(§#! §.§ A§ != null)
            {
               _loc4_ = §#! §.§ A§.§,x§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §`!K§.§5g§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§[Z§.§%m§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§[Z§.§-D§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §'S§;
            §-<§.§>v§(§3"§.§>-§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §-<§.§>v§(§3"§.§]#§,_loc12_,_loc6_);
            }
         }
      }
   }
}
