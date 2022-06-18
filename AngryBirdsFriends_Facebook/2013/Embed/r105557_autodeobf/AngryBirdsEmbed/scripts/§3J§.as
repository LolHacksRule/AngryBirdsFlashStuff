package
{
   import § if§.§^!1§;
   import §#!3§.§!I§;
   import §#]§.§'5§;
   import §4y§.§"s§;
   import §8!=§.§4!§;
   import §8!=§.§=!"§;
   import §88§.§#$§;
   import §88§.§-!-§;
   import §88§.§0!L§;
   import §88§.§0+§;
   import §88§.§8!B§;
   import §88§.§?!N§;
   import §88§.§[!C§;
   import §88§.§`!J§;
   import §8T§.§@o§;
   import §;'§.§^!J§;
   import §<!M§.§[i§;
   import §?!8§.§87§;
   import §@r§.§'!+§;
   import com.rovio.assets.§&%§;
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
   
   public class §3J§ extends AngryBirdsFP11
   {
      
      public static const §"@§:String = "0.0.0.1 (r105557) beta";
      
      private static const §#!4§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §^!E§:Class = § do§;
      
      protected static var §6X§:Class = §8Z§;
      
      protected static var §==§:Class = §"M§;
      
      protected static var §;Y§:Class = §4K§;
      
      public static var §3!2§:§3J§;
       
      
      private var §6%§:String = null;
      
      private var §>s§:String = "";
      
      private var §,!,§:Boolean = false;
      
      private var §3g§:LocalConnection;
      
      private var §<!?§:String;
      
      private var §@Z§:Boolean;
      
      private var §+,§:Sprite;
      
      private var §7!+§:int = 0;
      
      private var §,!E§:Number;
      
      private var §]=§:Number;
      
      public function §3J§(param1:§"s§, param2:Number, param3:Number)
      {
         var canvas:§"s§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§<!?§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§,!E§ = initialWidth;
         this.§]=§ = initialHeight;
         this.§3g§ = new LocalConnection();
         this.§3g§.addEventListener(StatusEvent.STATUS,this.§9q§);
         try
         {
            this.§3g§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §3g§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§3g§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§<!?§);
         this.§3g§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§<!?§);
         this.§3g§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §3!2§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §'!+§.initialize(canvas.stage);
      }
      
      private function §`[§() : Boolean
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
      
      private function §9q§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§<!?§)
         {
            this.§3g§ = null;
            this.§"m§();
         }
      }
      
      public function §`q§(param1:String) : void
      {
         §=!"§.§%!$§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §[i§.§0A§),"_blank");
         this.§"m§();
      }
      
      private function §"m§() : void
      {
         this.§@Z§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§@Z§)
         {
            stage.frameRate = 1;
            §'5§.pause();
            this.§7!L§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §7!L§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§+,§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §&%§.§<7§("ThankYouForPlaying");
               this.§+,§ = new _loc2_();
               this.§+,§.x = stage.stageWidth - this.§+,§.width >> 1;
               this.§+,§.y = stage.stageHeight - this.§+,§.height >> 1;
               stage.addChild(this.§+,§);
               stage.addEventListener(MouseEvent.CLICK,this.§<B§);
               this.§+,§.useHandCursor = true;
               this.§+,§.buttonMode = true;
               this.§`!<§();
            }
            catch(e:Error)
            {
            }
            if(§'5§.§^;§)
            {
               §'5§.§^;§.clear();
            }
         }
      }
      
      private function §<B§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§<B§);
         if(this.§+,§)
         {
            this.§+,§.useHandCursor = false;
            this.§+,§.buttonMode = false;
         }
         this.§`q§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §@o§.init();
         §@o§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §87§.§2R§(§^!E§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §87§.§2R§(§6X§);
         this.§ Y§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §87§.§2R§(§;Y§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§ Y§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §87§.§2R§(§==§);
         this.§ Y§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§6%§ = stage.loaderInfo.parameters.levelId;
         if(!this.§6%§)
         {
            this.§6%§ = "1-1";
         }
         this.§7!+§ = parseInt("0");
         if(this.§7!+§ <= 0)
         {
            this.§7!+§ = 0;
         }
         §;1§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§`[§())
         {
            §'5§.§^;§ = new §^!J§(stage);
         }
         else
         {
            this.§ !3§();
         }
      }
      
      private function § !3§() : void
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
         sUserProgress = new §!I§(§+H§);
      }
      
      override protected function initStates() : void
      {
         §01§(new §0!L§(false));
         §01§(new §#$§(false));
         §01§(new §-!-§(false,this.§7!+§));
         §01§(new §0+§(false));
         §01§(new §?!N§(false,this.§7!+§));
         §01§(new §[!C§(false));
      }
      
      override protected function initStateLoad() : §^!1§
      {
         if(!§7!!§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §=!"§.§=b§("assetsUrl");
            }
         }
         return new §8!B§(true,§^!1§.§&! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§@Z§)
         {
            return;
         }
         §<!!§ = true;
         if(this.§6%§)
         {
            _loc2_ = §[i§.§0!M§(this.§6%§);
            if(_loc2_ != this.§6%§)
            {
               §=!"§.§7!K§(this.§6%§);
            }
            this.§6%§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §[i§.§#!#§(_loc2_);
               §`m§(§`!J§.§&! §);
               return;
            }
         }
         else
         {
            this.§"m§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§`!<§();
      }
      
      private function §`!<§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §1#§;
            _loc2_ = §%y§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§+,§)
         {
            this.§+,§.x = this.§,!E§ - this.§+,§.width / this.§+,§.scaleX >> 1;
            this.§+,§.y = this.§]=§ - this.§+,§.height / this.§+,§.scaleY >> 1;
            this.§+,§.scaleX = stage.stageWidth / this.§,!E§;
            this.§+,§.scaleY = stage.stageHeight / this.§]=§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§`[§())
         {
            §'5§.§0N§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§>!$§(_loc1_,_loc2_);
         }
         §1#§ = _loc1_;
         §%y§ = _loc2_;
      }
      
      public function §>!$§(param1:Number, param2:Number) : void
      {
         §'!+§.setViewSize(param1,param2);
      }
      
      protected function § Y§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §"@§.replace("{svn_version}","local dev build") + "Server: " + §'!?§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §=!"§.§<!L§(§4!§.§0D§,_loc1_.toString(),_loc1_);
         if(this.§@Z§)
         {
            return;
         }
         this.§,!,§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§>s§)
         {
            this.§>s§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§>s§ += String.fromCharCode(param1.keyCode);
         }
         this.§>s§ = this.§>s§.toLowerCase();
         if(this.§>s§.length > 15)
         {
            this.§>s§ = this.§>s§.substr(1);
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
