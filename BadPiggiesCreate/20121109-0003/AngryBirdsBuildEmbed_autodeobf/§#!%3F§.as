package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §-!0§.§1^§;
   import §1!F§.§'§;
   import §1!F§.§0!`§;
   import §1!F§.§26§;
   import §1!F§.§6!$§;
   import §1!F§.§6;§;
   import §1!F§.§>!u§;
   import §1!F§.§?Y§;
   import §1!F§.§`h§;
   import §1?§.§+!§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §<!<§.§#!H§;
   import §=!3§.§<!=§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import com.rovio.assets.LoadingScreen;
   import §false§.§'k§;
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
   import §var§.§else §;
   
   public class §#!?§ extends AngryBirdsFP11
   {
      
      public static const §9!o§:String = "0.0.0.1 ({svn_version}) beta";
      
      private static const §6!]§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var §]D§:Class = §>!r§;
      
      protected static var §+!t§:Class = §@,§;
      
      protected static var §3@§:Class = §@!$§;
      
      protected static var §+!1§:Class = §8!4§;
      
      public static var §8;§:§#!?§;
       
      
      private var §'Y§:String = null;
      
      private var §[G§:String = "";
      
      private var §4X§:Boolean = false;
      
      private var §&!<§:LocalConnection;
      
      private var §-"§:String;
      
      private var §'4§:Boolean;
      
      private var §9!K§:Sprite;
      
      private var §"Q§:int = 0;
      
      private var §]F§:Number;
      
      private var §,!n§:Number;
      
      public function §#!?§(param1:§"!8§, param2:Number, param3:Number)
      {
         var canvas:§"!8§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§-"§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§]F§ = initialWidth;
         this.§,!n§ = initialHeight;
         this.§&!<§ = new LocalConnection();
         this.§&!<§.addEventListener(StatusEvent.STATUS,this.§'i§);
         try
         {
            this.§&!<§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §&!<§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§&!<§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§-"§);
         this.§&!<§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§-"§);
         this.§&!<§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §8;§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §'k§.initialize(canvas.stage);
      }
      
      private function §=F§() : Boolean
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
      
      private function §'i§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§-"§)
         {
            this.§&!<§ = null;
            this.§53§();
         }
      }
      
      public function §4!`§(param1:String) : void
      {
         §,8§.§1!I§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §1^§.§ ]§),"_blank");
         this.§53§();
      }
      
      private function §53§() : void
      {
         this.§'4§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§'4§)
         {
            stage.frameRate = 1;
            §'!V§.pause();
            this.§0!e§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §0!e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§9!K§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §1F§.§"!_§("ThankYouForPlaying");
               this.§9!K§ = new _loc2_();
               this.§9!K§.x = stage.stageWidth - this.§9!K§.width >> 1;
               this.§9!K§.y = stage.stageHeight - this.§9!K§.height >> 1;
               stage.addChild(this.§9!K§);
               stage.addEventListener(MouseEvent.CLICK,this.§]q§);
               this.§9!K§.useHandCursor = true;
               this.§9!K§.buttonMode = true;
               this.§<!H§();
            }
            catch(e:Error)
            {
            }
            if(§'!V§.§1!2§)
            {
               §'!V§.§1!2§.clear();
            }
         }
      }
      
      private function §]q§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§]q§);
         if(this.§9!K§)
         {
            this.§9!K§.useHandCursor = false;
            this.§9!K§.buttonMode = false;
         }
         this.§4!`§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §+!§.init();
         §+!§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§]D§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §3!X§.§3<§(§+!t§);
         this.§@l§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §3!X§.§3<§(§+!1§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§@l§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §3!X§.§3<§(§3@§);
         this.§@l§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§'Y§ = stage.loaderInfo.parameters.levelId;
         if(!this.§'Y§)
         {
            this.§'Y§ = "1-1";
         }
         this.§"Q§ = parseInt("0");
         if(this.§"Q§ <= 0)
         {
            this.§"Q§ = 0;
         }
         §;z§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§=F§())
         {
            §'!V§.§1!2§ = new §#!H§(stage);
         }
         else
         {
            this.§'1§();
         }
      }
      
      private function §'1§() : void
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
         sUserProgress = new §else §(§`!l§);
      }
      
      override protected function initStates() : void
      {
         § Y§(new §?Y§(false));
         § Y§(new §6!$§(false));
         § Y§(new §>!u§(false,this.§"Q§));
         § Y§(new §'§(false));
         § Y§(new §6;§(false,this.§"Q§));
         § Y§(new §`h§(false));
      }
      
      override protected function initStateLoad() : §<!=§
      {
         if(!§>!q§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §,8§.§^F§("assetsUrl");
            }
         }
         return new §0!`§(true,§<!=§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§'4§)
         {
            return;
         }
         §7!p§ = true;
         if(this.§'Y§)
         {
            _loc2_ = §1^§.§=h§(this.§'Y§);
            if(_loc2_ != this.§'Y§)
            {
               §,8§.§"!>§(this.§'Y§);
            }
            this.§'Y§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §1^§.loadLevel(_loc2_);
               §8!W§(§26§.STATE_NAME);
               return;
            }
         }
         else
         {
            this.§53§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§<!H§();
      }
      
      private function §<!H§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §6!I§;
            _loc2_ = §+m§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§9!K§)
         {
            this.§9!K§.x = this.§]F§ - this.§9!K§.width / this.§9!K§.scaleX >> 1;
            this.§9!K§.y = this.§,!n§ - this.§9!K§.height / this.§9!K§.scaleY >> 1;
            this.§9!K§.scaleX = stage.stageWidth / this.§]F§;
            this.§9!K§.scaleY = stage.stageHeight / this.§,!n§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§=F§())
         {
            §'!V§.§>!T§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§0!J§(_loc1_,_loc2_);
         }
         §6!I§ = _loc1_;
         §+m§ = _loc2_;
      }
      
      public function §0!J§(param1:Number, param2:Number) : void
      {
         §'k§.setViewSize(param1,param2);
      }
      
      protected function §@l§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §9!o§.replace("{svn_version}","local dev build") + "Server: " + §9!T§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §,8§.§?!@§(§ ^§.§9!c§,_loc1_.toString(),_loc1_);
         if(this.§'4§)
         {
            return;
         }
         this.§4X§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§[G§)
         {
            this.§[G§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§[G§ += String.fromCharCode(param1.keyCode);
         }
         this.§[G§ = this.§[G§.toLowerCase();
         if(this.§[G§.length > 15)
         {
            this.§[G§ = this.§[G§.substr(1);
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
