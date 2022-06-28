package
{
   import §%!6§.§+9§;
   import §%!6§.§5!A§;
   import §+!?§.§"h§;
   import §8c§.§ p§;
   import §=!B§.§59§;
   import §catch§.§4@§;
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
   
   public class AngryBirdsEmbedCanvas extends § p§
   {
      
      public static const §4l§:String = "1.0.0.5 (r97703) beta";
       
      
      private var §,!?§:Boolean = false;
      
      private var §>H§:ClickToPlay;
      
      private var §8!?§:Number;
      
      private var §=!8§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§ null§);
         }
      }
      
      private function init() : void
      {
         this.§8!?§ = stage.stageWidth;
         this.§=!8§ = stage.stageHeight;
         §5!A§.§1!I§(stage,"UA-23082676-25");
         §5!A§.enabled = true;
         §+9§.§3!0§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§ v§);
         }
         else
         {
            this.§%`§();
         }
      }
      
      private function § null§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§ null§);
         this.init();
      }
      
      private function § v§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§ v§);
         this.§%`§();
      }
      
      protected function §%`§() : void
      {
         §+9§.§]c§(§5!A§.§@C§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§6%§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§;l§();
            }
            else
            {
               this.§>F§();
            }
         }
         else
         {
            this.§&K§();
         }
      }
      
      private function §>F§() : void
      {
         AngryBirdsFP11.§]!,§ = stage.loaderInfo.parameters.serverRoot || "http://ab-in-adventure.appspot.com//";
         this.§>H§ = new ClickToPlay();
         this.§>H§.useHandCursor = true;
         this.§>H§.buttonMode = true;
         var _loc1_:String = stage.loaderInfo.parameters.levelId;
         this.§>H§.TextField_LevelName.text = "Level " + _loc1_.split("-")[1];
         stage.addChild(this.§>H§);
         stage.addEventListener(MouseEvent.CLICK,this.§^9§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §&K§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§+i§);
      }
      
      private function §+i§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§+i§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§>H§)
         {
            this.§>H§.x = stage.stageWidth - this.§>H§.width >> 1;
            this.§>H§.y = stage.stageHeight - this.§>H§.height >> 1;
         }
      }
      
      private function §^9§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§^9§);
         if(stage.contains(this.§>H§))
         {
            stage.removeChild(this.§>H§);
         }
         this.§;l§();
      }
      
      private function §;l§() : void
      {
         new §+!0§(this,this.§8!?§,this.§=!8§);
      }
      
      protected function §6%§(param1:UncaughtErrorEvent) : void
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
         if(!this.§,!?§)
         {
            this.§,!?§ = true;
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
            §+9§.§0E§(_loc2_,_loc6_);
            if(§"h§.§'7§ != null)
            {
               _loc4_ = §"h§.§'7§.§@!%§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §59§.§%j§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§4@§.§0W§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§4@§.§?!A§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §4l§;
            §+9§.§]c§(§5!A§.§7'§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §+9§.§]c§(§5!A§.§'!+§,_loc12_,_loc6_);
            }
         }
      }
   }
}
