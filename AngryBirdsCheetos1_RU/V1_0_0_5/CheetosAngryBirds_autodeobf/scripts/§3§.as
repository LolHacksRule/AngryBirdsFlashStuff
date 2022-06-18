package
{
   import § =§.§ x§;
   import § =§.§,!R§;
   import §!%§.§ D§;
   import §!%§.§!w§;
   import §!4§.§6!@§;
   import §!4§.§=!Z§;
   import §&!`§.§ 9§;
   import §&!`§.§!]§;
   import §&!`§.§4q§;
   import §&!`§.§8!@§;
   import §&!`§.§>!B§;
   import §&!`§.StateConnecting;
   import §&!`§.StateCutSceneDynamic;
   import §&!`§.StatePlay;
   import §&!`§.§[+§;
   import §&!`§.§^!%§;
   import §&z§.§"!&§;
   import §'d§.§3>§;
   import §0C§.§"!T§;
   import §4"§.§<Q§;
   import §7f§.§@+§;
   import §9!6§.§-!7§;
   import §;C§.§5!O§;
   import §?!H§.§!h§;
   import §?!N§.§?!"§;
   import §^!5§.§8!_§;
   import §`2§.§>Z§;
   import §`y§.§4!T§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §3§ extends §>Z§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §'R§:int = 750;
      
      public static const §'Z§:int = 500;
      
      public static const § -§:Boolean = false;
      
      public static const §6!A§:int = 3000;
      
      public static var §1j§:String = "../service/";
      
      public static var §@!!§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §;c§:String = "/webservices/game/";
      
      public static const §5!I§:String = "../mail";
      
      public static var §8Z§:String = "initialisesession";
      
      public static var §#@§:String = "levelstart";
      
      public static var §!G§:String = "purchasepowerup";
      
      public static var §!!4§:String = "levelcomplete";
      
      public static var §<,§:String = "refreshsession";
      
      private static var §,!,§:Class = §[7§;
      
      private static var §-j§:Class = §1!<§;
      
      private static var §1!Y§:Class = §<>§;
      
      private static var §5b§:Class = §7!$§;
      
      public static var §6!Z§:§<Q§ = null;
      
      public static var §[!0§:Boolean = true;
      
      public static var §8=§:MovieClip = null;
      
      public static var §]T§:§3§ = null;
      
      public static var §-!Q§:Sprite = null;
       
      
      private var §&!2§:§"!&§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §1Q§:SharedObject;
      
      private var callObject:Object;
      
      public function §3§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§&!2§ = new §"!&§();
         §]T§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         § D§.enabled = true;
         §!w§.§]!§(§ D§.§ 0§);
         try
         {
            this.§1Q§ = SharedObject.getLocal("popupData");
            if(this.§1Q§)
            {
               this.§1Q§.data.mRememberMeToggled_Credit = this.§];§;
               this.§1Q§.data.mRememberMeToggled_CreditCheetosBag = this.§9p§;
            }
         }
         catch(e:*)
         {
         }
         §+!P§ = §'R§;
         §^q§ = §'Z§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§6!@§.§![§(§,!,§),§6!@§.§![§(§-j§));
         §-!7§.§,§.init(§4!T§.§5!!§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§&!2§,this.§@"§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §3>§.init(this,§'R§,§'Z§);
         §3>§.§8!$§ = new §@+§(stage);
         §3>§.§%§.visible = § -§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §1j§ = stage.loaderInfo.parameters.domain + §;c§;
         }
         §8Z§ = §1j§ + §8Z§;
         §#@§ = §1j§ + §#@§;
         §!G§ = §1j§ + §!G§;
         §!!4§ = §1j§ + §!!4§;
         §<,§ = §1j§ + §<,§;
         §4!K§(new §8!@§(false));
         §4!K§(new §4q§(false));
         §4!K§(new StatePlay(false));
         §4!K§(new §>!B§(false));
         §4!K§(new §!]§(false));
         §4!K§(new § 9§(false));
         §4!K§(new StateCutSceneDynamic(false));
         §4!K§(new §^!%§(false));
         §4!K§(new StateConnecting(false));
         §?!"§.addCallback("refreshSession",§4q§(§3§.§]T§.§4s§(§4q§.§="§)).refreshSession);
         §=!Z§.§<b§(§,$§);
         §=!Z§.§=[§(true);
         stage.showDefaultContextMenu = false;
         §>k§(true);
         §5!O§.§>n§("CHANNEL_THEME",1,1);
         §5!O§.§>n§("CHANNEL_AMBIENT",1,1);
         §6!Z§ = new §<Q§("");
         stage.addEventListener(Event.RESIZE,this.§2!W§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§[!<§);
         if(stage.stageWidth != §'R§ || stage.stageHeight != §'Z§)
         {
            this.§2!W§(null);
         }
      }
      
      public static function §>k§(param1:Boolean) : void
      {
         §[!0§ = param1;
         §5!O§.§#w§(§[!0§);
      }
      
      public static function §%!=§() : Boolean
      {
         return §[!0§;
      }
      
      public static function §>!V§() : void
      {
         if(§5!O§.§?4§("Channel_Theme") == null || !§5!O§.§?4§("Channel_Theme").§6!3§())
         {
            §5!O§.§-q§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §^!_§() : void
      {
         if(§5!O§.§?4§("Channel_Theme"))
         {
            §5!O§.§?4§("Channel_Theme").§ for§();
         }
      }
      
      override protected function initStateLoad() : §,!R§
      {
         return new §[+§(true,§,!R§.§="§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §];§() : Boolean
      {
         if(this.§1Q§)
         {
            return this.§1Q§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §];§(param1:Boolean) : void
      {
         if(this.§1Q§)
         {
            this.§1Q§.data.mRememberMeToggled_Credit = param1;
            this.§1Q§.flush();
         }
      }
      
      public function get §9p§() : Boolean
      {
         if(this.§1Q§)
         {
            return this.§1Q§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §9p§(param1:Boolean) : void
      {
         if(this.§1Q§)
         {
            this.§1Q§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§1Q§.flush();
         }
      }
      
      protected function §@"§(param1:ByteArray) : void
      {
      }
      
      private function §2!W§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §'R§;
         var _loc3_:Number = stage.stageHeight / §'Z§;
         if(_loc2_ < _loc3_)
         {
            §,$§.scaleX = §,$§.scaleY = _loc2_;
            §3>§.§,E§(§,$§.x,§,$§.y,stage.stageWidth,stage.stageWidth * (§'Z§ / §'R§));
         }
         else
         {
            §,$§.scaleX = §,$§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§'R§ / §'Z§);
            _loc5_ = stage.stageHeight;
            §3>§.§,E§(§,$§.x,§,$§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §[!<§(param1:FullScreenEvent) : void
      {
         this.§2!W§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §-!7§.§,§.§=!5§();
         §"!T§.§8! §(§8!_§.§`>§(this.§&!2§.getFileAsString("Chapters.json")));
         this.§!!8§();
         try
         {
            §?!"§.§7`§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §!!8§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!w§.§]!§(§ D§.§+!0§,_loc1_.toString(),_loc1_);
         §3>§.§!r§(§6!@§.§![§(§1!Y§),§6!@§.§![§(§5b§));
         §3>§.§,4§(this.§&!2§.§0N§,§!h§.§`b§(),this.§9!^§);
      }
      
      private function §9!^§(param1:Event) : void
      {
         §?!#§(StateConnecting.§="§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§3>§.§%§ != null)
         {
            §3>§.§%§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§>t§().isGenericState())
         {
            if(_loc2_ == § x§.STATE_STATUS_COMPLETED)
            {
               §=!Z§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §>t§().mName + " New State = " + §>t§().mNextState);
               §?!#§(§>t§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §'R§;
      }
      
      override public function getAppHeight() : Number
      {
         return §'Z§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6!A§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
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
               while(_loc1_.search("-") != -1)
               {
                  _loc1_ = _loc1_.replace("-",".");
               }
               return _loc1_;
            }
         }
         return VERSION.replace("{svn_version}","local dev build");
      }
      
      public function §;!O§() : void
      {
         var _loc1_:§ x§ = §>t§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§="§)
         {
            §?!#§(StateConnecting.§="§);
         }
      }
   }
}
