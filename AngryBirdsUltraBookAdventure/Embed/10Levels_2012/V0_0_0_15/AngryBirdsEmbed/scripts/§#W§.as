package
{
   import §"!&§.§=F§;
   import §#'§.§'Q§;
   import §+!"§.§=L§;
   import §+!C§.§`O§;
   import §4!H§.;
   import §4!H§.§["§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §;!B§.§5U§;
   import §>!A§.§#!3§;
   import §>!A§.§+=§;
   import §>!A§.§,!7§;
   import §>!A§.§,w§;
   import §>!A§.§0$§;
   import §>!A§.§=!$§;
   import §>!A§.§^!-§;
   import §>!A§.§`I§;
   import §?b§.§8! §;
   import §@D§.§6I§;
   import com.rovio.assets.§'!H§;
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
   
   public class §#W§ extends AngryBirdsFP11
   {
      
      public static const §#0§:String = "0.0.0.1 (r97255) beta";
      
      private static const §>5§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §;i§:Class = §<b§;
      
      protected static var §@%§:Class = §'J§;
      
      protected static var §+!H§:Class = §,<§;
      
      protected static var §`!E§:Class = §`s§;
      
      public static var §[G§:§#W§;
       
      
      private var §1!"§:String = null;
      
      private var §[F§:String = "";
      
      private var §<3§:Boolean = false;
      
      private var §5!$§:LocalConnection;
      
      private var §]"§:String;
      
      private var §>i§:Boolean;
      
      private var § Y§:Sprite;
      
      private var §3Z§:int = 0;
      
      private var §,v§:Number;
      
      private var §%C§:Number;
      
      public function §#W§(param1:§'Q§, param2:Number, param3:Number)
      {
         var canvas:§'Q§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§]"§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§,v§ = initialWidth;
         this.§%C§ = initialHeight;
         this.§5!$§ = new LocalConnection();
         this.§5!$§.addEventListener(StatusEvent.STATUS,this.§2!!§);
         try
         {
            this.§5!$§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §5!$§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§5!$§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§]"§);
         this.§5!$§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§]"§);
         this.§5!$§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §[G§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §5U§.initialize(canvas.stage);
      }
      
      private function §4a§() : Boolean
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
      
      private function §2!!§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§]"§)
         {
            this.§5!$§ = null;
            this.§0!"§();
         }
      }
      
      public function §=K§(param1:String) : void
      {
         §["§.§1!&§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/ultraangerdev/?ref=wallPlay" + param1 + "&levelId=" + §5j§.§%V§),"_blank");
         this.§0!"§();
      }
      
      private function §0!"§() : void
      {
         this.§>i§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§>i§)
         {
            stage.frameRate = 1;
            §[k§.pause();
            this.§#1§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §#1§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§ Y§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §'!H§.§&!G§("ThankYouForPlaying");
               this.§ Y§ = new _loc2_();
               this.§ Y§.x = 0;
               this.§ Y§.y = 0;
               stage.addChild(this.§ Y§);
               stage.addEventListener(MouseEvent.CLICK,this.§"w§);
               this.§ Y§.useHandCursor = true;
               this.§ Y§.buttonMode = true;
               this.§6D§();
            }
            catch(e:Error)
            {
            }
            if(§[k§.§&@§)
            {
               §[k§.§&@§.clear();
            }
         }
      }
      
      private function §"w§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§"w§);
         if(this.§ Y§)
         {
            this.§ Y§.useHandCursor = false;
            this.§ Y§.buttonMode = false;
         }
         this.§=K§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §6I§.init();
         §6I§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §=L§.§!#§(§;i§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=L§.§!#§(§@%§);
         this.§%!&§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §=L§.§!#§(§`!E§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§%!&§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §=L§.§!#§(§+!H§);
         this.§%!&§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§1!"§ = stage.loaderInfo.parameters.levelId;
         if(!this.§1!"§)
         {
            this.§1!"§ = "1-1";
         }
         this.§3Z§ = parseInt("0");
         if(this.§3Z§ <= 0)
         {
            this.§3Z§ = 0;
         }
         §4C§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§4a§())
         {
            §[k§.§&@§ = new §8! §(stage);
         }
         else
         {
            this.§2l§();
         }
      }
      
      private function §2l§() : void
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
         sUserProgress = new §`O§(§+u§);
      }
      
      override protected function initStates() : void
      {
         §^'§(new §0$§(false));
         §^'§(new §^!-§(false));
         §^'§(new §=!$§(false,this.§3Z§));
         §^'§(new §`I§(false));
         §^'§(new §+=§(false,this.§3Z§));
         §^'§(new §,!7§(false));
      }
      
      override protected function initStateLoad() : §=F§
      {
         if(!§,#§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §["§.§<G§("assetsUrl");
            }
         }
         return new §#!3§(true,§=F§.§?x§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§>i§)
         {
            return;
         }
         §'^§ = true;
         if(this.§1!"§)
         {
            _loc2_ = §5j§.§8[§(this.§1!"§);
            if(_loc2_ != this.§1!"§)
            {
               §["§.§%#§(this.§1!"§);
            }
            this.§1!"§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §5j§.§#8§(_loc2_);
               §'<§(§,w§.§?x§);
               return;
            }
         }
         else
         {
            this.§0!"§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§6D§();
      }
      
      private function §6D§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §>D§;
            _loc2_ = §1!4§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§ Y§)
         {
            this.§ Y§.x = 0;
            this.§ Y§.y = 0;
            this.§ Y§.scaleX = stage.stageWidth / this.§,v§;
            this.§ Y§.scaleY = stage.stageHeight / this.§%C§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§4a§())
         {
            §[k§.§%e§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§1&§(_loc1_,_loc2_);
         }
         §>D§ = _loc1_;
         §1!4§ = _loc2_;
      }
      
      public function §1&§(param1:Number, param2:Number) : void
      {
         §5U§.setViewSize(param1,param2);
      }
      
      protected function §%!&§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §#0§.replace("{svn_version}","local dev build") + "Server: " + §<U§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §["§.§,9§(§#3§.§&! §,_loc1_.toString(),_loc1_);
         if(this.§>i§)
         {
            return;
         }
         this.§<3§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§[F§)
         {
            this.§[F§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§[F§ += String.fromCharCode(param1.keyCode);
         }
         this.§[F§ = this.§[F§.toLowerCase();
         if(this.§[F§.length > 15)
         {
            this.§[F§ = this.§[F§.substr(1);
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
