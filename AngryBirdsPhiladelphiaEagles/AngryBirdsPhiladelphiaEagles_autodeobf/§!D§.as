package
{
   import § m§.§]q§;
   import §&^§.§[!7§;
   import §'!O§.§]L§;
   import §,!"§.§"!A§;
   import §,!"§.§&!7§;
   import §,!"§.§0-§;
   import §,!"§.§0H§;
   import §,!"§.§4S§;
   import §,!"§.§;!L§;
   import §,!"§.§>!+§;
   import §,!"§.§@f§;
   import §,!"§.§[!G§;
   import §,!"§.§]j§;
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §6g§.§3+§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §9T§.§?9§;
   import §<M§.§?!6§;
   import §@B§.§8V§;
   import §]p§.§9!,§;
   import §^]§.§`!K§;
   import §`K§.§^!5§;
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
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §!D§ extends AngryBirdsFP11
   {
      
      public static const §'S§:String = "0.0.1.0 (r98915)";
      
      protected static var §?!P§:Class = § !J§;
      
      protected static var § a§:Class = §!!-§;
      
      protected static var §!2§:Class = §^h§;
      
      protected static var §-!0§:Class = §?!F§;
      
      public static const §+!#§:String = "http://philadelphia-eagles.appspot.com/";
      
      public static const §^!E§:Boolean = false;
      
      public static var §1P§:String = !!§^!E§ ? §+!#§ : "../";
      
      public static const §3[§:String = "ABEagle";
      
      public static const §5!%§:String = §3[§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §2I§:String = §3[§ + "_LEVEL_STARS";
      
      public static const §6+§:String = §3[§ + "_LEVEL_SCORE";
      
      public static const §8T§:String = §3[§ + "_GAME_SOUND";
      
      public static var §,<§:Dictionary;
      
      public static var §46§:§!D§;
      
      private static var §<#§:String = "";
       
      
      private var §+_§:String = null;
      
      private var §8$§:String = "";
      
      private var § !<§:Boolean = false;
      
      private var §8§:int = 0;
      
      private var §=!0§:Number;
      
      private var §?2§:Number;
      
      public function §!D§(param1:§'B§, param2:Number, param3:Number)
      {
         this.§=!0§ = param2;
         this.§?2§ = param3;
         super(param1);
         §46§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §?!6§.initialize(param1.stage);
         §#! §.§92§.visible = §^!E§;
         var _loc4_:String;
         if((_loc4_ = §8V§.§^^§("window.navigator.userAgent.toString")).indexOf("Safari") != -1)
         {
            §<#§ = "Safari";
         }
         if(_loc4_.indexOf("Firefox") != -1)
         {
            §<#§ = "Firefox";
         }
         if(_loc4_.indexOf("Chrome") != -1)
         {
            §<#§ = "Chrome";
         }
         if(_loc4_.indexOf("MSIE") != -1)
         {
            §<#§ = "Internet Explorer";
         }
         if(_loc4_.indexOf("Opera") != -1)
         {
            §<#§ = "Opera";
         }
      }
      
      public static function §[5§() : void
      {
         if(§[!7§.§-K§("Channel_Theme") == null || !§[!7§.§-K§("Channel_Theme").§+c§())
         {
            §[!7§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §#!O§(param1:String, param2:*) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         try
         {
            if(§<#§ != "Chrome")
            {
               mySO = SharedObject.getLocal(§3[§);
               mySO.data[key] = value;
               mySO.flush();
            }
            else
            {
               §3+§.§9z§(key,value);
               §3+§.flush();
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §;2§(param1:String) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         try
         {
            if(§<#§ != "Chrome")
            {
               mySO = SharedObject.getLocal(§3[§);
               return mySO.data[key];
            }
            return §3+§.getValue(key);
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §,Y§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§3[§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §'Q§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §!D§.§,Y§(§!D§.§5!%§ + "1-" + (i + 1));
               §!D§.§,Y§(§!D§.§6+§ + "1-" + (i + 1));
               §!D§.§,Y§(§!D§.§2I§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §%2§(param1:int) : Boolean
      {
         var _loc2_:int = §9!,§.§>o§.§+d§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§`!K§.§6J§() == null)
         {
            return true;
         }
         return false;
      }
      
      public static function § t§(param1:int, param2:String) : void
      {
         if(§,<§ == null)
         {
            §,<§ = new Dictionary();
         }
         §,<§[param2] = param1;
      }
      
      public static function §]!?§(param1:String) : int
      {
         if(§,<§ == null || §,<§[param1] == null)
         {
            return -1;
         }
         return §,<§[param1];
      }
      
      private function §=_§() : Boolean
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
      
      public function §<!E§(param1:String) : void
      {
         §-<§.§>v§(§-<§.§[!'§);
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
         §[!7§.init();
         §[!7§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §^!5§.§'l§(§?!P§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §^!5§.§'l§(§ a§);
         this.§0!3§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §^!5§.§'l§(§-!0§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§0!3§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §^!5§.§'l§(§!2§);
         this.§0!3§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§+_§ = stage.loaderInfo.parameters.levelId;
         if(!this.§+_§)
         {
            this.§+_§ = "1-1";
         }
         this.§8§ = parseInt("0");
         if(this.§8§ <= 0)
         {
            this.§8§ = 0;
         }
         §6r§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§=_§())
         {
            §#! §.§`'§ = new §?9§(stage);
         }
         else
         {
            this.§^"§();
         }
      }
      
      private function §^"§() : void
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
         §`I§ = new §]q§(§#U§);
      }
      
      override protected function initStates() : void
      {
         §#!F§(new §"!A§(false));
         §#!F§(new §>!+§(false));
         §#!F§(new §@f§(false));
         §#!F§(new §[!G§(false,this.§8§));
         §#!F§(new §4S§(false));
         §#!F§(new §]j§(false,this.§8§));
         §#!F§(new §&!7§(false));
         §#!F§(new §0H§(false));
         §#!F§(new §;!L§(false));
      }
      
      override protected function initStateLoad() : §]L§
      {
         if(!§^!E§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §-<§.§0O§("assetsUrl");
            }
         }
         return new §0-§(true,§]L§.§-A§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §"e§ = true;
         if(this.§+_§)
         {
            _loc2_ = §`!K§.§]!F§(this.§+_§);
            if(_loc2_ != this.§+_§)
            {
               §-<§.§%j§(this.§+_§);
            }
            this.§+_§ = null;
            §8n§(§@f§.§-A§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§>&§();
      }
      
      private function §>&§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §?P§;
            _loc2_ = §%Z§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§=_§())
         {
            §#! §.§%U§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§ G§(_loc1_,_loc2_);
         }
         §?P§ = _loc1_;
         §%Z§ = _loc2_;
      }
      
      public function § G§(param1:Number, param2:Number) : void
      {
         §?!6§.setViewSize(param1,param2);
      }
      
      protected function §0!3§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      public function §!5§() : String
      {
         return §'S§.replace("{svn_version}","local dev build");
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
         return §'S§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §-<§.§>v§(§3"§.§1!'§,_loc1_.toString(),_loc1_);
         this.§ !<§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§8$§)
         {
            this.§8$§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§8$§ += String.fromCharCode(param1.keyCode);
         }
         this.§8$§ = this.§8$§.toLowerCase();
         if(this.§8$§.length > 15)
         {
            this.§8$§ = this.§8$§.substr(1);
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
