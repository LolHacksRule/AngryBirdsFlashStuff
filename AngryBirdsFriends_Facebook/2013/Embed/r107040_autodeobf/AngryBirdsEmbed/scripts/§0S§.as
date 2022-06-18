package
{
   import §'0§.§]!2§;
   import §0!>§.§,!C§;
   import §2>§.§#E§;
   import §2>§.§#[§;
   import §2>§.§-;§;
   import §2>§.§0^§;
   import §2>§.§0_§;
   import §2>§.§25§;
   import §2>§.§9$§;
   import §2>§.§@!"§;
   import §3V§.§34§;
   import §3V§.§^!G§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§,O§;
   import §9O§.§5a§;
   import §9s§.§7R§;
   import §@!;§.§?>§;
   import §`R§.§8D§;
   import com.rovio.assets.§5R§;
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
   import flash.system.Security;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §0S§ extends AngryBirdsFP11
   {
      
      public static const §1Y§:String = "0.0.0.1 (r107040) beta";
      
      private static const §^!8§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §],§:Class = §6b§;
      
      protected static var §^8§:Class = §,!1§;
      
      protected static var §package§:Class = §'6§;
      
      protected static var §,x§:Class = §#a§;
      
      public static var §8!E§:§0S§;
       
      
      private var §^!J§:String = null;
      
      private var §^-§:String = "";
      
      private var §]p§:Boolean = false;
      
      private var §;!9§:LocalConnection;
      
      private var §`T§:String;
      
      private var §^p§:Boolean;
      
      private var §#x§:Sprite;
      
      private var §@J§:int = 0;
      
      private var §2`§:Number;
      
      private var §!p§:Number;
      
      public function §0S§(param1:§8D§, param2:Number, param3:Number)
      {
         var canvas:§8D§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         try
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         catch(e:Error)
         {
         }
         this.§`T§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§2`§ = initialWidth;
         this.§!p§ = initialHeight;
         this.§;!9§ = new LocalConnection();
         this.§;!9§.addEventListener(StatusEvent.STATUS,this.§+E§);
         try
         {
            this.§;!9§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §;!9§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§;!9§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§`T§);
         this.§;!9§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§`T§);
         this.§;!9§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §8!E§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §,!C§.initialize(canvas.stage);
      }
      
      private function §]Q§() : Boolean
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
      
      private function §+E§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§`T§)
         {
            this.§;!9§ = null;
            this.§@D§();
         }
      }
      
      public function dynamic(param1:String) : void
      {
         §^!G§.§55§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §'?§.§"t§),"_blank");
         this.§@D§();
      }
      
      private function §@D§() : void
      {
         this.§^p§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§^p§)
         {
            stage.frameRate = 1;
            §[!4§.pause();
            this.§5S§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §5S§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§#x§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §5R§.§6+§("ThankYouForPlaying");
               this.§#x§ = new _loc2_();
               this.§#x§.x = stage.stageWidth - this.§#x§.width >> 1;
               this.§#x§.y = stage.stageHeight - this.§#x§.height >> 1;
               stage.addChild(this.§#x§);
               stage.addEventListener(MouseEvent.CLICK,this.§9'§);
               this.§#x§.useHandCursor = true;
               this.§#x§.buttonMode = true;
               this.§0B§();
            }
            catch(e:Error)
            {
            }
            if(§[!4§.§continue§)
            {
               §[!4§.§continue§.clear();
            }
         }
      }
      
      private function §9'§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§9'§);
         if(this.§#x§)
         {
            this.§#x§.useHandCursor = false;
            this.§#x§.buttonMode = false;
         }
         this.dynamic("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §]!2§.init();
         §]!2§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §?>§.§+!;§(§],§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §?>§.§+!;§(§^8§);
         this.§;!5§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §?>§.§+!;§(§,x§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§;!5§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §?>§.§+!;§(§package§);
         this.§;!5§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§^!J§ = stage.loaderInfo.parameters.levelId;
         if(!this.§^!J§)
         {
            this.§^!J§ = "1-1";
         }
         this.§@J§ = parseInt("0");
         if(this.§@J§ <= 0)
         {
            this.§@J§ = 0;
         }
         §true §(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§]Q§())
         {
            §[!4§.§continue§ = new §7R§(stage);
         }
         else
         {
            this.§=!B§();
         }
      }
      
      private function §=!B§() : void
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
         sUserProgress = new §5a§(§>!N§);
      }
      
      override protected function initStates() : void
      {
         §%y§(new §#[§(false));
         §%y§(new §0_§(false));
         §%y§(new §#E§(false,this.§@J§));
         §%y§(new §25§(false));
         §%y§(new §@!"§(false,this.§@J§));
         §%y§(new §-;§(false));
      }
      
      override protected function initStateLoad() : §,O§
      {
         if(!§78§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §^!G§.§9!=§("assetsUrl");
            }
         }
         return new §0^§(true,§,O§.§]! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§^p§)
         {
            return;
         }
         § ,§ = true;
         if(this.§^!J§)
         {
            _loc2_ = §'?§.§0E§(this.§^!J§);
            if(_loc2_ != this.§^!J§)
            {
               §^!G§.§ U§(this.§^!J§);
            }
            this.§^!J§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §'?§.§4y§(_loc2_);
               §3!K§(§9$§.§]! §);
               return;
            }
         }
         else
         {
            this.§@D§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§0B§();
      }
      
      private function §0B§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §8M§;
            _loc2_ = §+#§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§#x§)
         {
            this.§#x§.x = this.§2`§ - this.§#x§.width / this.§#x§.scaleX >> 1;
            this.§#x§.y = this.§!p§ - this.§#x§.height / this.§#x§.scaleY >> 1;
            this.§#x§.scaleX = stage.stageWidth / this.§2`§;
            this.§#x§.scaleY = stage.stageHeight / this.§!p§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§]Q§())
         {
            §[!4§.§3m§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§1!&§(_loc1_,_loc2_);
         }
         §8M§ = _loc1_;
         §+#§ = _loc2_;
      }
      
      public function §1!&§(param1:Number, param2:Number) : void
      {
         §,!C§.setViewSize(param1,param2);
      }
      
      protected function §;!5§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §1Y§.replace("{svn_version}","local dev build") + "Server: " + §5?§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §^!G§.§[V§(§34§.§<2§,_loc1_.toString(),_loc1_);
         if(this.§^p§)
         {
            return;
         }
         this.§]p§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§^-§)
         {
            this.§^-§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§^-§ += String.fromCharCode(param1.keyCode);
         }
         this.§^-§ = this.§^-§.toLowerCase();
         if(this.§^-§.length > 15)
         {
            this.§^-§ = this.§^-§.substr(1);
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
