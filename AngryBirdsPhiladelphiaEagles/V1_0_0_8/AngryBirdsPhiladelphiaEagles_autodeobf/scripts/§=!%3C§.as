package
{
   import §"1§.§1c§;
   import §,!1§.§]e§;
   import §,$§.§<!3§;
   import §,T§.§4j§;
   import §-!D§.§1>§;
   import §6!L§.§&u§;
   import §9!#§.§0!9§;
   import §=!0§.§ $§;
   import §=!0§.§!!J§;
   import §=!0§.§"T§;
   import §=!0§.§"r§;
   import §=!0§.§%!H§;
   import §=!0§.§,!F§;
   import §=!0§.§-5§;
   import §=!0§.§1h§;
   import §=!0§.§4!D§;
   import §=!0§.§9!+§;
   import §=z§.§0!E§;
   import §?>§.§19§;
   import §^w§.§3!"§;
   import §`!8§.§?'§;
   import §`!8§.§^!0§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §=!<§ extends AngryBirdsFP11
   {
      
      public static const §8=§:String = "0.0.1.0 (r98525)";
      
      protected static var §'Z§:Class = §%!A§;
      
      protected static var §'s§:Class = §%!'§;
      
      protected static var §5z§:Class = § o§;
      
      protected static var §=!C§:Class = §'!'§;
      
      public static const §`$§:String = "http://head.philadelphia-eagles.appspot.com/";
      
      public static const §=o§:Boolean = false;
      
      public static var §"R§:String = !!§=o§ ? §`$§ : "../";
      
      public static const §]!O§:String = "ABEagle";
      
      public static const §8B§:String = §]!O§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §"!9§:String = §]!O§ + "_LEVEL_STARS";
      
      public static const §%!E§:String = §]!O§ + "_LEVEL_SCORE";
      
      public static const §+!6§:String = §]!O§ + "_GAME_SOUND";
      
      public static var §4M§:§=!<§;
       
      
      private var §=-§:String = null;
      
      private var §!8§:String = "";
      
      private var §&o§:Boolean = false;
      
      private var §6!8§:int = 0;
      
      private var §"s§:Number;
      
      private var §=r§:Number;
      
      public function §=!<§(param1:§19§, param2:Number, param3:Number)
      {
         this.§"s§ = param2;
         this.§=r§ = param3;
         super(param1);
         §4M§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §0!9§.initialize(param1.stage);
         §0!E§.§5!$§.visible = §=o§;
      }
      
      public static function §!!!§() : void
      {
         if(§]e§.§'!?§("Channel_Theme") == null || !§]e§.§'!?§("Channel_Theme").§;7§())
         {
            §]e§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §7a§(param1:String, param2:*, param3:Boolean = false) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         var hidden:Boolean = param3;
         try
         {
            mySO = SharedObject.getLocal(§]!O§);
            mySO.data[key] = value;
            mySO.flush();
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §@!H§(param1:String, param2:Boolean = false) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var hidden:Boolean = param2;
         try
         {
            mySO = SharedObject.getLocal(§]!O§);
            return mySO.data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §&q§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§]!O§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §7o§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §=!<§.§&q§(§=!<§.§8B§ + "1-" + (i + 1));
               §=!<§.§&q§(§=!<§.§%!E§ + "1-" + (i + 1));
               §=!<§.§&q§(§=!<§.§"!9§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §[!3§(param1:int) : Boolean
      {
         var _loc2_:int = §1>§.§@!&§.§ I§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§&u§.§7E§() == null)
         {
            return true;
         }
         return false;
      }
      
      private function §+M§() : Boolean
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
      
      public function §#u§(param1:String) : void
      {
         §?'§.§%P§(§?'§.§1v§);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=" + param1),"_blank");
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         super.onEnterFrame(param1);
      }
      
      override protected function initSoundEngine() : void
      {
         §]e§.init();
         §]e§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §1c§.§6T§(§'Z§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §1c§.§6T§(§'s§);
         this.§7!@§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §1c§.§6T§(§=!C§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§7!@§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §1c§.§6T§(§5z§);
         this.§7!@§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§=-§ = stage.loaderInfo.parameters.levelId;
         if(!this.§=-§)
         {
            this.§=-§ = "1-1";
         }
         this.§6!8§ = parseInt("0");
         if(this.§6!8§ <= 0)
         {
            this.§6!8§ = 0;
         }
         §6x§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§+M§())
         {
            §0!E§.§9!B§ = new §4j§(stage);
         }
         else
         {
            this.§>J§();
         }
      }
      
      private function §>J§() : void
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
         §5@§ = new §<!3§(§@1§);
      }
      
      override protected function initStates() : void
      {
         §^!3§(new §,!F§(false));
         §^!3§(new § $§(false));
         §^!3§(new §9!+§(false));
         §^!3§(new §"T§(false,this.§6!8§));
         §^!3§(new §!!J§(false));
         §^!3§(new §%!H§(false,this.§6!8§));
         §^!3§(new §"r§(false));
         §^!3§(new §-5§(false));
         §^!3§(new §1h§(false));
      }
      
      override protected function initStateLoad() : §3!"§
      {
         if(!§=o§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §?'§.§",§("assetsUrl");
            }
         }
         return new §4!D§(true,§3!"§.§@§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §'§ = true;
         if(this.§=-§)
         {
            _loc2_ = §&u§.§"V§(this.§=-§);
            if(_loc2_ != this.§=-§)
            {
               §?'§.§%-§(this.§=-§);
            }
            this.§=-§ = null;
            §?%§(§9!+§.§@§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§5t§();
      }
      
      private function §5t§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §<Y§;
            _loc2_ = §2!3§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§+M§())
         {
            §0!E§.§7<§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§&!I§(_loc1_,_loc2_);
         }
         §<Y§ = _loc1_;
         §2!3§ = _loc2_;
      }
      
      public function §&!I§(param1:Number, param2:Number) : void
      {
         §0!9§.setViewSize(param1,param2);
      }
      
      protected function §7!@§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            for each(_loc6_ in param1[_loc5_].§*§)
            {
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               param2[_loc5_].appendChild(_loc6_);
            }
         }
      }
      
      public function §5!I§() : String
      {
         return §8=§.replace("{svn_version}","local dev build");
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(stage != null)
         {
            _loc1_ = stage.loaderInfo.parameters.buildNumber;
            if(_loc1_ != null && _loc1_.length > 0)
            {
               _loc2_ = _loc1_.indexOf(".");
               if(_loc2_ > 0)
               {
                  _loc1_ = _loc1_.substr(0,_loc2_);
               }
               _loc3_ = 0;
               while(_loc3_ < 5)
               {
                  _loc1_ = _loc1_.replace("-",".");
                  _loc3_++;
               }
               return _loc1_;
            }
         }
         return §8=§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §?'§.§%P§(§^!0§.§"L§,_loc1_.toString(),_loc1_);
         this.§&o§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§!8§)
         {
            this.§!8§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§!8§ += String.fromCharCode(param1.keyCode);
         }
         this.§!8§ = this.§!8§.toLowerCase();
         if(this.§!8§.length > 15)
         {
            this.§!8§ = this.§!8§.substr(1);
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
