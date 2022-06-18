package
{
   import §!$§.§ W§;
   import §!$§.§!!4§;
   import §!$§.§!d§;
   import §!$§.§"!?§;
   import §!$§.§'!A§;
   import §!$§.§'v§;
   import §!$§.§2I§;
   import §!$§.§7N§;
   import §'N§.§^]§;
   import §-!C§.§#!G§;
   import §3v§.§`!H§;
   import §4!'§.§0g§;
   import §4!'§.§50§;
   import §4c§.§,!§;
   import §;U§.§]q§;
   import §>%§.§]3§;
   import §[A§.§>!6§;
   import §`D§.§+?§;
   import §`i§.§1!=§;
   import com.rovio.assets.§''§;
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
   
   public class §7@§ extends AngryBirdsFP11
   {
      
      public static const §8!%§:String = "0.0.0.1 (r96993) beta";
      
      private static const §&!3§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §8"§:Class = §3?§;
      
      protected static var §7!%§:Class = §+!;§;
      
      protected static var §;B§:Class = §]k§;
      
      protected static var §9e§:Class = §3@§;
      
      public static var §7y§:§7@§;
       
      
      private var §<!5§:String = null;
      
      private var §6A§:String = "";
      
      private var §,U§:Boolean = false;
      
      private var §"3§:LocalConnection;
      
      private var §@!!§:String;
      
      private var §0<§:Boolean;
      
      private var §]A§:Sprite;
      
      private var §"f§:int = 0;
      
      private var §,-§:Number;
      
      private var §5i§:Number;
      
      public function §7@§(param1:§,!§, param2:Number, param3:Number)
      {
         var canvas:§,!§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§@!!§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§,-§ = initialWidth;
         this.§5i§ = initialHeight;
         this.§"3§ = new LocalConnection();
         this.§"3§.addEventListener(StatusEvent.STATUS,this.§[D§);
         try
         {
            this.§"3§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §"3§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§"3§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§@!!§);
         this.§"3§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§@!!§);
         this.§"3§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §7y§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §]q§.initialize(canvas.stage);
      }
      
      private function §2+§() : Boolean
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
      
      private function §[D§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§@!!§)
         {
            this.§"3§ = null;
            this.§^C§();
         }
      }
      
      public function §8v§(param1:String) : void
      {
         §50§.§]@§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §#!G§.§9C§),"_blank");
         this.§^C§();
      }
      
      private function §^C§() : void
      {
         this.§0<§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§0<§)
         {
            stage.frameRate = 1;
            §]3§.pause();
            this.§=3§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §=3§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§]A§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §''§.§-C§("ThankYouForPlaying");
               this.§]A§ = new _loc2_();
               this.§]A§.x = stage.stageWidth - this.§]A§.width >> 1;
               this.§]A§.y = stage.stageHeight - this.§]A§.height >> 1;
               stage.addChild(this.§]A§);
               stage.addEventListener(MouseEvent.CLICK,this.§9K§);
               this.§]A§.useHandCursor = true;
               this.§]A§.buttonMode = true;
               this.§=0§();
            }
            catch(e:Error)
            {
            }
            if(§]3§.§;v§)
            {
               §]3§.§;v§.clear();
            }
         }
      }
      
      private function §9K§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§9K§);
         if(this.§]A§)
         {
            this.§]A§.useHandCursor = false;
            this.§]A§.buttonMode = false;
         }
         this.§8v§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §^]§.init();
         §^]§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §`!H§.§3U§(§8"§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §`!H§.§3U§(§7!%§);
         this.§;@§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §`!H§.§3U§(§9e§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§;@§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §`!H§.§3U§(§;B§);
         this.§;@§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§<!5§ = stage.loaderInfo.parameters.levelId;
         if(!this.§<!5§)
         {
            this.§<!5§ = "1-1";
         }
         this.§"f§ = parseInt("0");
         if(this.§"f§ <= 0)
         {
            this.§"f§ = 0;
         }
         §[7§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§2+§())
         {
            §]3§.§;v§ = new §1!=§(stage);
         }
         else
         {
            this.§;Q§();
         }
      }
      
      private function §;Q§() : void
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
         sUserProgress = new §+?§(§#"§);
      }
      
      override protected function initStates() : void
      {
         §&n§(new §!!4§(false));
         §&n§(new §7N§(false));
         §&n§(new §"!?§(false,this.§"f§));
         §&n§(new §'v§(false));
         §&n§(new §!d§(false,this.§"f§));
         §&n§(new §2I§(false));
      }
      
      override protected function initStateLoad() : §>!6§
      {
         if(!§;!9§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §50§.§!x§("assetsUrl");
            }
         }
         return new §'!A§(true,§>!6§.§9"§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§0<§)
         {
            return;
         }
         §&L§ = true;
         if(this.§<!5§)
         {
            _loc2_ = §#!G§.§"b§(this.§<!5§);
            if(_loc2_ != this.§<!5§)
            {
               §50§.§!-§(this.§<!5§);
            }
            this.§<!5§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §#!G§.§=I§(_loc2_);
               §2O§(§ W§.§9"§);
               return;
            }
         }
         else
         {
            this.§^C§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§=0§();
      }
      
      private function §=0§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §'!1§;
            _loc2_ = §!!'§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§]A§)
         {
            this.§]A§.x = this.§,-§ - this.§]A§.width / this.§]A§.scaleX >> 1;
            this.§]A§.y = this.§5i§ - this.§]A§.height / this.§]A§.scaleY >> 1;
            this.§]A§.scaleX = stage.stageWidth / this.§,-§;
            this.§]A§.scaleY = stage.stageHeight / this.§5i§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§2+§())
         {
            §]3§.§,!2§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§%R§(_loc1_,_loc2_);
         }
         §'!1§ = _loc1_;
         §!!'§ = _loc2_;
      }
      
      public function §%R§(param1:Number, param2:Number) : void
      {
         §]q§.setViewSize(param1,param2);
      }
      
      protected function §;@§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §8!%§.replace("{svn_version}","local dev build") + "Server: " + §%Q§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §50§.§>J§(§0g§.§%?§,_loc1_.toString(),_loc1_);
         if(this.§0<§)
         {
            return;
         }
         this.§,U§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§6A§)
         {
            this.§6A§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§6A§ += String.fromCharCode(param1.keyCode);
         }
         this.§6A§ = this.§6A§.toLowerCase();
         if(this.§6A§.length > 15)
         {
            this.§6A§ = this.§6A§.substr(1);
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
