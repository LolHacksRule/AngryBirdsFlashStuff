package
{
   import §'!3§.§&!H§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §?>§.§19§;
   import §^R§.§6!-§;
   import §`!8§.§?'§;
   import §`!8§.§^!0§;
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
   
   public class AngryBirdsCustomCanvas extends §19§
   {
      
      public static const §6!I§:int = 570;
      
      public static const §4U§:int = 380;
      
      public static const §8=§:String = "0.0.1.0 (r98525)";
       
      
      private var §<!0§:Boolean = false;
      
      private var §"s§:Number;
      
      private var §=r§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§`B§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §6!-§.§'!P§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§"s§ = stage.stageWidth;
         this.§=r§ = stage.stageHeight;
         §^!0§.§^!L§(stage,"UA-23082676-22");
         §^!0§.enabled = true;
         §?'§.§8#§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§3r§);
         }
         else
         {
            this.§2N§();
         }
      }
      
      private function §`B§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§`B§);
         this.init();
      }
      
      private function §3r§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§3r§);
         this.§2N§();
      }
      
      protected function §2N§() : void
      {
         §?'§.§%P§(§^!0§.§^!F§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§=A§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§super§();
            }
            else
            {
               this.§super§();
            }
         }
         else
         {
            this.§8!G§();
         }
      }
      
      private function §8!G§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§+!C§);
      }
      
      private function §+!C§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§+!C§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §super§() : void
      {
         new §=!<§(this,this.§"s§,this.§=r§);
      }
      
      protected function §=A§(param1:UncaughtErrorEvent) : void
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
         if(!this.§<!0§)
         {
            this.§<!0§ = true;
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
            §?'§.§&!C§(_loc2_,_loc6_);
            if(§0!E§.§`#§ != null)
            {
               _loc4_ = §0!E§.§`#§.§`!?§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §&u§.§ !+§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§&!H§.§+!H§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§&!H§.§+_§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §8=§;
            §?'§.§%P§(§^!0§.§?!J§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §?'§.§%P§(§^!0§.§,n§,_loc12_,_loc6_);
            }
         }
      }
   }
}
