package
{
   import § !;§.§%'§;
   import § !;§.§^!3§;
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §8!9§.§<!7§;
   import §>!C§.§6M§;
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
   
   public class AngryBirdsEmbedCanvas extends §<!7§
   {
      
      public static const §#d§:String = "1.0.0.2 (r97324) beta";
       
      
      private var §8!>§:Boolean = false;
      
      private var §29§:ClickToPlay;
      
      private var §2!B§:Number;
      
      private var §2!0§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
         }
      }
      
      private function init() : void
      {
         this.§2!B§ = stage.stageWidth;
         this.§2!0§ = stage.stageHeight;
         §^!3§.§8'§(stage,"UA-23082676-25");
         §^!3§.enabled = true;
         §%'§.§8e§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§+p§);
         }
         else
         {
            this.§1O§();
         }
      }
      
      private function §6!4§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
         this.init();
      }
      
      private function §+p§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§+p§);
         this.§1O§();
      }
      
      protected function §1O§() : void
      {
         §%'§.§#r§(§^!3§.§6!%§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§%"§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§[§();
            }
            else
            {
               this.§&!§();
            }
         }
         else
         {
            this.§4f§();
         }
      }
      
      private function §&!§() : void
      {
         AngryBirdsFP11.§+!E§ = stage.loaderInfo.parameters.serverRoot || "http://head.angrybirds-adventure.appspot.com/";
         this.§29§ = new ClickToPlay();
         this.§29§.useHandCursor = true;
         this.§29§.buttonMode = true;
         var _loc1_:String = stage.loaderInfo.parameters.levelId;
         this.§29§.TextField_LevelName.text = "Level " + _loc1_.split("-")[1];
         stage.addChild(this.§29§);
         stage.addEventListener(MouseEvent.CLICK,this.§5m§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      private function §4f§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§&-§);
      }
      
      private function §&-§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§&-§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§29§)
         {
            this.§29§.x = stage.stageWidth - this.§29§.width >> 1;
            this.§29§.y = stage.stageHeight - this.§29§.height >> 1;
         }
      }
      
      private function §5m§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§5m§);
         if(stage.contains(this.§29§))
         {
            stage.removeChild(this.§29§);
         }
         this.§[§();
      }
      
      private function §[§() : void
      {
         new §@!?§(this,this.§2!B§,this.§2!0§);
      }
      
      protected function §%"§(param1:UncaughtErrorEvent) : void
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
         if(!this.§8!>§)
         {
            this.§8!>§ = true;
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
            §%'§.§^D§(_loc2_,_loc6_);
            if(§,!!§.§-k§ != null)
            {
               _loc4_ = §,!!§.§-k§.§%k§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §6M§.§[z§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§'_§.§17§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§'_§.§;'§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §#d§;
            §%'§.§#r§(§^!3§.§4n§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §%'§.§#r§(§^!3§.§4§,_loc12_,_loc6_);
            }
         }
      }
   }
}
