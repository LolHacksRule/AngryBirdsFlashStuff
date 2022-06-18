package
{
   import §!7§.§=!3§;
   import §"I§.§-x§;
   import §"I§.§6!+§;
   import §"P§.§9!L§;
   import §#[§.§#!Q§;
   import §#[§.§9;§;
   import §#b§.§5!#§;
   import §+!8§.§-!4§;
   import §+!8§.§0!7§;
   import §+!8§.§1!B§;
   import §+!8§.§;!]§;
   import §+!8§.§=!S§;
   import §+!8§.§=f§;
   import §+!8§.StateConnecting;
   import §+!8§.StateCutSceneDynamic;
   import §+!8§.StatePlay;
   import §+!8§.§]!4§;
   import §+!^§.§[!Z§;
   import §,"§.§ !W§;
   import §,'§.§[2§;
   import §,J§.§'!C§;
   import §1_§.§`!N§;
   import §1o§.§'M§;
   import §=g§.§ `§;
   import §=g§.§@!L§;
   import §>p§.§!!A§;
   import §@!W§.§8!W§;
   import §@!Y§.§<U§;
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
   
   public class §@!!§ extends §`!N§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §34§:int = 750;
      
      public static const §!=§:int = 500;
      
      public static const §3!G§:Boolean = false;
      
      public static const §-O§:int = 3000;
      
      public static var §2p§:String = "../service/";
      
      public static var § Y§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §%E§:String = "/webservices/game/";
      
      public static const §'!T§:String = "../mail";
      
      public static var §1k§:String = "initialisesession";
      
      public static var §?!J§:String = "levelstart";
      
      public static var §2!Z§:String = "purchasepowerup";
      
      public static var §[!S§:String = "levelcomplete";
      
      public static var §&y§:String = "refreshsession";
      
      private static var §-!G§:Class = §%!Y§;
      
      private static var §33§:Class = §3!§;
      
      private static var §?X§:Class = §`!%§;
      
      private static var §9#§:Class = §^!S§;
      
      public static var §<R§:§!!A§ = null;
      
      public static var §4!%§:Boolean = true;
      
      public static var § !E§:MovieClip = null;
      
      public static var §%F§:§@!!§ = null;
      
      public static var §4!Y§:Sprite = null;
       
      
      private var §=!4§:§ !W§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §4!a§:SharedObject;
      
      private var callObject:Object;
      
      public function §@!!§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§=!4§ = new § !W§();
         §%F§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §9;§.enabled = true;
         §#!Q§.§ 3§(§9;§.§3;§);
         try
         {
            this.§4!a§ = SharedObject.getLocal("popupData");
            if(this.§4!a§)
            {
               this.§4!a§.data.mRememberMeToggled_Credit = this.§4<§;
               this.§4!a§.data.mRememberMeToggled_CreditCheetosBag = this.§7W§;
            }
         }
         catch(e:*)
         {
         }
         §`!]§ = §34§;
         § >§ = §!=§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§ `§.§2!3§(§-!G§),§ `§.§2!3§(§33§));
         §[!Z§.§0!S§.init(§<U§.§+Z§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=!4§,this.§7l§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §8!W§.init(this,§34§,§!=§);
         §8!W§.§=X§ = new §=!3§(stage);
         §8!W§.§0!4§.visible = §3!G§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §2p§ = stage.loaderInfo.parameters.domain + §%E§;
         }
         §1k§ = §2p§ + §1k§;
         §?!J§ = §2p§ + §?!J§;
         §2!Z§ = §2p§ + §2!Z§;
         §[!S§ = §2p§ + §[!S§;
         §&y§ = §2p§ + §&y§;
         §9>§(new §=!S§(false));
         §9>§(new §=f§(false));
         §9>§(new StatePlay(false));
         §9>§(new §1!B§(false));
         §9>§(new §0!7§(false));
         §9>§(new §;!]§(false));
         §9>§(new StateCutSceneDynamic(false));
         §9>§(new §]!4§(false));
         §9>§(new StateConnecting(false));
         §[2§.addCallback("refreshSession",§=f§(§@!!§.§%F§.§-l§(§=f§.§,!+§)).refreshSession);
         §@!L§.§9J§(§`z§);
         §@!L§.§1q§(true);
         stage.showDefaultContextMenu = false;
         §&!F§(true);
         §'M§.§4![§("CHANNEL_THEME",1,1);
         §'M§.§4![§("CHANNEL_AMBIENT",1,1);
         §<R§ = new §!!A§("");
         stage.addEventListener(Event.RESIZE,this.§3"§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§`!'§);
         if(stage.stageWidth != §34§ || stage.stageHeight != §!=§)
         {
            this.§3"§(null);
         }
      }
      
      public static function §&!F§(param1:Boolean) : void
      {
         §4!%§ = param1;
         §'M§.§1w§(§4!%§);
      }
      
      public static function §7!1§() : Boolean
      {
         return §4!%§;
      }
      
      public static function §;y§() : void
      {
         if(§'M§.§%!]§("Channel_Theme") == null || !§'M§.§%!]§("Channel_Theme").§]!K§())
         {
            §'M§.§1T§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §'!H§() : void
      {
         if(§'M§.§%!]§("Channel_Theme"))
         {
            §'M§.§%!]§("Channel_Theme").§"!?§();
         }
      }
      
      override protected function initStateLoad() : §6!+§
      {
         return new §-!4§(true,§6!+§.§,!+§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §4<§() : Boolean
      {
         if(this.§4!a§)
         {
            return this.§4!a§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §4<§(param1:Boolean) : void
      {
         if(this.§4!a§)
         {
            this.§4!a§.data.mRememberMeToggled_Credit = param1;
            this.§4!a§.flush();
         }
      }
      
      public function get §7W§() : Boolean
      {
         if(this.§4!a§)
         {
            return this.§4!a§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §7W§(param1:Boolean) : void
      {
         if(this.§4!a§)
         {
            this.§4!a§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§4!a§.flush();
         }
      }
      
      protected function §7l§(param1:ByteArray) : void
      {
      }
      
      private function §3"§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §34§;
         var _loc3_:Number = stage.stageHeight / §!=§;
         if(_loc2_ < _loc3_)
         {
            §`z§.scaleX = §`z§.scaleY = _loc2_;
            §8!W§.§9o§(§`z§.x,§`z§.y,stage.stageWidth,stage.stageWidth * (§!=§ / §34§));
         }
         else
         {
            §`z§.scaleX = §`z§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§34§ / §!=§);
            _loc5_ = stage.stageHeight;
            §8!W§.§9o§(§`z§.x,§`z§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §`!'§(param1:FullScreenEvent) : void
      {
         this.§3"§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §[!Z§.§0!S§.§9O§();
         §5!#§.§8M§(§'!C§.§ f§(this.§=!4§.getFileAsString("Chapters.json")));
         this.§;k§();
         try
         {
            §[2§.§^J§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;k§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §#!Q§.§ 3§(§9;§.§'!E§,_loc1_.toString(),_loc1_);
         §8!W§.§]![§(§ `§.§2!3§(§?X§),§ `§.§2!3§(§9#§));
         §8!W§.§'r§(this.§=!4§.§8I§,§9!L§.§3X§(),this.§<L§);
      }
      
      private function §<L§(param1:Event) : void
      {
         §1!?§(StateConnecting.§,!+§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§8!W§.§0!4§ != null)
         {
            §8!W§.§0!4§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§ <§().isGenericState())
         {
            if(_loc2_ == §-x§.STATE_STATUS_COMPLETED)
            {
               §@!L§.log("AngryBirdSocial::run() state change is about to start. Old State = " + § <§().mName + " New State = " + § <§().mNextState);
               §1!?§(§ <§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §34§;
      }
      
      override public function getAppHeight() : Number
      {
         return §!=§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-O§;
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
      
      public function §-N§() : void
      {
         var _loc1_:§-x§ = § <§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§,!+§)
         {
            §1!?§(StateConnecting.§,!+§);
         }
      }
   }
}
