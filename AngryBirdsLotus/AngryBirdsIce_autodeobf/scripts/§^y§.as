package
{
   import § C§.§#,§;
   import § C§.§%'§;
   import § C§.§5V§;
   import § C§.§5m§;
   import § C§.§6]§;
   import § C§.§7!5§;
   import § C§.§8c§;
   import § C§.§>!9§;
   import § C§.§[!;§;
   import §!Y§.§[o§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9!!§.§&a§;
   import §;8§.§]'§;
   import §@!,§.§8!6§;
   import §[n§.§!N§;
   import §[x§.§else§;
   import §]4§.§ !G§;
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
   
   public class §^y§ extends AngryBirdsFP11
   {
      
      public static const §=!9§:String = "1.0.0.0 (r95771)";
      
      protected static var §+N§:Class = §8F§;
      
      protected static var §&!,§:Class = §"!'§;
      
      protected static var §#^§:Class = §8C§;
      
      protected static var § W§:Class = §?!0§;
      
      public static var get:§^y§;
       
      
      private var §5$§:String = null;
      
      private var §"A§:String = "";
      
      private var §@9§:Boolean = false;
      
      private var §7!B§:Sprite;
      
      private var §1T§:int = 0;
      
      private var §%T§:Number;
      
      private var §^7§:Number;
      
      public function §^y§(param1:§8!6§, param2:Number, param3:Number)
      {
         this.§%T§ = param2;
         this.§^7§ = param3;
         super(param1);
         get = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §&a§.initialize(param1.stage);
      }
      
      private function §;!8§() : Boolean
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
      
      public function §!!=§(param1:String) : void
      {
         §46§.§!t§(param1);
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
         §@6§.init();
         §@6§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §]'§.§5P§(§+N§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §]'§.§5P§(§&!,§);
         this.§'!A§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §]'§.§5P§(§ W§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§'!A§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §]'§.§5P§(§#^§);
         this.§'!A§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§5$§ = stage.loaderInfo.parameters.levelId;
         if(!this.§5$§)
         {
            this.§5$§ = "1-1";
         }
         this.§1T§ = parseInt("0");
         if(this.§1T§ <= 0)
         {
            this.§1T§ = 0;
         }
         §-!9§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§;!8§())
         {
            §[o§.§='§ = new §else§(stage);
         }
         else
         {
            this.§7Y§();
         }
      }
      
      private function §7Y§() : void
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
         §64§ = new §!N§(§]J§);
      }
      
      override protected function initStates() : void
      {
         §9!2§(new §[!;§(false));
         §9!2§(new §%'§(false));
         §9!2§(new §>!9§(false));
         §9!2§(new §6]§(false,this.§1T§));
         §9!2§(new §#,§(false));
         §9!2§(new §5m§(false,this.§1T§));
         §9!2§(new §5V§(false));
         §9!2§(new §8c§(false));
      }
      
      override protected function initStateLoad() : § !G§
      {
         if(!§'Q§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §46§.§[3§("assetsUrl");
            }
         }
         return new §7!5§(true,§ !G§.§?B§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §[h§ = true;
         if(this.§5$§)
         {
            _loc2_ = §0$§.§5D§(this.§5$§);
            if(_loc2_ != this.§5$§)
            {
               §46§.§=L§(this.§5$§);
            }
            this.§5$§ = null;
            §&K§(§>!9§.§?B§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§!!A§();
      }
      
      private function §!!A§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §%! §;
            _loc2_ = §=j§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§7!B§)
         {
            this.§7!B§.x = this.§%T§ - this.§7!B§.width / this.§7!B§.scaleX >> 1;
            this.§7!B§.y = this.§^7§ - this.§7!B§.height / this.§7!B§.scaleY >> 1;
            this.§7!B§.scaleX = stage.stageWidth / this.§%T§;
            this.§7!B§.scaleY = stage.stageHeight / this.§^7§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§;!8§())
         {
            §[o§.§6g§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§ null§(_loc1_,_loc2_);
         }
         §%! § = _loc1_;
         §=j§ = _loc2_;
      }
      
      public function § null§(param1:Number, param2:Number) : void
      {
         §&a§.setViewSize(param1,param2);
      }
      
      protected function §'!A§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
         return "Client: " + §=!9§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §46§.§3!7§(§,!@§.§`!9§,_loc1_.toString(),_loc1_);
         this.§@9§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§"A§)
         {
            this.§"A§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§"A§ += String.fromCharCode(param1.keyCode);
         }
         this.§"A§ = this.§"A§.toLowerCase();
         if(this.§"A§.length > 15)
         {
            this.§"A§ = this.§"A§.substr(1);
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
