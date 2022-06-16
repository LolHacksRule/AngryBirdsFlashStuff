package
{
   import §,!,§.§2t§;
   import §3y§.§"C§;
   import §3y§.§=l§;
   import §>!O§.§[+§;
   import §?!$§.§+!,§;
   import §?j§.§`R§;
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
   
   public class AngryBirdsEmbedCanvas extends §+!,§
   {
      
      public static const §]`§:String = "0.0.0.1 (r107050) beta";
       
      
      private var §&s§:Boolean = false;
      
      private var §?8§:ClickToPlay;
      
      private var §=!H§:Loader;
      
      private var §,!I§:Number;
      
      private var §'!=§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§^k§);
         }
      }
      
      private function init() : void
      {
         this.§,!I§ = stage.stageWidth;
         this.§'!=§ = stage.stageHeight;
         §=l§.§,%§(stage,"UA-23082676-19");
         §=l§.enabled = true;
         §"C§.§@!&§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§+!B§);
         }
         else
         {
            this.§&!&§();
         }
      }
      
      private function §^k§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§^k§);
         this.init();
      }
      
      private function §+!B§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§+!B§);
         this.§&!&§();
      }
      
      protected function §&!&§() : void
      {
         §"C§.§#H§(§=l§.§09§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§&!7§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§+!=§();
            }
            else
            {
               this.§!S§();
            }
         }
         else
         {
            this.§>"§();
         }
      }
      
      private function §!S§() : void
      {
         AngryBirdsFP11.§1M§ = stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-facebook-dev.appspot.com";
         this.§?8§ = new ClickToPlay();
         this.§?8§.useHandCursor = true;
         this.§?8§.buttonMode = true;
         this.§?8§.x = (stage.stageWidth - this.§?8§.width) / 2;
         this.§?8§.y = (stage.stageHeight - this.§?8§.height) / 2;
         this.§?8§.TextField_LevelName.text = § §.§[!N§(stage.loaderInfo.parameters.levelId);
         this.§=!H§ = new Loader();
         this.§=!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<y§);
         this.§=!H§.load(new URLRequest(AngryBirdsFP11.§1M§ + "/fb_images/levels/embed/" + stage.loaderInfo.parameters.levelId + ".png"));
         stage.addChild(this.§=!H§);
         stage.addChild(this.§?8§);
         stage.addEventListener(MouseEvent.CLICK,this.§1I§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §<y§(param1:Event) : void
      {
         this.§=!H§.y = stage.stageHeight - this.§=!H§.height >> 1;
         (this.§=!H§.content as Bitmap).smoothing = true;
         this.§=!H§.filters = [new ColorMatrixFilter([1,0,0,0,-70,0,1,0,0,-70,0,0,1,0,-70,0,0,0,1,0])];
      }
      
      private function §>"§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§,!0§);
      }
      
      private function §,!0§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§,!0§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§?8§)
         {
            this.§?8§.x = stage.stageWidth - this.§?8§.width >> 1;
            this.§?8§.y = stage.stageHeight - this.§?8§.height >> 1;
         }
      }
      
      private function §1I§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§1I§);
         if(stage.contains(this.§?8§))
         {
            stage.removeChild(this.§?8§);
            stage.removeChild(this.§=!H§);
         }
         this.§+!=§();
      }
      
      private function §+!=§() : void
      {
         new §#m§(this,this.§,!I§,this.§'!=§);
      }
      
      protected function §&!7§(param1:UncaughtErrorEvent) : void
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
         if(!this.§&s§)
         {
            this.§&s§ = true;
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
            §"C§.§4!H§(_loc2_,_loc6_);
            if(§[+§.§&!"§ != null)
            {
               _loc4_ = §[+§.§&!"§.§@x§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §`R§.§7S§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§2t§.§,!E§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§2t§.§89§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §]`§;
            §"C§.§#H§(§=l§.§%?§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §"C§.§#H§(§=l§.§81§,_loc12_,_loc6_);
            }
         }
      }
   }
}
