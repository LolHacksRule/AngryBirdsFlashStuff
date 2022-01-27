package
{
   import §"! §.§6<§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §16§.§;v§;
   import §1E§.§2h§;
   import §3!O§.§!Z§;
   import §4!-§.§9!H§;
   import §8!A§.§"w§;
   import §8!A§.§#O§;
   import §8!A§.§'&§;
   import §8!A§.§+u§;
   import §8!A§.§2!1§;
   import §8!A§.§7!O§;
   import §8!A§.§8!"§;
   import §8!A§.§;b§;
   import §8!A§.§>o§;
   import §8!A§.§?!C§;
   import §8j§.§#l§;
   import §;!!§.§+t§;
   import §;!B§.§1"§;
   import §;!B§.§14§;
   import §@<§.§`N§;
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
   
   public class §>!?§ extends AngryBirdsFP11
   {
      
      public static const §<U§:String = "0.0.1.0 (r98427)";
      
      protected static var §7R§:Class = §-%§;
      
      protected static var §3&§:Class = §0§;
      
      protected static var §,$§:Class = §<W§;
      
      protected static var §,R§:Class = §4!F§;
      
      public static const §90§:String = "http://head.philadelphia-eagles.appspot.com/";
      
      public static const §9!-§:Boolean = false;
      
      public static var §'@§:String = !!§9!-§ ? §90§ : "../";
      
      public static const §!s§:String = "ABEagle";
      
      public static const § J§:String = §!s§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §3a§:String = §!s§ + "_LEVEL_STARS";
      
      public static const §5i§:String = §!s§ + "_LEVEL_SCORE";
      
      public static const §%§:String = §!s§ + "_GAME_SOUND";
      
      public static var §=!N§:§>!?§;
       
      
      private var §"v§:String = null;
      
      private var §[4§:String = "";
      
      private var §6!H§:Boolean = false;
      
      private var §<!E§:int = 0;
      
      private var §6!J§:Number;
      
      private var §^!?§:Number;
      
      public function §>!?§(param1:§6<§, param2:Number, param3:Number)
      {
         this.§6!J§ = param2;
         this.§^!?§ = param3;
         super(param1);
         §=!N§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §`N§.initialize(param1.stage);
         §[F§.§1L§.visible = §9!-§;
      }
      
      public static function §=0§() : void
      {
         if(§#-§.§=f§("Channel_Theme") == null || !§#-§.§=f§("Channel_Theme").§,J§())
         {
            §#-§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §+s§(param1:String, param2:*, param3:Boolean = false) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         var hidden:Boolean = param3;
         try
         {
            mySO = SharedObject.getLocal(§!s§);
            mySO.data[key] = value;
            mySO.flush();
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §5!5§(param1:String, param2:Boolean = false) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var hidden:Boolean = param2;
         try
         {
            mySO = SharedObject.getLocal(§!s§);
            return mySO.data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §6N§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§!s§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §<l§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §>!?§.§6N§(§>!?§.§ J§ + "1-" + (i + 1));
               §>!?§.§6N§(§>!?§.§5i§ + "1-" + (i + 1));
               §>!?§.§6N§(§>!?§.§3a§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §&f§(param1:int) : Boolean
      {
         var _loc2_:int = §;v§.§<"§.§%0§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§2h§.§@!8§() == null)
         {
            return true;
         }
         return false;
      }
      
      private function §,K§() : Boolean
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
      
      public function §`!E§(param1:String) : void
      {
         §14§.§`!O§(§14§.§9L§);
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
         §#-§.init();
         §#-§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §!Z§.§5C§(§7R§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §!Z§.§5C§(§3&§);
         this.§,i§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §!Z§.§5C§(§,R§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§,i§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §!Z§.§5C§(§,$§);
         this.§,i§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§"v§ = stage.loaderInfo.parameters.levelId;
         if(!this.§"v§)
         {
            this.§"v§ = "1-1";
         }
         this.§<!E§ = parseInt("0");
         if(this.§<!E§ <= 0)
         {
            this.§<!E§ = 0;
         }
         §0!E§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§,K§())
         {
            §[F§.§9u§ = new §9!H§(stage);
         }
         else
         {
            this.§&C§();
         }
      }
      
      private function §&C§() : void
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
         § !-§ = new §#l§(§?!M§);
      }
      
      override protected function initStates() : void
      {
         §1!O§(new §8!"§(false));
         §1!O§(new §>o§(false));
         §1!O§(new §7!O§(false));
         §1!O§(new §"w§(false,this.§<!E§));
         §1!O§(new §#O§(false));
         §1!O§(new §2!1§(false,this.§<!E§));
         §1!O§(new §+u§(false));
         §1!O§(new §;b§(false));
         §1!O§(new §?!C§(false));
      }
      
      override protected function initStateLoad() : §+t§
      {
         if(!§9!-§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §14§.§+!8§("assetsUrl");
            }
         }
         return new §'&§(true,§+t§.§2`§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §#!6§ = true;
         if(this.§"v§)
         {
            _loc2_ = §2h§.§>w§(this.§"v§);
            if(_loc2_ != this.§"v§)
            {
               §14§.§%!7§(this.§"v§);
            }
            this.§"v§ = null;
            §"x§(§7!O§.§2`§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§0d§();
      }
      
      private function §0d§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §%!=§;
            _loc2_ = §2C§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§,K§())
         {
            §[F§.§true §(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§?!4§(_loc1_,_loc2_);
         }
         §%!=§ = _loc1_;
         §2C§ = _loc2_;
      }
      
      public function §?!4§(param1:Number, param2:Number) : void
      {
         §`N§.setViewSize(param1,param2);
      }
      
      protected function §,i§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      public function §!$§() : String
      {
         return §<U§.replace("{svn_version}","local dev build");
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
         return §<U§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §14§.§`!O§(§1"§.§=Y§,_loc1_.toString(),_loc1_);
         this.§6!H§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§[4§)
         {
            this.§[4§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§[4§ += String.fromCharCode(param1.keyCode);
         }
         this.§[4§ = this.§[4§.toLowerCase();
         if(this.§[4§.length > 15)
         {
            this.§[4§ = this.§[4§.substr(1);
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
