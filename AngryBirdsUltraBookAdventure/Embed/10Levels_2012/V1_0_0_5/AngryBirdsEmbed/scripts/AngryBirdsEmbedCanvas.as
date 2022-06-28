package
{
   import §#!;§.§;T§;
   import §#'§.§'Q§;
   import §4!H§.;
   import §4!H§.§["§;
   import §5H§.§[k§;
   import §6J§.§5j§;
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
   
   public class AngryBirdsEmbedCanvas extends §'Q§
   {
      
      public static const §#0§:String = "1.0.0.5 (r97394) beta";
       
      
      private var §&!!§:Boolean = false;
      
      private var §#!1§:ClickToPlay;
      
      private var §,v§:Number;
      
      private var §%C§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
         }
      }
      
      private function init() : void
      {
         this.§,v§ = stage.stageWidth;
         this.§%C§ = stage.stageHeight;
         §#3§.§97§(stage,"UA-23082676-25");
         §#3§.enabled = true;
         §["§.§63§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§]!>§);
         }
         else
         {
            this.§null §();
         }
      }
      
      private function §7!%§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
         this.init();
      }
      
      private function §]!>§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§]!>§);
         this.§null §();
      }
      
      protected function §null §() : void
      {
         §["§.§,9§(§#3§.§?i§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§4#§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§!2§();
            }
            else
            {
               this.§3v§();
            }
         }
         else
         {
            this.§6!5§();
         }
      }
      
      private function §3v§() : void
      {
         AngryBirdsFP11.§+u§ = stage.loaderInfo.parameters.serverRoot || "http://ab-in-adventure.appspot.com//";
         this.§#!1§ = new ClickToPlay();
         this.§#!1§.useHandCursor = true;
         this.§#!1§.buttonMode = true;
         var _loc1_:String = stage.loaderInfo.parameters.levelId;
         this.§#!1§.TextField_LevelName.text = "Level " + _loc1_.split("-")[1];
         stage.addChild(this.§#!1§);
         stage.addEventListener(MouseEvent.CLICK,this.§0!0§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §6!5§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§%A§);
      }
      
      private function §%A§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§%A§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§#!1§)
         {
            this.§#!1§.x = stage.stageWidth - this.§#!1§.width >> 1;
            this.§#!1§.y = stage.stageHeight - this.§#!1§.height >> 1;
         }
      }
      
      private function §0!0§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§0!0§);
         if(stage.contains(this.§#!1§))
         {
            stage.removeChild(this.§#!1§);
         }
         this.§!2§();
      }
      
      private function §!2§() : void
      {
         new §#W§(this,this.§,v§,this.§%C§);
      }
      
      protected function §4#§(param1:UncaughtErrorEvent) : void
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
         if(!this.§&!!§)
         {
            this.§&!!§ = true;
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
            §["§.§ g§(_loc2_,_loc6_);
            if(§[k§.§;!+§ != null)
            {
               _loc4_ = §[k§.§;!+§.§?c§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §5j§.§%V§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§;T§.§,H§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§;T§.§>!,§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §#0§;
            §["§.§,9§(§#3§.§]W§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §["§.§,9§(§#3§.§"1§,_loc12_,_loc6_);
            }
         }
      }
   }
}
