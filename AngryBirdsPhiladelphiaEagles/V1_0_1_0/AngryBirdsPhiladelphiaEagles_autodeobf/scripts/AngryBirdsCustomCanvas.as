package
{
   import §"I§.§7#§;
   import §"I§.set;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §5^§.§3=§;
   import §<!F§.§-q§;
   import §@w§.§2G§;
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
   
   public class AngryBirdsCustomCanvas extends §-q§
   {
      
      public static const §=!M§:int = 570;
      
      public static const §"!§:int = 380;
      
      public static const §9V§:String = "0.0.1.0 (r98639)";
       
      
      private var §-t§:Boolean = false;
      
      private var §,$§:Number;
      
      private var §6!-§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§!!I§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §3=§.§-!6§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§,$§ = stage.stageWidth;
         this.§6!-§ = stage.stageHeight;
         §7#§.§]!A§(stage,"UA-23082676-22");
         §7#§.enabled = true;
         set.§ !&§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§1m§);
         }
         else
         {
            this.§with§();
         }
      }
      
      private function §!!I§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§!!I§);
         this.init();
      }
      
      private function §1m§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§1m§);
         this.§with§();
      }
      
      protected function §with§() : void
      {
         set.§>!"§(§7#§.§ b§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§-1§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§,!§();
            }
            else
            {
               this.§,!§();
            }
         }
         else
         {
            this.§!,§();
         }
      }
      
      private function §!,§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§8!7§);
      }
      
      private function §8!7§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§8!7§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §,!§() : void
      {
         new §#g§(this,this.§,$§,this.§6!-§);
      }
      
      protected function §-1§(param1:UncaughtErrorEvent) : void
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
         if(!this.§-t§)
         {
            this.§-t§ = true;
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
            set.§4`§(_loc2_,_loc6_);
            if(§2G§.§4T§ != null)
            {
               _loc4_ = §2G§.§4T§.§50§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §^n§.§-7§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§>$§.§-U§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§>$§.§<8§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §9V§;
            set.§>!"§(§7#§.§0!&§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               set.§>!"§(§7#§.§-'§,_loc12_,_loc6_);
            }
         }
      }
   }
}
