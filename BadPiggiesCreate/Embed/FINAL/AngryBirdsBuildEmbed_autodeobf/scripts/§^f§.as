package
{
   import § !A§.§"!8§;
   import §-!0§.§1^§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
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
   
   public class §^f§ extends §"!8§
   {
      
      public static const §9!o§:String = "0.0.0.1 ({svn_version}) beta";
       
      
      private var §4#§:Boolean = false;
      
      private var §0s§:ClickToPlay;
      
      private var §]F§:Number;
      
      private var §,!n§:Number;
      
      public function §^f§()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
      }
      
      private function init() : void
      {
         this.§]F§ = stage.stageWidth;
         this.§,!n§ = stage.stageHeight;
         § ^§.§,!S§(stage,"UA-23082676-19");
         § ^§.enabled = true;
         §,8§.§^!9§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§7h§);
         }
         else
         {
            this.loadingComplete();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §7h§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§7h§);
         this.loadingComplete();
      }
      
      protected function loadingComplete() : void
      {
         §,8§.§?!@§(§ ^§.§%!H§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§[!G§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§null§();
            }
            else
            {
               this.§?!9§();
            }
         }
         else
         {
            this.§`!I§();
         }
      }
      
      private function §?!9§() : void
      {
         this.§0s§ = new ClickToPlay();
         this.§0s§.useHandCursor = true;
         this.§0s§.buttonMode = true;
         stage.addChild(this.§0s§);
         this.§0s§.x = stage.stageWidth - this.§0s§.width >> 1;
         this.§0s§.y = stage.stageHeight - this.§0s§.height >> 1;
         this.§0s§.TextField_LevelName.text = §9C§.§^!G§(stage.loaderInfo.parameters.levelId);
         stage.addEventListener(MouseEvent.CLICK,this.§6q§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §`!I§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§`!2§);
      }
      
      private function §`!2§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§`!2§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§0s§)
         {
            this.§0s§.x = stage.stageWidth - this.§0s§.width >> 1;
            this.§0s§.y = stage.stageHeight - this.§0s§.height >> 1;
         }
      }
      
      private function §6q§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§6q§);
         if(stage.contains(this.§0s§))
         {
            stage.removeChild(this.§0s§);
         }
         this.§null§();
      }
      
      private function §null§() : void
      {
         new §#!?§(this,this.§]F§,this.§,!n§);
      }
      
      protected function §[!G§(param1:UncaughtErrorEvent) : void
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
         if(!this.§4#§)
         {
            this.§4#§ = true;
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
            §,8§.§9u§(_loc2_,_loc6_);
            if(§'!V§.§6!O§ != null)
            {
               _loc4_ = §'!V§.§6!O§.§^!^§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §1^§.§ ]§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§7j§.§else§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§7j§.§?!X§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §9!o§;
            §,8§.§?!@§(§ ^§.§[!D§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §,8§.§?!@§(§ ^§.§--§,_loc12_,_loc6_);
            }
         }
      }
   }
}
