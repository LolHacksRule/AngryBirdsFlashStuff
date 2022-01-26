package
{
   import § else§.§]!8§;
   import §#!5§.§>!0§;
   import §#K§.§,3§;
   import §'Q§.§&!'§;
   import §'Q§.§'L§;
   import §'Q§.§7!2§;
   import §'Q§.§8!E§;
   import §'Q§.§8!O§;
   import §'Q§.§@Q§;
   import §'Q§.StateConnecting;
   import §'Q§.StateCutSceneDynamic;
   import §'Q§.StatePlay;
   import §'Q§.§]2§;
   import §,h§.§%! §;
   import §0&§.§@o§;
   import §21§.§5z§;
   import §4!4§.§'2§;
   import §5!Q§.§1!R§;
   import §5x§.§]R§;
   import §9U§.§]!W§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§&!L§;
   import §?!F§.§0!Y§;
   import §^!&§.§"x§;
   import §^!&§.§;C§;
   import §^3§.§=!Z§;
   import §^3§.§@!"§;
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
   
   public class §4+§ extends §%! §
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §1=§:int = 750;
      
      public static const §@!#§:int = 500;
      
      public static const §4!-§:Boolean = false;
      
      public static const §0I§:int = 3000;
      
      public static var §+!S§:String = "../service/";
      
      public static var §]!!§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §-!%§:String = "/webservices/game/";
      
      public static const §5<§:String = "../mail";
      
      public static var §[![§:String = "initialisesession";
      
      public static var §2@§:String = "levelstart";
      
      public static var §1a§:String = "purchasepowerup";
      
      public static var §,! §:String = "levelcomplete";
      
      public static var §>,§:String = "refreshsession";
      
      private static var §-V§:Class = §`!K§;
      
      private static var §-!>§:Class = §?o§;
      
      private static var §-+§:Class = §8&§;
      
      private static var §%7§:Class = §break§;
      
      public static var §2!K§:§1!R§ = null;
      
      public static var §'T§:Boolean = true;
      
      public static var §[!3§:MovieClip = null;
      
      public static var §;U§:§4+§ = null;
      
      public static var §`!Z§:Sprite = null;
       
      
      private var §4s§:§5z§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §9S§:SharedObject;
      
      private var callObject:Object;
      
      public function §4+§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§4s§ = new §5z§();
         §;U§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §=!Z§.enabled = true;
         §@!"§.§2^§(§=!Z§.§2y§);
         try
         {
            this.§9S§ = SharedObject.getLocal("popupData");
            if(this.§9S§)
            {
               this.§9S§.data.mRememberMeToggled_Credit = this.§^5§;
               this.§9S§.data.mRememberMeToggled_CreditCheetosBag = this.§=M§;
            }
         }
         catch(e:*)
         {
         }
         §;8§ = §1=§;
         §=!^§ = §@!#§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§"x§.§9!>§(§-V§),§"x§.§9!>§(§-!>§));
         §'2§.§[P§.init(§]!W§.§14§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§4s§,this.§8#§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7`§.init(this,§1=§,§@!#§);
         §7`§.§2'§ = new §@o§(stage);
         §7`§.§#x§.visible = §4!-§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §+!S§ = stage.loaderInfo.parameters.domain + §-!%§;
         }
         §[![§ = §+!S§ + §[![§;
         §2@§ = §+!S§ + §2@§;
         §1a§ = §+!S§ + §1a§;
         §,! § = §+!S§ + §,! §;
         §>,§ = §+!S§ + §>,§;
         §?i§(new §8!E§(false));
         §?i§(new §@Q§(false));
         §?i§(new StatePlay(false));
         §?i§(new §8!O§(false));
         §?i§(new §'L§(false));
         §?i§(new §&!'§(false));
         §?i§(new StateCutSceneDynamic(false));
         §?i§(new §7!2§(false));
         §?i§(new StateConnecting(false));
         §>!0§.addCallback("refreshSession",§@Q§(§4+§.§;U§.§ !]§(§@Q§.§1o§)).refreshSession);
         §;C§.§?K§(§^U§);
         §;C§.§5T§(true);
         stage.showDefaultContextMenu = false;
         §&!X§(true);
         §,3§.§1!W§("CHANNEL_THEME",1,1);
         §,3§.§1!W§("CHANNEL_AMBIENT",1,1);
         §2!K§ = new §1!R§("");
         stage.addEventListener(Event.RESIZE,this.§@!Q§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§@!L§);
         if(stage.stageWidth != §1=§ || stage.stageHeight != §@!#§)
         {
            this.§@!Q§(null);
         }
      }
      
      public static function §&!X§(param1:Boolean) : void
      {
         §'T§ = param1;
         §,3§.§ !Z§(§'T§);
      }
      
      public static function §-n§() : Boolean
      {
         return §'T§;
      }
      
      public static function §]!§() : void
      {
         if(§,3§.§'!4§("Channel_Theme") == null || !§,3§.§'!4§("Channel_Theme").§6F§())
         {
            §,3§.§7!=§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §?"§() : void
      {
         if(§,3§.§'!4§("Channel_Theme"))
         {
            §,3§.§'!4§("Channel_Theme").§`8§();
         }
      }
      
      override protected function initStateLoad() : §&!L§
      {
         return new §]2§(true,§&!L§.§1o§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §^5§() : Boolean
      {
         if(this.§9S§)
         {
            return this.§9S§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §^5§(param1:Boolean) : void
      {
         if(this.§9S§)
         {
            this.§9S§.data.mRememberMeToggled_Credit = param1;
            this.§9S§.flush();
         }
      }
      
      public function get §=M§() : Boolean
      {
         if(this.§9S§)
         {
            return this.§9S§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §=M§(param1:Boolean) : void
      {
         if(this.§9S§)
         {
            this.§9S§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§9S§.flush();
         }
      }
      
      protected function §8#§(param1:ByteArray) : void
      {
      }
      
      private function §@!Q§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §1=§;
         var _loc3_:Number = stage.stageHeight / §@!#§;
         if(_loc2_ < _loc3_)
         {
            §^U§.scaleX = §^U§.scaleY = _loc2_;
            §7`§.§,!6§(§^U§.x,§^U§.y,stage.stageWidth,stage.stageWidth * (§@!#§ / §1=§));
         }
         else
         {
            §^U§.scaleX = §^U§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§1=§ / §@!#§);
            _loc5_ = stage.stageHeight;
            §7`§.§,!6§(§^U§.x,§^U§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §@!L§(param1:FullScreenEvent) : void
      {
         this.§@!Q§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'2§.§[P§.§?B§();
         §<!,§.§>0§(§]!8§.§?!A§(this.§4s§.getFileAsString("Chapters.json")));
         this.§2+§();
         try
         {
            §>!0§.§7!I§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §2+§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §@!"§.§2^§(§=!Z§.§1g§,_loc1_.toString(),_loc1_);
         §7`§.§[!W§(§"x§.§9!>§(§-+§),§"x§.§9!>§(§%7§));
         §7`§.§0o§(this.§4s§.§9&§,§]R§.§ r§(),this.§1q§);
      }
      
      private function §1q§(param1:Event) : void
      {
         §implements§(StateConnecting.§1o§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§7`§.§#x§ != null)
         {
            §7`§.§#x§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§^1§().isGenericState())
         {
            if(_loc2_ == §0!Y§.STATE_STATUS_COMPLETED)
            {
               §;C§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §^1§().mName + " New State = " + §^1§().mNextState);
               §implements§(§^1§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §1=§;
      }
      
      override public function getAppHeight() : Number
      {
         return §@!#§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §0I§;
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
      
      public function §@!N§() : void
      {
         var _loc1_:§0!Y§ = §^1§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§1o§)
         {
            §implements§(StateConnecting.§1o§);
         }
      }
   }
}
