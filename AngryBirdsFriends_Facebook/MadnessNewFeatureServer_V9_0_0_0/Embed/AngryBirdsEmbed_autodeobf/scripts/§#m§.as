package
{
   import § true§.§#<§;
   import § true§.§&E§;
   import § true§.§-W§;
   import § true§.§3!%§;
   import § true§.§3!M§;
   import § true§.§?A§;
   import § true§.§^!2§;
   import § true§.§case §;
   import §'6§.§^^§;
   import §'d§.§"s§;
   import §+[§.§%G§;
   import §3y§.§"C§;
   import §3y§.§=l§;
   import §<!A§.§8?§;
   import §>!O§.§[+§;
   import §?!$§.§+!,§;
   import §?j§.§`R§;
   import §[!,§.§1!2§;
   import §`!4§.§8R§;
   import com.rovio.assets.§%!?§;
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
   
   public class §#m§ extends AngryBirdsFP11
   {
      
      public static const §]`§:String = "0.0.0.1 (r107050) beta";
      
      private static const §2]§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §'y§:Class = § o§;
      
      protected static var §"G§:Class = §3D§;
      
      protected static var §<F§:Class = §9&§;
      
      protected static var §6!N§:Class = §`$§;
      
      public static var §;C§:§#m§;
       
      
      private var §#^§:String = null;
      
      private var §1k§:String = "";
      
      private var §"D§:Boolean = false;
      
      private var §7c§:LocalConnection;
      
      private var §0d§:String;
      
      private var §-!N§:Boolean;
      
      private var §7]§:Sprite;
      
      private var §^U§:int = 0;
      
      private var §,!I§:Number;
      
      private var §'!=§:Number;
      
      public function §#m§(param1:§+!,§, param2:Number, param3:Number)
      {
         var canvas:§+!,§ = param1;
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
         this.§0d§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§,!I§ = initialWidth;
         this.§'!=§ = initialHeight;
         this.§7c§ = new LocalConnection();
         this.§7c§.addEventListener(StatusEvent.STATUS,this.§+F§);
         try
         {
            this.§7c§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §7c§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§7c§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§0d§);
         this.§7c§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§0d§);
         this.§7c§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §;C§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §"s§.initialize(canvas.stage);
      }
      
      private function §%s§() : Boolean
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
      
      private function §+F§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§0d§)
         {
            this.§7c§ = null;
            this.§70§();
         }
      }
      
      public function §%!4§(param1:String) : void
      {
         §"C§.§^!3§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §`R§.§7S§),"_blank");
         this.§70§();
      }
      
      private function §70§() : void
      {
         this.§-!N§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§-!N§)
         {
            stage.frameRate = 1;
            §[+§.pause();
            this.§9§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §9§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§7]§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §%!?§.§4"§("ThankYouForPlaying");
               this.§7]§ = new _loc2_();
               this.§7]§.x = stage.stageWidth - this.§7]§.width >> 1;
               this.§7]§.y = stage.stageHeight - this.§7]§.height >> 1;
               stage.addChild(this.§7]§);
               stage.addEventListener(MouseEvent.CLICK,this.§`!@§);
               this.§7]§.useHandCursor = true;
               this.§7]§.buttonMode = true;
               this.§7s§();
            }
            catch(e:Error)
            {
            }
            if(§[+§.§,!&§)
            {
               §[+§.§,!&§.clear();
            }
         }
      }
      
      private function §`!@§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§`!@§);
         if(this.§7]§)
         {
            this.§7]§.useHandCursor = false;
            this.§7]§.buttonMode = false;
         }
         this.§%!4§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §%G§.init();
         §%G§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §^^§.§]d§(§'y§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §^^§.§]d§(§"G§);
         this.§>'§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §^^§.§]d§(§6!N§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§>'§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §^^§.§]d§(§<F§);
         this.§>'§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§#^§ = stage.loaderInfo.parameters.levelId;
         if(!this.§#^§)
         {
            this.§#^§ = "1-1";
         }
         this.§^U§ = parseInt("0");
         if(this.§^U§ <= 0)
         {
            this.§^U§ = 0;
         }
         §-!A§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§%s§())
         {
            §[+§.§,!&§ = new §8R§(stage);
         }
         else
         {
            this.§@+§();
         }
      }
      
      private function §@+§() : void
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
         sUserProgress = new §1!2§(§1M§);
      }
      
      override protected function initStates() : void
      {
         §3R§(new §&E§(false));
         §3R§(new §^!2§(false));
         §3R§(new §3!M§(false,this.§^U§));
         §3R§(new §-W§(false));
         §3R§(new §3!%§(false,this.§^U§));
         §3R§(new §#<§(false));
      }
      
      override protected function initStateLoad() : §8?§
      {
         if(!§^!I§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §"C§.§=`§("assetsUrl");
            }
         }
         return new §?A§(true,§8?§.§`W§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§-!N§)
         {
            return;
         }
         §7q§ = true;
         if(this.§#^§)
         {
            _loc2_ = §`R§.§&!2§(this.§#^§);
            if(_loc2_ != this.§#^§)
            {
               §"C§.§"w§(this.§#^§);
            }
            this.§#^§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §`R§.§true §(_loc2_);
               §#!%§(§case §.§`W§);
               return;
            }
         }
         else
         {
            this.§70§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§7s§();
      }
      
      private function §7s§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §]H§;
            _loc2_ = §^!H§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§7]§)
         {
            this.§7]§.x = this.§,!I§ - this.§7]§.width / this.§7]§.scaleX >> 1;
            this.§7]§.y = this.§'!=§ - this.§7]§.height / this.§7]§.scaleY >> 1;
            this.§7]§.scaleX = stage.stageWidth / this.§,!I§;
            this.§7]§.scaleY = stage.stageHeight / this.§'!=§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§%s§())
         {
            §[+§.§@§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§0W§(_loc1_,_loc2_);
         }
         §]H§ = _loc1_;
         §^!H§ = _loc2_;
      }
      
      public function §0W§(param1:Number, param2:Number) : void
      {
         §"s§.setViewSize(param1,param2);
      }
      
      protected function §>'§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §]`§.replace("{svn_version}","local dev build") + "Server: " + §#!4§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §"C§.§#H§(§=l§.§#!'§,_loc1_.toString(),_loc1_);
         if(this.§-!N§)
         {
            return;
         }
         this.§"D§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§1k§)
         {
            this.§1k§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§1k§ += String.fromCharCode(param1.keyCode);
         }
         this.§1k§ = this.§1k§.toLowerCase();
         if(this.§1k§.length > 15)
         {
            this.§1k§ = this.§1k§.substr(1);
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
