package
{
   import §&I§.§3! §;
   import §-l§.§?'§;
   import §2!,§.§,`§;
   import §<!@§.§!P§;
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
   import §while§.§+o§;
   import §while§.§-3§;
   
   public class AngryBirdsEmbedCanvas extends §,`§
   {
      
      public static const §+r§:String = "0.0.0.1 (r95809) beta";
       
      
      private var §6&§:Boolean = false;
      
      private var §;O§:ClickToPlay;
      
      private var §&]§:Number;
      
      private var §3!5§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§ s§);
         }
      }
      
      private function init() : void
      {
         this.§&]§ = stage.stageWidth;
         this.§3!5§ = stage.stageHeight;
         §+o§.§0?§(stage,"UA-23082676-19");
         §+o§.enabled = true;
         §-3§.§9!5§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§,F§);
         }
         else
         {
            this.§@k§();
         }
      }
      
      private function § s§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§ s§);
         this.init();
      }
      
      private function §,F§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§,F§);
         this.§@k§();
      }
      
      protected function §@k§() : void
      {
         §-3§.§53§(§+o§.§2@§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§''§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§"K§();
            }
            else
            {
               this.§38§();
            }
         }
         else
         {
            this.§?5§();
         }
      }
      
      private function §38§() : void
      {
         this.§;O§ = new ClickToPlay();
         this.§;O§.useHandCursor = true;
         this.§;O§.buttonMode = true;
         stage.addChild(this.§;O§);
         this.§;O§.x = stage.stageWidth - this.§;O§.width >> 1;
         this.§;O§.y = stage.stageHeight - this.§;O§.height >> 1;
         this.§;O§.TextField_LevelName.text = §extends§.§'?§(stage.loaderInfo.parameters.levelId);
         stage.addEventListener(MouseEvent.CLICK,this.§>b§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §?5§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§]-§);
      }
      
      private function §]-§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§]-§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§;O§)
         {
            this.§;O§.x = stage.stageWidth - this.§;O§.width >> 1;
            this.§;O§.y = stage.stageHeight - this.§;O§.height >> 1;
         }
      }
      
      private function §>b§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§>b§);
         if(stage.contains(this.§;O§))
         {
            stage.removeChild(this.§;O§);
         }
         this.§"K§();
      }
      
      private function §"K§() : void
      {
         new §6!%§(this,this.§&]§,this.§3!5§);
      }
      
      protected function §''§(param1:UncaughtErrorEvent) : void
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
         if(!this.§6&§)
         {
            this.§6&§ = true;
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
            §-3§.§5`§(_loc2_,_loc6_);
            if(§?'§.§0_§ != null)
            {
               _loc4_ = §?'§.§0_§.§`!$§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §!P§.§4R§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§3! §.§"n§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§3! §.§0!%§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §+r§;
            §-3§.§53§(§+o§.§;D§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §-3§.§53§(§+o§.§=H§,_loc12_,_loc6_);
            }
         }
      }
   }
}
