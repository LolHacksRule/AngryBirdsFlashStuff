package
{
   import §3V§.§34§;
   import §3V§.§^!G§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §`R§.§8D§;
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
   
   public class AngryBirdsEmbedCanvas extends §8D§
   {
      
      public static const §1Y§:String = "0.0.0.1 (r107045) beta";
       
      
      private var §-,§:Boolean = false;
      
      private var §;]§:ClickToPlay;
      
      private var §7]§:Loader;
      
      private var §2`§:Number;
      
      private var §!p§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§@U§);
         }
      }
      
      private function init() : void
      {
         this.§2`§ = stage.stageWidth;
         this.§!p§ = stage.stageHeight;
         §34§.§>3§(stage,"UA-23082676-19");
         §34§.enabled = true;
         §^!G§.§&! §();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§'!F§);
         }
         else
         {
            this.§@f§();
         }
      }
      
      private function §@U§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§@U§);
         this.init();
      }
      
      private function §'!F§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§'!F§);
         this.§@f§();
      }
      
      protected function §@f§() : void
      {
         §^!G§.§[V§(§34§.§#!F§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,e§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§4b§();
            }
            else
            {
               this.§^@§();
            }
         }
         else
         {
            this.§>§();
         }
      }
      
      private function §^@§() : void
      {
         AngryBirdsFP11.§>!N§ = stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-facebook-dev.appspot.com";
         this.§;]§ = new ClickToPlay();
         this.§;]§.useHandCursor = true;
         this.§;]§.buttonMode = true;
         this.§;]§.x = (stage.stageWidth - this.§;]§.width) / 2;
         this.§;]§.y = (stage.stageHeight - this.§;]§.height) / 2;
         this.§;]§.TextField_LevelName.text = §#!§.§>r§(stage.loaderInfo.parameters.levelId);
         this.§7]§ = new Loader();
         this.§7]§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3!@§);
         this.§7]§.load(new URLRequest(AngryBirdsFP11.§>!N§ + "/fb_images/levels/embed/" + stage.loaderInfo.parameters.levelId + ".png"));
         stage.addChild(this.§7]§);
         stage.addChild(this.§;]§);
         stage.addEventListener(MouseEvent.CLICK,this.§`+§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §3!@§(param1:Event) : void
      {
         this.§7]§.y = stage.stageHeight - this.§7]§.height >> 1;
         (this.§7]§.content as Bitmap).smoothing = true;
         this.§7]§.filters = [new ColorMatrixFilter([1,0,0,0,-70,0,1,0,0,-70,0,0,1,0,-70,0,0,0,1,0])];
      }
      
      private function §>§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§8!3§);
      }
      
      private function §8!3§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§8!3§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§;]§)
         {
            this.§;]§.x = stage.stageWidth - this.§;]§.width >> 1;
            this.§;]§.y = stage.stageHeight - this.§;]§.height >> 1;
         }
      }
      
      private function §`+§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§`+§);
         if(stage.contains(this.§;]§))
         {
            stage.removeChild(this.§;]§);
            stage.removeChild(this.§7]§);
         }
         this.§4b§();
      }
      
      private function §4b§() : void
      {
         new §0S§(this,this.§2`§,this.§!p§);
      }
      
      protected function §,e§(param1:UncaughtErrorEvent) : void
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
         if(!this.§-,§)
         {
            this.§-,§ = true;
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
            §^!G§.§&5§(_loc2_,_loc6_);
            if(§[!4§.§@b§ != null)
            {
               _loc4_ = §[!4§.§@b§.§8!&§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §'?§.§"t§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§,L§.§3v§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§,L§.§'>§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §1Y§;
            §^!G§.§[V§(§34§.§"!A§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §^!G§.§[V§(§34§.§<9§,_loc12_,_loc6_);
            }
         }
      }
   }
}
