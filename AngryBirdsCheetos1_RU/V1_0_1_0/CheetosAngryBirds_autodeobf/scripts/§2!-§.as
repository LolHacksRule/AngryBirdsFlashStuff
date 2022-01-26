package
{
   import §!!@§.§,A§;
   import §"!S§.§"_§;
   import §%t§.§7G§;
   import §%t§.§@!%§;
   import §&d§.§!!O§;
   import §,!?§.§#§;
   import §,!?§.§&c§;
   import §,!?§.§0T§;
   import §,!?§.§;>§;
   import §,!?§.§?!"§;
   import §,!?§.§@3§;
   import §,!?§.StateConnecting;
   import §,!?§.StateCutSceneDynamic;
   import §,!?§.StatePlay;
   import §,!?§.§]R§;
   import §-!O§.§7!K§;
   import §-!O§.§7'§;
   import §1E§.§2^§;
   import §3X§.§#!B§;
   import §4X§.§<!`§;
   import §5!$§.§"!I§;
   import §9g§.§<x§;
   import §>8§.§?2§;
   import §?u§.§+V§;
   import §@k§.§5!D§;
   import §@z§.§%>§;
   import §`!@§.§&[§;
   import §`!@§.§^@§;
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
   
   public class §2!-§ extends §%>§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §]!`§:int = 750;
      
      public static const §-$§:int = 500;
      
      public static const §6!-§:Boolean = false;
      
      public static const §8!1§:int = 3000;
      
      public static var §4!5§:String = "../service/";
      
      public static var §`! §:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §;!;§:String = "/webservices/game/";
      
      public static const §`s§:String = "../mail";
      
      public static var §0!=§:String = "initialisesession";
      
      public static var §"o§:String = "levelstart";
      
      public static var §"-§:String = "purchasepowerup";
      
      public static var §@!+§:String = "levelcomplete";
      
      public static var §-A§:String = "refreshsession";
      
      private static var § f§:Class = §]x§;
      
      private static var §8!K§:Class = §%`§;
      
      private static var §5!9§:Class = §=!8§;
      
      private static var §=u§:Class = §!!A§;
      
      public static var §5R§:§<!`§ = null;
      
      public static var §^!&§:Boolean = true;
      
      public static var §%a§:MovieClip = null;
      
      public static var §"7§:§2!-§ = null;
      
      public static var §?-§:Sprite = null;
       
      
      private var §7!X§:§,A§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §[!N§:SharedObject;
      
      private var callObject:Object;
      
      public function §2!-§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§7!X§ = new §,A§();
         §"7§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §&[§.enabled = true;
         §^@§.§ !9§(§&[§.§2!W§);
         try
         {
            this.§[!N§ = SharedObject.getLocal("popupData");
            if(this.§[!N§)
            {
               this.§[!N§.data.mRememberMeToggled_Credit = this.§^I§;
               this.§[!N§.data.mRememberMeToggled_CreditCheetosBag = this.§;z§;
            }
         }
         catch(e:*)
         {
         }
         §?O§ = §]!`§;
         §8!M§ = §-$§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§7G§.§-^§(§ f§),§7G§.§-^§(§8!K§));
         §<x§.§0E§.init(§5!D§.§9'§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§7!X§,this.§"!B§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §"_§.init(this,§]!`§,§-$§);
         §"_§.§+!^§ = new §#!B§(stage);
         §"_§.§&!K§.visible = §6!-§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §4!5§ = stage.loaderInfo.parameters.domain + §;!;§;
         }
         §0!=§ = §4!5§ + §0!=§;
         §"o§ = §4!5§ + §"o§;
         §"-§ = §4!5§ + §"-§;
         §@!+§ = §4!5§ + §@!+§;
         §-A§ = §4!5§ + §-A§;
         §]M§(new §0T§(false));
         §]M§(new §&c§(false));
         §]M§(new StatePlay(false));
         §]M§(new §#§(false));
         §]M§(new §@3§(false));
         §]M§(new §;>§(false));
         §]M§(new StateCutSceneDynamic(false));
         §]M§(new §]R§(false));
         §]M§(new StateConnecting(false));
         §+V§.addCallback("refreshSession",§&c§(§2!-§.§"7§.§1!9§(§&c§.§@B§)).refreshSession);
         §@!%§.§`D§(§8r§);
         §@!%§.§0k§(true);
         stage.showDefaultContextMenu = false;
         §3U§(true);
         §2^§.§5!Q§("CHANNEL_THEME",1,1);
         §2^§.§5!Q§("CHANNEL_AMBIENT",1,1);
         §5R§ = new §<!`§("");
         stage.addEventListener(Event.RESIZE,this.§%!R§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§#G§);
         if(stage.stageWidth != §]!`§ || stage.stageHeight != §-$§)
         {
            this.§%!R§(null);
         }
      }
      
      public static function §3U§(param1:Boolean) : void
      {
         §^!&§ = param1;
         §2^§.§case §(§^!&§);
      }
      
      public static function §4s§() : Boolean
      {
         return §^!&§;
      }
      
      public static function §?p§() : void
      {
         if(§2^§.§6m§("Channel_Theme") == null || !§2^§.§6m§("Channel_Theme").§"U§())
         {
            §2^§.§ !C§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §9!C§() : void
      {
         if(§2^§.§6m§("Channel_Theme"))
         {
            §2^§.§6m§("Channel_Theme").§ !]§();
         }
      }
      
      override protected function initStateLoad() : §7!K§
      {
         return new §?!"§(true,§7!K§.§@B§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §^I§() : Boolean
      {
         if(this.§[!N§)
         {
            return this.§[!N§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §^I§(param1:Boolean) : void
      {
         if(this.§[!N§)
         {
            this.§[!N§.data.mRememberMeToggled_Credit = param1;
            this.§[!N§.flush();
         }
      }
      
      public function get §;z§() : Boolean
      {
         if(this.§[!N§)
         {
            return this.§[!N§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §;z§(param1:Boolean) : void
      {
         if(this.§[!N§)
         {
            this.§[!N§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§[!N§.flush();
         }
      }
      
      protected function §"!B§(param1:ByteArray) : void
      {
      }
      
      private function §%!R§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §]!`§;
         var _loc3_:Number = stage.stageHeight / §-$§;
         if(_loc2_ < _loc3_)
         {
            §8r§.scaleX = §8r§.scaleY = _loc2_;
            §"_§.§#F§(§8r§.x,§8r§.y,stage.stageWidth,stage.stageWidth * (§-$§ / §]!`§));
         }
         else
         {
            §8r§.scaleX = §8r§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§]!`§ / §-$§);
            _loc5_ = stage.stageHeight;
            §"_§.§#F§(§8r§.x,§8r§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §#G§(param1:FullScreenEvent) : void
      {
         this.§%!R§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §<x§.§0E§.§%!H§();
         §?2§.§2!3§(§!!O§.§3Q§(this.§7!X§.getFileAsString("Chapters.json")));
         this.§]=§();
         try
         {
            §+V§.§3!'§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]=§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §^@§.§ !9§(§&[§.§?!N§,_loc1_.toString(),_loc1_);
         §"_§.§@n§(§7G§.§-^§(§5!9§),§7G§.§-^§(§=u§));
         §"_§.§?G§(this.§7!X§.§6_§,§"!I§.§[d§(),this.§'6§);
      }
      
      private function §'6§(param1:Event) : void
      {
         §?!-§(StateConnecting.§@B§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§"_§.§&!K§ != null)
         {
            §"_§.§&!K§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§;O§().isGenericState())
         {
            if(_loc2_ == §7'§.STATE_STATUS_COMPLETED)
            {
               §@!%§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §;O§().mName + " New State = " + §;O§().mNextState);
               §?!-§(§;O§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §]!`§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §8!1§;
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
      
      public function §+!7§() : void
      {
         var _loc1_:§7'§ = §;O§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§@B§)
         {
            §?!-§(StateConnecting.§@B§);
         }
      }
   }
}
