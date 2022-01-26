package
{
   import §"!6§.§`c§;
   import §%!5§.§;D§;
   import §%Y§.§+%§;
   import §%Y§.§2O§;
   import §%Y§.§2]§;
   import §%Y§.§7!X§;
   import §%Y§.§9g§;
   import §%Y§.§@4§;
   import §%Y§.StateConnecting;
   import §%Y§.StateCutSceneDynamic;
   import §%Y§.StatePlay;
   import §%Y§.§null§;
   import §%n§.§5!6§;
   import §'D§.§ I§;
   import §'D§.§8e§;
   import §'O§.§!#§;
   import §'O§.§1E§;
   import §+!O§.§^o§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §2>§.§?!1§;
   import §3P§.§-!3§;
   import §4!W§.§]H§;
   import §6<§.§9H§;
   import §=Z§.§+q§;
   import §@F§.§9!U§;
   import §]m§.§%!D§;
   import §]m§.§-D§;
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
   
   public class §1R§ extends §+q§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §`!N§:int = 750;
      
      public static const §1!9§:int = 500;
      
      public static const §8G§:Boolean = false;
      
      public static const §%!A§:int = 3000;
      
      public static var §'E§:String = "../service/";
      
      public static var §"!_§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §"!5§:String = "/webservices/game/";
      
      public static const §'y§:String = "../mail";
      
      public static var §=!R§:String = "initialisesession";
      
      public static var §"M§:String = "levelstart";
      
      public static var §^J§:String = "purchasepowerup";
      
      public static var §4!8§:String = "levelcomplete";
      
      public static var §>,§:String = "refreshsession";
      
      private static var §6,§:Class = §]9§;
      
      private static var §<!!§:Class = §!g§;
      
      private static var §4Z§:Class = §@!T§;
      
      private static var §9K§:Class = §>O§;
      
      public static var §0!N§:§`c§ = null;
      
      public static var §,X§:Boolean = true;
      
      public static var §>c§:MovieClip = null;
      
      public static var §]c§:§1R§ = null;
      
      public static var §`!W§:Sprite = null;
       
      
      private var § C§:§^o§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §>!9§:SharedObject;
      
      private var callObject:Object;
      
      public function §1R§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§ C§ = new §^o§();
         §]c§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §!#§.enabled = true;
         §1E§.§6!S§(§!#§.§'!M§);
         try
         {
            this.§>!9§ = SharedObject.getLocal("popupData");
            if(this.§>!9§)
            {
               this.§>!9§.data.mRememberMeToggled_Credit = this.§0]§;
               this.§>!9§.data.mRememberMeToggled_CreditCheetosBag = this.§3!>§;
            }
         }
         catch(e:*)
         {
         }
         § !8§ = §`!N§;
         §16§ = §1!9§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§ I§.§^!V§(§6,§),§ I§.§^!V§(§<!!§));
         §-!3§.§!!8§.init(§]H§.§,I§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§ C§,this.§4?§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@!Q§.init(this,§`!N§,§1!9§);
         §@!Q§.§7l§ = new §9H§(stage);
         §@!Q§.§^g§.visible = §8G§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §'E§ = stage.loaderInfo.parameters.domain + §"!5§;
         }
         §=!R§ = §'E§ + §=!R§;
         §"M§ = §'E§ + §"M§;
         §^J§ = §'E§ + §^J§;
         §4!8§ = §'E§ + §4!8§;
         §>,§ = §'E§ + §>,§;
         §#N§(new §2O§(false));
         §#N§(new §@4§(false));
         §#N§(new StatePlay(false));
         §#N§(new §9g§(false));
         §#N§(new §2]§(false));
         §#N§(new §null§(false));
         §#N§(new StateCutSceneDynamic(false));
         §#N§(new §7!X§(false));
         §#N§(new StateConnecting(false));
         §;D§.addCallback("refreshSession",§@4§(§1R§.§]c§.§^!Q§(§@4§.§7!Q§)).refreshSession);
         §8e§.§2&§(§3!J§);
         §8e§.§[2§(true);
         stage.showDefaultContextMenu = false;
         §5K§(true);
         §?!1§.§5!D§("CHANNEL_THEME",1,1);
         §?!1§.§5!D§("CHANNEL_AMBIENT",1,1);
         §0!N§ = new §`c§("");
         stage.addEventListener(Event.RESIZE,this.§,!X§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§%C§);
         if(stage.stageWidth != §`!N§ || stage.stageHeight != §1!9§)
         {
            this.§,!X§(null);
         }
      }
      
      public static function §5K§(param1:Boolean) : void
      {
         §,X§ = param1;
         §?!1§.§2E§(§,X§);
      }
      
      public static function §^A§() : Boolean
      {
         return §,X§;
      }
      
      public static function §&a§() : void
      {
         if(§?!1§.§,W§("Channel_Theme") == null || !§?!1§.§,W§("Channel_Theme").§'!S§())
         {
            §?!1§.§0!O§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §7d§() : void
      {
         if(§?!1§.§,W§("Channel_Theme"))
         {
            §?!1§.§,W§("Channel_Theme").§>a§();
         }
      }
      
      override protected function initStateLoad() : §%!D§
      {
         return new §+%§(true,§%!D§.§7!Q§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §0]§() : Boolean
      {
         if(this.§>!9§)
         {
            return this.§>!9§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §0]§(param1:Boolean) : void
      {
         if(this.§>!9§)
         {
            this.§>!9§.data.mRememberMeToggled_Credit = param1;
            this.§>!9§.flush();
         }
      }
      
      public function get §3!>§() : Boolean
      {
         if(this.§>!9§)
         {
            return this.§>!9§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §3!>§(param1:Boolean) : void
      {
         if(this.§>!9§)
         {
            this.§>!9§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§>!9§.flush();
         }
      }
      
      protected function §4?§(param1:ByteArray) : void
      {
      }
      
      private function §,!X§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §`!N§;
         var _loc3_:Number = stage.stageHeight / §1!9§;
         if(_loc2_ < _loc3_)
         {
            §3!J§.scaleX = §3!J§.scaleY = _loc2_;
            §@!Q§.§=!V§(§3!J§.x,§3!J§.y,stage.stageWidth,stage.stageWidth * (§1!9§ / §`!N§));
         }
         else
         {
            §3!J§.scaleX = §3!J§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§`!N§ / §1!9§);
            _loc5_ = stage.stageHeight;
            §@!Q§.§=!V§(§3!J§.x,§3!J§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §%C§(param1:FullScreenEvent) : void
      {
         this.§,!X§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §-!3§.§!!8§.§;j§();
         §7M§.§%!F§(§9!U§.§[M§(this.§ C§.getFileAsString("Chapters.json")));
         this.§[D§();
         try
         {
            §;D§.§;!6§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §[D§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §1E§.§6!S§(§!#§.§`B§,_loc1_.toString(),_loc1_);
         §@!Q§.§3!D§(§ I§.§^!V§(§4Z§),§ I§.§^!V§(§9K§));
         §@!Q§.§=!>§(this.§ C§.§3!4§,§5!6§.§@X§(),this.§?,§);
      }
      
      private function §?,§(param1:Event) : void
      {
         § !$§(StateConnecting.§7!Q§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§@!Q§.§^g§ != null)
         {
            §@!Q§.§^g§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§"!A§().isGenericState())
         {
            if(_loc2_ == §-D§.STATE_STATUS_COMPLETED)
            {
               §8e§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §"!A§().mName + " New State = " + §"!A§().mNextState);
               § !$§(§"!A§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §`!N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §1!9§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §%!A§;
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
      
      public function §8b§() : void
      {
         var _loc1_:§-D§ = §"!A§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§7!Q§)
         {
            § !$§(StateConnecting.§7!Q§);
         }
      }
   }
}
