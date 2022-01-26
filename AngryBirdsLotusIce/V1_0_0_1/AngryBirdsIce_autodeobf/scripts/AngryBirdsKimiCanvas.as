package
{
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §=9§.§#!+§;
   import §@!%§.§+8§;
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
   import §try§.§7!0§;
   import §try§.§9Q§;
   
   public class AngryBirdsKimiCanvas extends §#!+§
   {
      
      public static const §,s§:String = "1.0.0.0 (r95722)";
       
      
      private var §-e§:Boolean = false;
      
      private var §0v§:Number;
      
      private var §6a§:Number;
      
      public function AngryBirdsKimiCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§!f§);
         }
      }
      
      private function init() : void
      {
         this.§0v§ = stage.stageWidth;
         this.§6a§ = stage.stageHeight;
         §9Q§.§]!<§(stage,"UA-23082676-22");
         §9Q§.enabled = true;
         §7!0§.§set §();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§ X§);
         }
         else
         {
            this.§8P§();
         }
      }
      
      private function §!f§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§!f§);
         this.init();
      }
      
      private function § X§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§ X§);
         this.§8P§();
      }
      
      protected function §8P§() : void
      {
         §7!0§.§?z§(§9Q§.§=o§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§#!%§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§?c§();
            }
            else
            {
               this.§?c§();
            }
         }
         else
         {
            this.§7o§();
         }
      }
      
      private function §7o§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§8!6§);
      }
      
      private function §8!6§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§8!6§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §?c§() : void
      {
         new §@A§(this,this.§0v§,this.§6a§);
      }
      
      protected function §#!%§(param1:UncaughtErrorEvent) : void
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
         if(!this.§-e§)
         {
            this.§-e§ = true;
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
            §7!0§.§=`§(_loc2_,_loc6_);
            if(§8[§.§?v§ != null)
            {
               _loc4_ = §8[§.§?v§.§4;§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §&#§.§<Y§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§+8§.§-2§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§+8§.§-]§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §,s§;
            §7!0§.§?z§(§9Q§.§1L§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §7!0§.§?z§(§9Q§.§%!A§,_loc12_,_loc6_);
            }
         }
      }
   }
}
