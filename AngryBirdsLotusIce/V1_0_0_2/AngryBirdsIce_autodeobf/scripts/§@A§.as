package
{
   import §"o§.§<G§;
   import §##§.§!;§;
   import §'m§.§%!5§;
   import §8i§.§;S§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §=9§.§#!+§;
   import §>Z§.§2;§;
   import §?'§.§!0§;
   import §?'§.§'!<§;
   import §?'§.§'N§;
   import §?'§.§,!<§;
   import §?'§.§,-§;
   import §?'§.§,y§;
   import §?'§.§0k§;
   import §?'§.§2!,§;
   import §?'§.§9!=§;
   import §`<§.§;a§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   import §try§.§7!0§;
   import §try§.§9Q§;
   
   public class §@A§ extends AngryBirdsFP11
   {
      
      public static const §,s§:String = "1.0.0.0 (r95722)";
      
      protected static var §]!C§:Class = §`1§;
      
      protected static var §>J§:Class = §@2§;
      
      protected static var §@X§:Class = §=!=§;
      
      protected static var §]-§:Class = §=#§;
      
      public static var §^z§:§@A§;
       
      
      private var §'!'§:String = null;
      
      private var §"F§:String = "";
      
      private var §,n§:Boolean = false;
      
      private var §[!§:Sprite;
      
      private var §2o§:int = 0;
      
      private var §0v§:Number;
      
      private var §6a§:Number;
      
      public function §@A§(param1:§#!+§, param2:Number, param3:Number)
      {
         this.§0v§ = param2;
         this.§6a§ = param3;
         super(param1);
         §^z§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §!;§.initialize(param1.stage);
      }
      
      private function §7t§() : Boolean
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
      
      public function §&k§(param1:String) : void
      {
         §7!0§.§!!A§(param1);
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
         §2;§.init();
         §2;§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §%!5§.§!]§(§]!C§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §%!5§.§!]§(§>J§);
         this.§'4§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §%!5§.§!]§(§]-§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§'4§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §%!5§.§!]§(§@X§);
         this.§'4§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§'!'§ = stage.loaderInfo.parameters.levelId;
         if(!this.§'!'§)
         {
            this.§'!'§ = "1-1";
         }
         this.§2o§ = parseInt("0");
         if(this.§2o§ <= 0)
         {
            this.§2o§ = 0;
         }
         §2t§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§7t§())
         {
            §8[§.§import§ = new §<G§(stage);
         }
         else
         {
            this.§3!A§();
         }
      }
      
      private function §3!A§() : void
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
         §[l§ = new §;S§(§3p§);
      }
      
      override protected function initStates() : void
      {
         §0m§(new §,!<§(false));
         §0m§(new §!0§(false));
         §0m§(new §0k§(false));
         §0m§(new §2!,§(false,this.§2o§));
         §0m§(new §'!<§(false));
         §0m§(new §,y§(false,this.§2o§));
         §0m§(new §'N§(false));
         §0m§(new §9!=§(false));
      }
      
      override protected function initStateLoad() : §;a§
      {
         if(!§<! §)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §7!0§.§2! §("assetsUrl");
            }
         }
         return new §,-§(true,§;a§.§`%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §4!G§ = true;
         if(this.§'!'§)
         {
            _loc2_ = §&#§.§9j§(this.§'!'§);
            if(_loc2_ != this.§'!'§)
            {
               §7!0§.§4F§(this.§'!'§);
            }
            this.§'!'§ = null;
            §"y§(§0k§.§`%§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§-w§();
      }
      
      private function §-w§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §implements§;
            _loc2_ = §'p§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§[!§)
         {
            this.§[!§.x = this.§0v§ - this.§[!§.width / this.§[!§.scaleX >> 1;
            this.§[!§.y = this.§6a§ - this.§[!§.height / this.§[!§.scaleY >> 1;
            this.§[!§.scaleX = stage.stageWidth / this.§0v§;
            this.§[!§.scaleY = stage.stageHeight / this.§6a§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§7t§())
         {
            §8[§.§93§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§4!9§(_loc1_,_loc2_);
         }
         §implements§ = _loc1_;
         §'p§ = _loc2_;
      }
      
      public function §4!9§(param1:Number, param2:Number) : void
      {
         §!;§.setViewSize(param1,param2);
      }
      
      protected function §'4§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §,s§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §7!0§.§?z§(§9Q§.§4>§,_loc1_.toString(),_loc1_);
         this.§,n§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§"F§)
         {
            this.§"F§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§"F§ += String.fromCharCode(param1.keyCode);
         }
         this.§"F§ = this.§"F§.toLowerCase();
         if(this.§"F§.length > 15)
         {
            this.§"F§ = this.§"F§.substr(1);
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
