package
{
   import §!!0§.§8l§;
   import §"V§.§`]§;
   import §%J§.§,3§;
   import §+!%§.§2#§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §2!,§.§,`§;
   import §2x§.§'m§;
   import §<!@§.§!P§;
   import §?7§.§#y§;
   import §?7§.§%!+§;
   import §?7§.§%9§;
   import §?7§.§'!6§;
   import §?7§.§+g§;
   import §?7§.§=u§;
   import §?7§.§@!B§;
   import §?7§.§]J§;
   import com.rovio.assets.§0v§;
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
   import §while§.§+o§;
   import §while§.§-3§;
   
   public class §6!%§ extends AngryBirdsFP11
   {
      
      public static const §+r§:String = "0.0.0.1 (r95809) beta";
      
      private static const §1R§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §!%§:Class = §4A§;
      
      protected static var §[!,§:Class = §[r§;
      
      protected static var §2G§:Class = §^=§;
      
      protected static var §1p§:Class = §[,§;
      
      public static var §-W§:§6!%§;
       
      
      private var §9s§:String = null;
      
      private var §?§:String = "";
      
      private var §+!3§:Boolean = false;
      
      private var § ]§:LocalConnection;
      
      private var §5B§:String;
      
      private var §;&§:Boolean;
      
      private var §@4§:Sprite;
      
      private var §2r§:int = 0;
      
      private var §&]§:Number;
      
      private var §3!5§:Number;
      
      public function §6!%§(param1:§,`§, param2:Number, param3:Number)
      {
         var canvas:§,`§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§5B§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§&]§ = initialWidth;
         this.§3!5§ = initialHeight;
         this.§ ]§ = new LocalConnection();
         this.§ ]§.addEventListener(StatusEvent.STATUS,this.§^!§);
         try
         {
            this.§ ]§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               § ]§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§ ]§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§5B§);
         this.§ ]§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§5B§);
         this.§ ]§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §-W§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §,3§.initialize(canvas.stage);
      }
      
      private function §"G§() : Boolean
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
      
      private function §^!§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§5B§)
         {
            this.§ ]§ = null;
            this.§3x§();
         }
      }
      
      public function §'C§(param1:String) : void
      {
         §-3§.§-=§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §!P§.§4R§),"_blank");
         this.§3x§();
      }
      
      private function §3x§() : void
      {
         this.§;&§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§;&§)
         {
            stage.frameRate = 1;
            §?'§.pause();
            this.§8c§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §8c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§@4§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §0v§.§#w§("ThankYouForPlaying");
               this.§@4§ = new _loc2_();
               this.§@4§.x = stage.stageWidth - this.§@4§.width >> 1;
               this.§@4§.y = stage.stageHeight - this.§@4§.height >> 1;
               stage.addChild(this.§@4§);
               stage.addEventListener(MouseEvent.CLICK,this.§?f§);
               this.§@4§.useHandCursor = true;
               this.§@4§.buttonMode = true;
               this.§&!!§();
            }
            catch(e:Error)
            {
            }
            if(§?'§.§5!§)
            {
               §?'§.§5!§.clear();
            }
         }
      }
      
      private function §?f§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§?f§);
         if(this.§@4§)
         {
            this.§@4§.useHandCursor = false;
            this.§@4§.buttonMode = false;
         }
         this.§'C§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §;!>§.init();
         §;!>§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §'m§.§-!;§(§!%§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §'m§.§-!;§(§[!,§);
         this.§-!7§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §'m§.§-!;§(§1p§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§-!7§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §'m§.§-!;§(§2G§);
         this.§-!7§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§9s§ = stage.loaderInfo.parameters.levelId;
         if(!this.§9s§)
         {
            this.§9s§ = "1-1";
         }
         this.§2r§ = parseInt("0");
         if(this.§2r§ <= 0)
         {
            this.§2r§ = 0;
         }
         §5M§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§"G§())
         {
            §?'§.§5!§ = new §2#§(stage);
         }
         else
         {
            this.§@!A§();
         }
      }
      
      private function §@!A§() : void
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
         sUserProgress = new §8l§(§-!8§);
      }
      
      override protected function initStates() : void
      {
         §8w§(new §=u§(false));
         §8w§(new §%9§(false));
         §8w§(new §]J§(false,this.§2r§));
         §8w§(new §%!+§(false));
         §8w§(new §@!B§(false,this.§2r§));
         §8w§(new §+g§(false));
      }
      
      override protected function initStateLoad() : §`]§
      {
         if(!§!k§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §-3§.§+!E§("assetsUrl");
            }
         }
         return new §#y§(true,§`]§.§4!&§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§;&§)
         {
            return;
         }
         §5f§ = true;
         if(this.§9s§)
         {
            _loc2_ = §!P§.§<!=§(this.§9s§);
            if(_loc2_ != this.§9s§)
            {
               §-3§.§<6§(this.§9s§);
            }
            this.§9s§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §!P§.§-7§(_loc2_);
               §]I§(§'!6§.§4!&§);
               return;
            }
         }
         else
         {
            this.§3x§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§&!!§();
      }
      
      private function §&!!§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §9-§;
            _loc2_ = §]!;§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§@4§)
         {
            this.§@4§.x = this.§&]§ - this.§@4§.width / this.§@4§.scaleX >> 1;
            this.§@4§.y = this.§3!5§ - this.§@4§.height / this.§@4§.scaleY >> 1;
            this.§@4§.scaleX = stage.stageWidth / this.§&]§;
            this.§@4§.scaleY = stage.stageHeight / this.§3!5§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§"G§())
         {
            §?'§.§<C§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§[h§(_loc1_,_loc2_);
         }
         §9-§ = _loc1_;
         §]!;§ = _loc2_;
      }
      
      public function §[h§(param1:Number, param2:Number) : void
      {
         §,3§.setViewSize(param1,param2);
      }
      
      protected function §-!7§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §+r§.replace("{svn_version}","local dev build") + "Server: " + §%!=§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §-3§.§53§(§+o§.§,%§,_loc1_.toString(),_loc1_);
         if(this.§;&§)
         {
            return;
         }
         this.§+!3§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§?§)
         {
            this.§?§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§?§ += String.fromCharCode(param1.keyCode);
         }
         this.§?§ = this.§?§.toLowerCase();
         if(this.§?§.length > 15)
         {
            this.§?§ = this.§?§.substr(1);
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
