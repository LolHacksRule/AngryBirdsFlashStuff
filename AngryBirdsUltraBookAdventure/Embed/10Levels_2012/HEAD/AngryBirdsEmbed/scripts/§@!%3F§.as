package
{
   import § !;§.§%'§;
   import § !;§.§^!3§;
   import §"!5§.§,!!§;
   import §%x§.§6]§;
   import §'R§.§2g§;
   import §0!§.§while§;
   import §2!<§.§?!?§;
   import §2§.§@p§;
   import §8!9§.§<!7§;
   import §=!4§.§>y§;
   import §>!C§.§6M§;
   import §`@§.§ @§;
   import §`@§.§ z§;
   import §`@§.;
   import §`@§.§&Z§;
   import §`@§.§+o§;
   import §`@§.§=!$§;
   import §`@§.§?3§;
   import §`@§.§^s§;
   import com.rovio.assets.§7!D§;
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
   
   public class §@!?§ extends AngryBirdsFP11
   {
      
      public static const §#d§:String = "1.0.0.2 (r97324) beta";
      
      private static const §03§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §?k§:Class = §0$§;
      
      protected static var §<J§:Class = §"#§;
      
      protected static var §>O§:Class = §'Q§;
      
      protected static var §@!8§:Class = §%_§;
      
      public static var §%P§:§@!?§;
       
      
      private var §[!>§:String = null;
      
      private var §%8§:String = "";
      
      private var §5;§:Boolean = false;
      
      private var § e§:LocalConnection;
      
      private var §;2§:String;
      
      private var §!3§:Boolean;
      
      private var §4!?§:Sprite;
      
      private var §<!?§:int = 0;
      
      private var §2!B§:Number;
      
      private var §2!0§:Number;
      
      public function §@!?§(param1:§<!7§, param2:Number, param3:Number)
      {
         var canvas:§<!7§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§;2§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§2!B§ = initialWidth;
         this.§2!0§ = initialHeight;
         this.§ e§ = new LocalConnection();
         this.§ e§.addEventListener(StatusEvent.STATUS,this.§8"§);
         try
         {
            this.§ e§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               § e§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§ e§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§;2§);
         this.§ e§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§;2§);
         this.§ e§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §%P§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §>y§.initialize(canvas.stage);
      }
      
      private function §",§() : Boolean
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
      
      private function §8"§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§;2§)
         {
            this.§ e§ = null;
            this.§^j§();
         }
      }
      
      public function §7a§(param1:String) : void
      {
         §%'§.§71§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirdsultrabook/?ref=wallPlay" + param1 + "&levelId=" + §6M§.§[z§),"_blank");
         this.§^j§();
      }
      
      private function §^j§() : void
      {
         this.§!3§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§!3§)
         {
            stage.frameRate = 1;
            §,!!§.pause();
            this.§]!F§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §]!F§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§4!?§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §7!D§.§?0§("ThankYouForPlaying");
               this.§4!?§ = new _loc2_();
               this.§4!?§.x = 0;
               this.§4!?§.y = 0;
               stage.addChild(this.§4!?§);
               stage.addEventListener(MouseEvent.CLICK,this.§%L§);
               this.§4!?§.useHandCursor = true;
               this.§4!?§.buttonMode = true;
               this.§!!#§();
            }
            catch(e:Error)
            {
            }
            if(§,!!§.§;4§)
            {
               §,!!§.§;4§.clear();
            }
         }
      }
      
      private function §%L§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§%L§);
         if(this.§4!?§)
         {
            this.§4!?§.useHandCursor = false;
            this.§4!?§.buttonMode = false;
         }
         this.§7a§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §?!?§.init();
         §?!?§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §@p§.§]o§(§?k§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §@p§.§]o§(§<J§);
         this.§=i§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §@p§.§]o§(§@!8§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§=i§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §@p§.§]o§(§>O§);
         this.§=i§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§[!>§ = stage.loaderInfo.parameters.levelId;
         if(!this.§[!>§)
         {
            this.§[!>§ = "1-1";
         }
         this.§<!?§ = parseInt("0");
         if(this.§<!?§ <= 0)
         {
            this.§<!?§ = 0;
         }
         §-E§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§",§())
         {
            §,!!§.§;4§ = new §6]§(stage);
         }
         else
         {
            this.§"Z§();
         }
      }
      
      private function §"Z§() : void
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
         sUserProgress = new §2g§(§+!E§);
      }
      
      override protected function initStates() : void
      {
         §7!&§(new §+o§(false));
         §7!&§(new §=!$§(false));
         §7!&§(new §^s§(false,this.§<!?§));
         §7!&§(new §&Z§(false));
         §7!&§(new § z§(false,this.§<!?§));
         §7!&§(new §#7§(false));
      }
      
      override protected function initStateLoad() : §while§
      {
         if(!§[!2§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §%'§.§?&§("assetsUrl");
            }
         }
         return new §?3§(true,§while§.§0!7§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§!3§)
         {
            return;
         }
         §with§ = true;
         if(this.§[!>§)
         {
            _loc2_ = §6M§.§ 1§(this.§[!>§);
            if(_loc2_ != this.§[!>§)
            {
               §%'§.§<_§(this.§[!>§);
            }
            this.§[!>§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §6M§.§<H§(_loc2_);
               §3S§(§ @§.§0!7§);
               return;
            }
         }
         else
         {
            this.§^j§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§!!#§();
      }
      
      private function §!!#§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §;B§;
            _loc2_ = §=!#§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§4!?§)
         {
            this.§4!?§.x = 0;
            this.§4!?§.y = 0;
            this.§4!?§.scaleX = stage.stageWidth / this.§2!B§;
            this.§4!?§.scaleY = stage.stageHeight / this.§2!0§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§",§())
         {
            §,!!§.§1%§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§>@§(_loc1_,_loc2_);
         }
         §;B§ = _loc1_;
         §=!#§ = _loc2_;
      }
      
      public function §>@§(param1:Number, param2:Number) : void
      {
         §>y§.setViewSize(param1,param2);
      }
      
      protected function §=i§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §#d§.replace("{svn_version}","local dev build") + "Server: " + §]7§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §%'§.§#r§(§^!3§.§#+§,_loc1_.toString(),_loc1_);
         if(this.§!3§)
         {
            return;
         }
         this.§5;§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§%8§)
         {
            this.§%8§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§%8§ += String.fromCharCode(param1.keyCode);
         }
         this.§%8§ = this.§%8§.toLowerCase();
         if(this.§%8§.length > 15)
         {
            this.§%8§ = this.§%8§.substr(1);
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
