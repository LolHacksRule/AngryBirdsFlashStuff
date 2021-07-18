package
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §@!,§.§8!6§;
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
   
   public class AngryBirdsKimiCanvas extends §8!6§
   {
      
      public static const §=!9§:String = "1.0.0.0 (r95771)";
       
      
      private var §=m§:Boolean = false;
      
      private var §%T§:Number;
      
      private var §^7§:Number;
      
      public function AngryBirdsKimiCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
         }
      }
      
      private function init() : void
      {
         this.§%T§ = stage.stageWidth;
         this.§^7§ = stage.stageHeight;
         §,!@§.§4g§(stage,"UA-23082676-22");
         §,!@§.enabled = true;
         §46§.§[!2§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§%D§);
         }
         else
         {
            this.§;=§();
         }
      }
      
      private function §1!G§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
         this.init();
      }
      
      private function §%D§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§%D§);
         this.§;=§();
      }
      
      protected function §;=§() : void
      {
         §46§.§3!7§(§,!@§.§ E§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§4E§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§[G§();
            }
            else
            {
               this.§[G§();
            }
         }
         else
         {
            this.§3!8§();
         }
      }
      
      private function §3!8§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§%E§);
      }
      
      private function §%E§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§%E§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §[G§() : void
      {
         new §^y§(this,this.§%T§,this.§^7§);
      }
      
      protected function §4E§(param1:UncaughtErrorEvent) : void
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
         if(!this.§=m§)
         {
            this.§=m§ = true;
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
            §46§.§>3§(_loc2_,_loc6_);
            if(§[o§.§&6§ != null)
            {
               _loc4_ = §[o§.§&6§.§-! §();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §0$§.§[C§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§?h§.§ n§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§?h§.§7"§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §=!9§;
            §46§.§3!7§(§,!@§.§#4§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §46§.§3!7§(§,!@§.§3%§,_loc12_,_loc6_);
            }
         }
      }
   }
}
