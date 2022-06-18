package
{
   import §#]§.§'5§;
   import §4y§.§"s§;
   import §8!=§.§4!§;
   import §8!=§.§=!"§;
   import §<!M§.§[i§;
   import §??§.§5!@§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class AngryBirdsEmbedCanvas extends §"s§
   {
      
      public static const §"@§:String = "0.0.0.1 (r105648) beta";
       
      
      private var §14§:Boolean = false;
      
      private var §'!-§:ClickToPlay;
      
      private var §^5§:Loader;
      
      private var §,!E§:Number;
      
      private var §]=§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§]!D§);
         }
      }
      
      private function init() : void
      {
         this.§,!E§ = stage.stageWidth;
         this.§]=§ = stage.stageHeight;
         §4!§.§]!8§(stage,"UA-23082676-19");
         §4!§.enabled = true;
         §=!"§.§[v§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§'!I§);
         }
         else
         {
            this.§ +§();
         }
      }
      
      private function §]!D§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§]!D§);
         this.init();
      }
      
      private function §'!I§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§'!I§);
         this.§ +§();
      }
      
      protected function § +§() : void
      {
         §=!"§.§<!L§(§4!§.§5!A§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;w§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§%!B§();
            }
            else
            {
               this.§-!@§();
            }
         }
         else
         {
            this.§9!§();
         }
      }
      
      private function §-!@§() : void
      {
         AngryBirdsFP11.§+H§ = stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-facebook-dev.appspot.com";
         this.§'!-§ = new ClickToPlay();
         this.§'!-§.useHandCursor = true;
         this.§'!-§.buttonMode = true;
         this.§'!-§.x = (stage.stageWidth - this.§'!-§.width) / 2;
         this.§'!-§.y = (stage.stageHeight - this.§'!-§.height) / 2;
         this.§'!-§.TextField_LevelName.text = §@;§.§;[§(stage.loaderInfo.parameters.levelId);
         this.§^5§ = new Loader();
         this.§^5§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<n§);
         this.§^5§.load(new URLRequest(AngryBirdsFP11.§+H§ + "/fb_images/levels/embed/" + stage.loaderInfo.parameters.levelId + ".png"));
         stage.addChild(this.§^5§);
         stage.addChild(this.§'!-§);
         stage.addEventListener(MouseEvent.CLICK,this.§1f§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §<n§(param1:Event) : void
      {
         this.§^5§.y = stage.stageHeight - this.§^5§.height >> 1;
         (this.§^5§.content as Bitmap).smoothing = true;
         this.§^5§.filters = [new ColorMatrixFilter([1,0,0,0,-70,0,1,0,0,-70,0,0,1,0,-70,0,0,0,1,0])];
      }
      
      private function §9!§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§5!#§);
      }
      
      private function §5!#§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§5!#§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§'!-§)
         {
            this.§'!-§.x = stage.stageWidth - this.§'!-§.width >> 1;
            this.§'!-§.y = stage.stageHeight - this.§'!-§.height >> 1;
         }
      }
      
      private function §1f§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§1f§);
         if(stage.contains(this.§'!-§))
         {
            stage.removeChild(this.§'!-§);
            stage.removeChild(this.§^5§);
         }
         this.§%!B§();
      }
      
      private function §%!B§() : void
      {
         new §3J§(this,this.§,!E§,this.§]=§);
      }
      
      protected function §;w§(param1:UncaughtErrorEvent) : void
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
         if(!this.§14§)
         {
            this.§14§ = true;
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
            §=!"§.§,!B§(_loc2_,_loc6_);
            if(§'5§.§-!<§ != null)
            {
               _loc4_ = §'5§.§-!<§.§-A§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §[i§.§0A§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§5!@§.§8%§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§5!@§.§`v§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §"@§;
            §=!"§.§<!L§(§4!§.§18§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §=!"§.§<!L§(§4!§.§3-§,_loc12_,_loc6_);
            }
         }
      }
   }
}
