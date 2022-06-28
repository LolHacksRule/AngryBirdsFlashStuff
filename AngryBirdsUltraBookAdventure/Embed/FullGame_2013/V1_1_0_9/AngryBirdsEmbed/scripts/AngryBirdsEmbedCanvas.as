package
{
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7j§.§5!N§;
   import §=!0§.§>I§;
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
   
   public class AngryBirdsEmbedCanvas extends §5!N§
   {
      
      public static const §#!3§:String = "1.0.0.5 (r106878) beta";
       
      
      private var §&!>§:Boolean = false;
      
      private var §7!N§:ClickToPlay;
      
      private var §'v§:Number;
      
      private var §>Z§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
         }
      }
      
      private function init() : void
      {
         this.§'v§ = stage.stageWidth;
         this.§>Z§ = stage.stageHeight;
         §-Q§.§%x§(stage,"UA-23082676-25");
         §-Q§.enabled = true;
         §;9§.§0!7§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§,9§);
         }
         else
         {
            this.§in§();
         }
      }
      
      private function §!!0§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
         this.init();
      }
      
      private function §,9§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§,9§);
         this.§in§();
      }
      
      protected function §in§() : void
      {
         §;9§.§"!A§(§-Q§.§ 2§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1@§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§3V§();
            }
            else
            {
               this.§%%§();
            }
         }
         else
         {
            this.§2+§();
         }
      }
      
      private function §%%§() : void
      {
         AngryBirdsFP11.§,A§ = stage.loaderInfo.parameters.serverRoot || "http://ab-in-adventure.appspot.com//";
         this.§7!N§ = new ClickToPlay();
         this.§7!N§.useHandCursor = true;
         this.§7!N§.buttonMode = true;
         var _loc1_:String = stage.loaderInfo.parameters.levelId;
         this.§7!N§.TextField_LevelName.text = "Level " + _loc1_.split("-")[1];
         stage.addChild(this.§7!N§);
         stage.addEventListener(MouseEvent.CLICK,this.§<#§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §2+§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§'!G§);
      }
      
      private function §'!G§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§'!G§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§7!N§)
         {
            this.§7!N§.x = stage.stageWidth - this.§7!N§.width >> 1;
            this.§7!N§.y = stage.stageHeight - this.§7!N§.height >> 1;
         }
      }
      
      private function §<#§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§<#§);
         if(stage.contains(this.§7!N§))
         {
            stage.removeChild(this.§7!N§);
         }
         this.§3V§();
      }
      
      private function §3V§() : void
      {
         new §<!7§(this,this.§'v§,this.§>Z§);
      }
      
      protected function §1@§(param1:UncaughtErrorEvent) : void
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
         if(!this.§&!>§)
         {
            this.§&!>§ = true;
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
            §;9§.§<w§(_loc2_,_loc6_);
            if(§=w§.§ !H§ != null)
            {
               _loc4_ = §=w§.§ !H§.§8!;§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §[4§.§"!>§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§>I§.§`S§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§>I§.§0P§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §#!3§;
            §;9§.§"!A§(§-Q§.§@! §,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §;9§.§"!A§(§-Q§.§?c§,_loc12_,_loc6_);
            }
         }
      }
   }
}
