package
{
   import § N§.§]!A§;
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §!b§.§8!6§;
   import §&C§.§[b§;
   import §&h§.§+Y§;
   import §&h§.§-!B§;
   import §,!A§.§+!2§;
   import §,+§.§4!Z§;
   import §,+§.§6!&§;
   import §2!C§.§,!]§;
   import §2!C§.§-8§;
   import §2!C§.§9!1§;
   import §2!C§.§<x§;
   import §2!C§.§?h§;
   import §2!C§.StateConnecting;
   import §2!C§.StateCutSceneDynamic;
   import §2!C§.StatePlay;
   import §2!C§.§[!+§;
   import §2!C§.§^w§;
   import §39§.§-W§;
   import §5#§.§!j§;
   import §9!S§.§+!=§;
   import §<-§.§]!%§;
   import §<@§.§^!L§;
   import §]u§.§+e§;
   import §^!O§.§8q§;
   import §^Q§.§,^§;
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
   
   public class §7d§ extends §8q§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §=!#§:int = 750;
      
      public static const §,n§:int = 500;
      
      public static const §#[§:Boolean = false;
      
      public static const §9?§:int = 3000;
      
      public static var §&!H§:String = "../service/";
      
      public static var §#!A§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §1!@§:String = "/webservices/game/";
      
      public static const §=&§:String = "../mail";
      
      public static var §7!+§:String = "initialisesession";
      
      public static var § ![§:String = "levelstart";
      
      public static var §'5§:String = "purchasepowerup";
      
      public static var §=!8§:String = "levelcomplete";
      
      public static var §8!J§:String = "refreshsession";
      
      private static var §%1§:Class = §[h§;
      
      private static var §>[§:Class = §-!,§;
      
      private static var §@!!§:Class = §%!A§;
      
      private static var §=u§:Class = §,!%§;
      
      public static var §4'§:§^!L§ = null;
      
      public static var §]L§:Boolean = true;
      
      public static var §29§:MovieClip = null;
      
      public static var §`!<§:§7d§ = null;
      
      public static var §;'§:Sprite = null;
       
      
      private var §5"§:§8!6§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §?!Z§:SharedObject;
      
      private var callObject:Object;
      
      public function §7d§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§5"§ = new §8!6§();
         §`!<§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §4!Z§.enabled = true;
         §6!&§.§08§(§4!Z§.§"V§);
         try
         {
            this.§?!Z§ = SharedObject.getLocal("popupData");
            if(this.§?!Z§)
            {
               this.§?!Z§.data.mRememberMeToggled_Credit = this.§`-§;
               this.§?!Z§.data.mRememberMeToggled_CreditCheetosBag = this.§ ! §;
            }
         }
         catch(e:*)
         {
         }
         §0+§ = §=!#§;
         §4?§ = §,n§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§]!A§.§#?§(§%1§),§]!A§.§#?§(§>[§));
         §]!%§.§%b§.init(§+!2§.§1! §(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§5"§,this.§@!c§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §,^§.init(this,§=!#§,§,n§);
         §,^§.§0K§ = new §+!=§(stage);
         §,^§.§?X§.visible = §#[§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §&!H§ = stage.loaderInfo.parameters.domain + §1!@§;
         }
         §7!+§ = §&!H§ + §7!+§;
         § ![§ = §&!H§ + § ![§;
         §'5§ = §&!H§ + §'5§;
         §=!8§ = §&!H§ + §=!8§;
         §8!J§ = §&!H§ + §8!J§;
         §2v§(new §,!]§(false));
         §2v§(new §^w§(false));
         §2v§(new StatePlay(false));
         §2v§(new §-8§(false));
         §2v§(new §[!+§(false));
         §2v§(new §9!1§(false));
         §2v§(new StateCutSceneDynamic(false));
         §2v§(new §?h§(false));
         §2v§(new StateConnecting(false));
         §+e§.addCallback("refreshSession",§^w§(§7d§.§`!<§.§+,§(§^w§.§+!a§)).refreshSession);
         §]M§.§`[§(§&"§);
         §]M§.§`!"§(true);
         stage.showDefaultContextMenu = false;
         §`!G§(true);
         §!!O§.§7!b§("CHANNEL_THEME",1,1);
         §!!O§.§7!b§("CHANNEL_AMBIENT",1,1);
         §4'§ = new §^!L§("");
         stage.addEventListener(Event.RESIZE,this.§-!2§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§ _§);
         if(stage.stageWidth != §=!#§ || stage.stageHeight != §,n§)
         {
            this.§-!2§(null);
         }
      }
      
      public static function §`!G§(param1:Boolean) : void
      {
         §]L§ = param1;
         §!!O§.§5I§(§]L§);
      }
      
      public static function § 7§() : Boolean
      {
         return §]L§;
      }
      
      public static function §+!>§() : void
      {
         if(§!!O§.§@!9§("Channel_Theme") == null || !§!!O§.§@!9§("Channel_Theme").§6G§())
         {
            §!!O§.§<D§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §@=§() : void
      {
         if(§!!O§.§@!9§("Channel_Theme"))
         {
            §!!O§.§@!9§("Channel_Theme").§+"§();
         }
      }
      
      override protected function initStateLoad() : §-!B§
      {
         return new §<x§(true,§-!B§.§+!a§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §`-§() : Boolean
      {
         if(this.§?!Z§)
         {
            return this.§?!Z§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §`-§(param1:Boolean) : void
      {
         if(this.§?!Z§)
         {
            this.§?!Z§.data.mRememberMeToggled_Credit = param1;
            this.§?!Z§.flush();
         }
      }
      
      public function get § ! §() : Boolean
      {
         if(this.§?!Z§)
         {
            return this.§?!Z§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set § ! §(param1:Boolean) : void
      {
         if(this.§?!Z§)
         {
            this.§?!Z§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§?!Z§.flush();
         }
      }
      
      protected function §@!c§(param1:ByteArray) : void
      {
      }
      
      private function §-!2§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §=!#§;
         var _loc3_:Number = stage.stageHeight / §,n§;
         if(_loc2_ < _loc3_)
         {
            §&"§.scaleX = §&"§.scaleY = _loc2_;
            §,^§.§6!H§(§&"§.x,§&"§.y,stage.stageWidth,stage.stageWidth * (§,n§ / §=!#§));
         }
         else
         {
            §&"§.scaleX = §&"§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§=!#§ / §,n§);
            _loc5_ = stage.stageHeight;
            §,^§.§6!H§(§&"§.x,§&"§.y,_loc4_,_loc5_);
         }
      }
      
      protected function § _§(param1:FullScreenEvent) : void
      {
         this.§-!2§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §]!%§.§%b§.§[!O§();
         §-W§.§=8§(§!j§.§2Q§(this.§5"§.getFileAsString("Chapters.json")));
         this.§]!;§();
         try
         {
            §+e§.§5?§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]!;§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6!&§.§08§(§4!Z§.§6&§,_loc1_.toString(),_loc1_);
         §,^§.§,Z§(§]!A§.§#?§(§@!!§),§]!A§.§#?§(§=u§));
         §,^§.§;!W§(this.§5"§.static,§[b§.§;q§(),this.§-§);
      }
      
      private function §-§(param1:Event) : void
      {
         §1V§(StateConnecting.§+!a§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§,^§.§?X§ != null)
         {
            §,^§.§?X§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§[!0§().isGenericState())
         {
            if(_loc2_ == §+Y§.STATE_STATUS_COMPLETED)
            {
               §]M§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §[!0§().mName + " New State = " + §[!0§().mNextState);
               §1V§(§[!0§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §=!#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §,n§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9?§;
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
      
      public function §'i§() : void
      {
         var _loc1_:§+Y§ = §[!0§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§+!a§)
         {
            §1V§(StateConnecting.§+!a§);
         }
      }
   }
}
