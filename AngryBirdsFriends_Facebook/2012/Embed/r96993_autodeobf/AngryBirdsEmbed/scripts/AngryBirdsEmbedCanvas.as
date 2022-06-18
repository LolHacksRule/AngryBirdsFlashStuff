package
{
   import §-!C§.§#!G§;
   import §4!'§.§0g§;
   import §4!'§.§50§;
   import §4c§.§,!§;
   import §8!#§.§<n§;
   import §>%§.§]3§;
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
   
   public class AngryBirdsEmbedCanvas extends §,!§
   {
      
      public static const §8!%§:String = "0.0.0.1 (r96993) beta";
       
      
      private var §2>§:Boolean = false;
      
      private var §&T§:ClickToPlay;
      
      private var §-!4§:Loader;
      
      private var §,-§:Number;
      
      private var §5i§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§?k§);
         }
      }
      
      private function init() : void
      {
         this.§,-§ = stage.stageWidth;
         this.§5i§ = stage.stageHeight;
         §0g§.§"!;§(stage,"UA-23082676-19");
         §0g§.enabled = true;
         §50§.§>K§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§@!@§);
         }
         else
         {
            this.§5!4§();
         }
      }
      
      private function §?k§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?k§);
         this.init();
      }
      
      private function §@!@§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§@!@§);
         this.§5!4§();
      }
      
      protected function §5!4§() : void
      {
         §50§.§>J§(§0g§.§!!2§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§ U§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§,0§();
            }
            else
            {
               this.§-e§();
            }
         }
         else
         {
            this.§+!%§();
         }
      }
      
      private function §-e§() : void
      {
         AngryBirdsFP11.§#"§ = stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-facebook-dev.appspot.com";
         this.§&T§ = new ClickToPlay();
         this.§&T§.useHandCursor = true;
         this.§&T§.buttonMode = true;
         this.§&T§.x = (stage.stageWidth - this.§&T§.width) / 2;
         this.§&T§.y = (stage.stageHeight - this.§&T§.height) / 2;
         this.§&T§.TextField_LevelName.text = §"S§.§?!9§(stage.loaderInfo.parameters.levelId);
         this.§-!4§ = new Loader();
         this.§-!4§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0q§);
         this.§-!4§.load(new URLRequest(AngryBirdsFP11.§#"§ + "/fb_images/levels/embed/" + stage.loaderInfo.parameters.levelId + ".png"));
         stage.addChild(this.§-!4§);
         stage.addChild(this.§&T§);
         stage.addEventListener(MouseEvent.CLICK,this.§2!A§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §0q§(param1:Event) : void
      {
         this.§-!4§.y = stage.stageHeight - this.§-!4§.height >> 1;
         (this.§-!4§.content as Bitmap).smoothing = true;
         this.§-!4§.filters = [new ColorMatrixFilter([1,0,0,0,-70,0,1,0,0,-70,0,0,1,0,-70,0,0,0,1,0])];
      }
      
      private function §+!%§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§7!$§);
      }
      
      private function §7!$§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§7!$§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§&T§)
         {
            this.§&T§.x = stage.stageWidth - this.§&T§.width >> 1;
            this.§&T§.y = stage.stageHeight - this.§&T§.height >> 1;
         }
      }
      
      private function §2!A§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§2!A§);
         if(stage.contains(this.§&T§))
         {
            stage.removeChild(this.§&T§);
            stage.removeChild(this.§-!4§);
         }
         this.§,0§();
      }
      
      private function §,0§() : void
      {
         new §7@§(this,this.§,-§,this.§5i§);
      }
      
      protected function § U§(param1:UncaughtErrorEvent) : void
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
         if(!this.§2>§)
         {
            this.§2>§ = true;
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
            §50§.§-6§(_loc2_,_loc6_);
            if(§]3§.§4#§ != null)
            {
               _loc4_ = §]3§.§4#§.§5A§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §#!G§.§9C§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§<n§.§?@§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§<n§.§;!?§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §8!%§;
            §50§.§>J§(§0g§.§2"§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §50§.§>J§(§0g§.§ set§,_loc12_,_loc6_);
            }
         }
      }
   }
}
