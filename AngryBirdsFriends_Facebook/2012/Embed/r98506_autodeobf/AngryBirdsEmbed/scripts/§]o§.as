package
{
   import §"!>§.§=n§;
   import §#;§.§0_§;
   import §'!7§.§6!§;
   import §-p§.§ §;
   import §1G§.§>!$§;
   import §3!A§.§9!0§;
   import §8!G§.§-Z§;
   import §=0§.§ !2§;
   import §=0§.§ for§;
   import §=0§.§&!-§;
   import §=0§.§&V§;
   import §=0§.§5!§;
   import §=0§.§8W§;
   import §=0§.§[<§;
   import §=0§.§]v§;
   import §>K§.§"!C§;
   import §>K§.§[!2§;
   import §^O§.§[!H§;
   import §`t§.§^?§;
   import com.rovio.assets.§53§;
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
   
   public class §]o§ extends AngryBirdsFP11
   {
      
      public static const §@!1§:String = "0.0.0.1 (r98506) beta";
      
      private static const §9V§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §6b§:Class = §]x§;
      
      protected static var §[!4§:Class = §#t§;
      
      protected static var §=s§:Class = § !H§;
      
      protected static var §@c§:Class = §;T§;
      
      public static var §1$§:§]o§;
       
      
      private var §0O§:String = null;
      
      private var §break§:String = "";
      
      private var §0H§:Boolean = false;
      
      private var §>;§:LocalConnection;
      
      private var §7P§:String;
      
      private var § ?§:Boolean;
      
      private var §,6§:Sprite;
      
      private var §,"§:int = 0;
      
      private var §#!E§:Number;
      
      private var §#!'§:Number;
      
      public function §]o§(param1:§=n§, param2:Number, param3:Number)
      {
         var canvas:§=n§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§7P§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§#!E§ = initialWidth;
         this.§#!'§ = initialHeight;
         this.§>;§ = new LocalConnection();
         this.§>;§.addEventListener(StatusEvent.STATUS,this.§-C§);
         try
         {
            this.§>;§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §>;§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§>;§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§7P§);
         this.§>;§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§7P§);
         this.§>;§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §1$§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §6!§.initialize(canvas.stage);
      }
      
      private function §3i§() : Boolean
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
      
      private function §-C§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§7P§)
         {
            this.§>;§ = null;
            this.§30§();
         }
      }
      
      public function §!!B§(param1:String) : void
      {
         §[!2§.§3U§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §-Z§.§%s§),"_blank");
         this.§30§();
      }
      
      private function §30§() : void
      {
         this.§ ?§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§ ?§)
         {
            stage.frameRate = 1;
            §^?§.pause();
            this.§5!F§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §5!F§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§,6§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §53§.§[N§("ThankYouForPlaying");
               this.§,6§ = new _loc2_();
               this.§,6§.x = stage.stageWidth - this.§,6§.width >> 1;
               this.§,6§.y = stage.stageHeight - this.§,6§.height >> 1;
               stage.addChild(this.§,6§);
               stage.addEventListener(MouseEvent.CLICK,this.§5]§);
               this.§,6§.useHandCursor = true;
               this.§,6§.buttonMode = true;
               this.§<!§();
            }
            catch(e:Error)
            {
            }
            if(§^?§.§]!%§)
            {
               §^?§.§]!%§.clear();
            }
         }
      }
      
      private function §5]§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§5]§);
         if(this.§,6§)
         {
            this.§,6§.useHandCursor = false;
            this.§,6§.buttonMode = false;
         }
         this.§!!B§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §9!0§.init();
         §9!0§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return § §.§]Y§(§6b§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = § §.§]Y§(§[!4§);
         this.§%`§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = § §.§]Y§(§@c§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§%`§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = § §.§]Y§(§=s§);
         this.§%`§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§0O§ = stage.loaderInfo.parameters.levelId;
         if(!this.§0O§)
         {
            this.§0O§ = "1-1";
         }
         this.§,"§ = parseInt("0");
         if(this.§,"§ <= 0)
         {
            this.§,"§ = 0;
         }
         §^!4§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§3i§())
         {
            §^?§.§]!%§ = new §0_§(stage);
         }
         else
         {
            this.§0z§();
         }
      }
      
      private function §0z§() : void
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
         sUserProgress = new §[!H§(§'a§);
      }
      
      override protected function initStates() : void
      {
         §%p§(new §5!§(false));
         §%p§(new §[<§(false));
         §%p§(new § for§(false,this.§,"§));
         §%p§(new §]v§(false));
         §%p§(new §8W§(false,this.§,"§));
         §%p§(new §&!-§(false));
      }
      
      override protected function initStateLoad() : §>!$§
      {
         if(!§8!=§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §[!2§.§8Y§("assetsUrl");
            }
         }
         return new §&V§(true,§>!$§.§?1§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§ ?§)
         {
            return;
         }
         §6!C§ = true;
         if(this.§0O§)
         {
            _loc2_ = §-Z§.§"!@§(this.§0O§);
            if(_loc2_ != this.§0O§)
            {
               §[!2§.§8x§(this.§0O§);
            }
            this.§0O§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §-Z§.§;k§(_loc2_);
               §>A§(§ !2§.§?1§);
               return;
            }
         }
         else
         {
            this.§30§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§<!§();
      }
      
      private function §<!§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §%7§;
            _loc2_ = §85§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§,6§)
         {
            this.§,6§.x = this.§#!E§ - this.§,6§.width / this.§,6§.scaleX >> 1;
            this.§,6§.y = this.§#!'§ - this.§,6§.height / this.§,6§.scaleY >> 1;
            this.§,6§.scaleX = stage.stageWidth / this.§#!E§;
            this.§,6§.scaleY = stage.stageHeight / this.§#!'§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§3i§())
         {
            §^?§.§#!0§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§2!"§(_loc1_,_loc2_);
         }
         §%7§ = _loc1_;
         §85§ = _loc2_;
      }
      
      public function §2!"§(param1:Number, param2:Number) : void
      {
         §6!§.setViewSize(param1,param2);
      }
      
      protected function §%`§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §@!1§.replace("{svn_version}","local dev build") + "Server: " + §1K§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §[!2§.§#U§(§"!C§.§ !1§,_loc1_.toString(),_loc1_);
         if(this.§ ?§)
         {
            return;
         }
         this.§0H§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§break§)
         {
            this.§break§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§break§ += String.fromCharCode(param1.keyCode);
         }
         this.§break§ = this.§break§.toLowerCase();
         if(this.§break§.length > 15)
         {
            this.§break§ = this.§break§.substr(1);
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
