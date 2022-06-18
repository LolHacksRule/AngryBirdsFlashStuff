package
{
   import §"!>§.§=n§;
   import §8!G§.§-Z§;
   import §;%§.§8o§;
   import §>K§.§"!C§;
   import §>K§.§[!2§;
   import §`t§.§^?§;
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
   
   public class AngryBirdsEmbedCanvas extends §=n§
   {
      
      public static const §@!1§:String = "0.0.0.1 (r98506) beta";
       
      
      private var §,c§:Boolean = false;
      
      private var § Z§:ClickToPlay;
      
      private var §#!A§:Loader;
      
      private var §#!E§:Number;
      
      private var §#!'§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§%8§);
         }
      }
      
      private function init() : void
      {
         this.§#!E§ = stage.stageWidth;
         this.§#!'§ = stage.stageHeight;
         §"!C§.§1U§(stage,"UA-23082676-19");
         §"!C§.enabled = true;
         §[!2§.§@!,§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§2-§);
         }
         else
         {
            this.§+k§();
         }
      }
      
      private function §%8§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§%8§);
         this.init();
      }
      
      private function §2-§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§2-§);
         this.§+k§();
      }
      
      protected function §+k§() : void
      {
         §[!2§.§#U§(§"!C§.§14§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§7!<§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§,F§();
            }
            else
            {
               this.§&i§();
            }
         }
         else
         {
            this.§[k§();
         }
      }
      
      private function §&i§() : void
      {
         AngryBirdsFP11.§'a§ = stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-facebook-dev.appspot.com";
         this.§ Z§ = new ClickToPlay();
         this.§ Z§.useHandCursor = true;
         this.§ Z§.buttonMode = true;
         this.§ Z§.x = (stage.stageWidth - this.§ Z§.width) / 2;
         this.§ Z§.y = (stage.stageHeight - this.§ Z§.height) / 2;
         this.§ Z§.TextField_LevelName.text = §extends§.§^j§(stage.loaderInfo.parameters.levelId);
         this.§#!A§ = new Loader();
         this.§#!A§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;!E§);
         this.§#!A§.load(new URLRequest(AngryBirdsFP11.§'a§ + "/fb_images/levels/embed/" + stage.loaderInfo.parameters.levelId + ".png"));
         stage.addChild(this.§#!A§);
         stage.addChild(this.§ Z§);
         stage.addEventListener(MouseEvent.CLICK,this.§5!-§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §;!E§(param1:Event) : void
      {
         this.§#!A§.y = stage.stageHeight - this.§#!A§.height >> 1;
         (this.§#!A§.content as Bitmap).smoothing = true;
         this.§#!A§.filters = [new ColorMatrixFilter([1,0,0,0,-70,0,1,0,0,-70,0,0,1,0,-70,0,0,0,1,0])];
      }
      
      private function §[k§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§try §);
      }
      
      private function §try §(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§try §);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§ Z§)
         {
            this.§ Z§.x = stage.stageWidth - this.§ Z§.width >> 1;
            this.§ Z§.y = stage.stageHeight - this.§ Z§.height >> 1;
         }
      }
      
      private function §5!-§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§5!-§);
         if(stage.contains(this.§ Z§))
         {
            stage.removeChild(this.§ Z§);
            stage.removeChild(this.§#!A§);
         }
         this.§,F§();
      }
      
      private function §,F§() : void
      {
         new §]o§(this,this.§#!E§,this.§#!'§);
      }
      
      protected function §7!<§(param1:UncaughtErrorEvent) : void
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
         if(!this.§,c§)
         {
            this.§,c§ = true;
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
            §[!2§.§%]§(_loc2_,_loc6_);
            if(§^?§.§?f§ != null)
            {
               _loc4_ = §^?§.§?f§.§7#§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §-Z§.§%s§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§8o§.§5J§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§8o§.§^H§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §@!1§;
            §[!2§.§#U§(§"!C§.§9H§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §[!2§.§#U§(§"!C§.§[q§,_loc12_,_loc6_);
            }
         }
      }
   }
}
