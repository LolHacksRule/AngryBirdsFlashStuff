package
{
   import §"^§.§9=§;
   import §#!9§.§?Z§;
   import §3!%§.§-k§;
   import §4!6§.§<!1§;
   import §4!6§.§>r§;
   import §>!+§.§@G§;
   import §>w§.;
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
   
   public class AngryBirdsCustomCanvas extends §?Z§
   {
      
      public static const §^&§:int = 570;
      
      public static const §"#§:int = 380;
      
      public static const §5#§:String = "0.0.1.0 (r98498)";
       
      
      private var §@b§:Boolean = false;
      
      private var §<N§:Number;
      
      private var §+x§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§=C§);
         }
      }
      
      private function init() : void
      {
         var _loc1_:String = §@G§.§6C§("window.location.href.toString");
         if(_loc1_.indexOf(".swf") >= 0)
         {
            throw new Error("Cannot be viewed directly.");
         }
         this.§<N§ = stage.stageWidth;
         this.§+x§ = stage.stageHeight;
         §<!1§.§;!G§(stage,"UA-23082676-22");
         §<!1§.enabled = true;
         §>r§.§3-§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§&U§);
         }
         else
         {
            this.§4Y§();
         }
      }
      
      private function §=C§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§=C§);
         this.init();
      }
      
      private function §&U§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§&U§);
         this.§4Y§();
      }
      
      protected function §4Y§() : void
      {
         §>r§.§!§(§<!1§.§;!L§);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§ !6§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
         {
            if(!stage.loaderInfo.parameters.paused)
            {
               this.§=5§();
            }
            else
            {
               this.§=5§();
            }
         }
         else
         {
            this.§1Y§();
         }
      }
      
      private function §1Y§() : void
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
         stage.addEventListener(MouseEvent.CLICK,this.§#R§);
      }
      
      private function §#R§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§#R§);
         navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §=5§() : void
      {
         new §#'§(this,this.§<N§,this.§+x§);
      }
      
      protected function § !6§(param1:UncaughtErrorEvent) : void
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
         if(!this.§@b§)
         {
            this.§@b§ = true;
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
            §>r§.§%o§(_loc2_,_loc6_);
            if(§9=§.§'S§ != null)
            {
               _loc4_ = §9=§.§'S§.§`q§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §-k§.§%D§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§#0§.§#4§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§#0§.§3!<§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §5#§;
            §>r§.§!§(§<!1§.§]`§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §>r§.§!§(§<!1§.§2y§,_loc12_,_loc6_);
            }
         }
      }
   }
}
