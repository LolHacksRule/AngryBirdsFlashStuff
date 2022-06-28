package
{
   import §#h§.§ !H§;
   import §%!6§.§+9§;
   import §%!6§.§5!A§;
   import §+!?§.§"h§;
   import §+K§.§ !-§;
   import §2?§.§3!#§;
   import §3G§.§null §;
   import §6H§.§?i§;
   import §8c§.§ p§;
   import §;m§.§!!8§;
   import §;m§.§&!3§;
   import §;m§.§&0§;
   import §;m§.§&Z§;
   import §;m§.§,!>§;
   import §;m§.§-u§;
   import §;m§.§3!1§;
   import §;m§.§3'§;
   import §=!B§.§59§;
   import §>K§.§=!I§;
   import com.rovio.assets.§!Q§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §+!0§ extends AngryBirdsFP11
   {
      
      public static const §4l§:String = "1.0.0.5 (r97703) beta";
      
      private static const §'$§:String = "AngryBirdsEmbedIntelSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §?R§:Class = §@J§;
      
      protected static var §0!%§:Class = §3v§;
      
      protected static var §?J§:Class = §>%§;
      
      protected static var §7r§:Class = §&!<§;
      
      public static var §2[§:§+!0§;
       
      
      private var §3d§:String = null;
      
      private var §[!%§:String = "";
      
      private var §1%§:Boolean = false;
      
      private var §&!H§:LocalConnection;
      
      private var §0H§:String;
      
      private var §[[§:Boolean;
      
      private var §!$§:Sprite;
      
      private var §>,§:int = 0;
      
      private var §8!?§:Number;
      
      private var §=!8§:Number;
      
      public function §+!0§(param1:§ p§, param2:Number, param3:Number)
      {
         var canvas:§ p§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§0H§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§8!?§ = initialWidth;
         this.§=!8§ = initialHeight;
         this.§&!H§ = new LocalConnection();
         this.§&!H§.addEventListener(StatusEvent.STATUS,this.§4w§);
         try
         {
            this.§&!H§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §&!H§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§&!H§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§0H§);
         this.§&!H§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§0H§);
         this.§&!H§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §2[§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §3!#§.initialize(canvas.stage);
      }
      
      private function §,Z§() : Boolean
      {
         var _loc2_:Stage3D = null;
         var _loc1_:int = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(_loc2_)
            {
               _loc1_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc1_ == 0)
         {
            return false;
         }
         return true;
      }
      
      private function §4w§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§0H§)
         {
            this.§&!H§ = null;
            this.§ set§();
         }
      }
      
      public function §5"§(param1:String) : void
      {
         §+9§.§1!3§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/ab_in_adventure/?ref=wallPlay" + param1 + "&levelId=" + §59§.§%j§),"_blank");
         this.§ set§();
      }
      
      private function § set§() : void
      {
         this.§[[§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§[[§)
         {
            stage.frameRate = 1;
            §"h§.pause();
            this.§7!2§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §7!2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§!$§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §!Q§.§^!H§("ThankYouForPlaying");
               this.§!$§ = new _loc2_();
               this.§!$§.x = 0;
               this.§!$§.y = 0;
               stage.addChild(this.§!$§);
               stage.addEventListener(MouseEvent.CLICK,this.§5a§);
               this.§!$§.useHandCursor = true;
               this.§!$§.buttonMode = true;
               this.§<b§();
            }
            catch(e:Error)
            {
            }
            if(§"h§.§1C§)
            {
               §"h§.§1C§.clear();
            }
         }
      }
      
      private function §5a§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§5a§);
         if(this.§!$§)
         {
            this.§!$§.useHandCursor = false;
            this.§!$§.buttonMode = false;
         }
         this.§5"§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         § !H§.init();
         § !H§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §=!I§.§]g§(§?R§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=!I§.§]g§(§0!%§);
         this.§;u§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §=!I§.§]g§(§7r§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§;u§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §=!I§.§]g§(§?J§);
         this.§;u§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§3d§ = stage.loaderInfo.parameters.levelId;
         if(!this.§3d§)
         {
            this.§3d§ = "1-1";
         }
         this.§>,§ = parseInt("0");
         if(this.§>,§ <= 0)
         {
            this.§>,§ = 0;
         }
         §0R§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§,Z§())
         {
            §"h§.§1C§ = new §null §(stage);
         }
         else
         {
            this.§3F§();
         }
      }
      
      private function §3F§() : void
      {
         var _loc1_:TextField = new TextField();
         _loc1_.text = "The game doesn\'t yet run on this device";
         _loc1_.textColor = 0;
         _loc1_.selectable = false;
         _loc1_.height = 30;
         _loc1_.width = 300;
         _loc1_.autoSize = TextFieldAutoSize.CENTER;
         stage.addChild(_loc1_);
         _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
         _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new § !-§(§]!,§);
      }
      
      override protected function initStates() : void
      {
         §5!%§(new §,!>§(false));
         §5!%§(new §3!1§(false));
         §5!%§(new §&Z§(false,this.§>,§));
         §5!%§(new §!!8§(false));
         §5!%§(new §-u§(false,this.§>,§));
         §5!%§(new §&!3§(false));
      }
      
      override protected function initStateLoad() : §?i§
      {
         if(!§0b§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §+9§.§4!&§("assetsUrl");
            }
         }
         return new §&0§(true,§?i§.§-!A§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§[[§)
         {
            return;
         }
         §<!>§ = true;
         if(this.§3d§)
         {
            _loc2_ = §59§.§7?§(this.§3d§);
            if(_loc2_ != this.§3d§)
            {
               §+9§.§-t§(this.§3d§);
            }
            this.§3d§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §59§.§6!9§(_loc2_);
               each(§3'§.§-!A§);
               return;
            }
         }
         else
         {
            this.§ set§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§<b§();
      }
      
      private function §<b§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §&]§;
            _loc2_ = §-g§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§!$§)
         {
            this.§!$§.x = 0;
            this.§!$§.y = 0;
            this.§!$§.scaleX = stage.stageWidth / this.§8!?§;
            this.§!$§.scaleY = stage.stageHeight / this.§=!8§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§,Z§())
         {
            §"h§.§19§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§,+§(_loc1_,_loc2_);
         }
         §&]§ = _loc1_;
         §-g§ = _loc2_;
      }
      
      public function §,+§(param1:Number, param2:Number) : void
      {
         §3!#§.setViewSize(param1,param2);
      }
      
      protected function §;u§(param1:XML, param2:XML, param3:Array) : void
      {
         var _loc4_:String = null;
         var _loc5_:XML = null;
         for each(_loc4_ in param3)
         {
            for each(_loc5_ in param1[_loc4_].§*§)
            {
               param2[_loc4_].appendChild(_loc5_);
            }
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §4l§.replace("{svn_version}","local dev build") + "Server: " + §4!?§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §+9§.§]c§(§5!A§.§ m§,_loc1_.toString(),_loc1_);
         if(this.§[[§)
         {
            return;
         }
         this.§1%§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§[!%§)
         {
            this.§[!%§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§[!%§ += String.fromCharCode(param1.keyCode);
         }
         this.§[!%§ = this.§[!%§.toLowerCase();
         if(this.§[!%§.length > 15)
         {
            this.§[!%§ = this.§[!%§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
