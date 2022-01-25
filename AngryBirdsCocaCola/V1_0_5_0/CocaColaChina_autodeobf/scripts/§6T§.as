package
{
   import §%!c§.§1T§;
   import §%!c§.§@2§;
   import §'!^§.§!!H§;
   import §'!^§.§+4§;
   import §+n§.§+'§;
   import §,-§.§'i§;
   import §,H§.§ P§;
   import §,H§.§+!+§;
   import §,H§.§+!>§;
   import §,H§.§4!L§;
   import §,H§.§5d§;
   import §,H§.§8E§;
   import §,H§.§;!S§;
   import §,H§.§<Z§;
   import §,H§.StateCutScene;
   import §,H§.StatePlay;
   import §,H§.§`$§;
   import §1!4§.§,X§;
   import §2!3§.§#F§;
   import §32§.§^Q§;
   import §3U§.§2!%§;
   import §;A§.§7!K§;
   import §<!!§.§-"§;
   import §<!!§.§<!B§;
   import §<!!§.§=§;
   import §<!T§.§^!]§;
   import §=!#§.§4i§;
   import §=L§.§@E§;
   import §@W§.§19§;
   import §@W§.§2!_§;
   import §[T§.§@!a§;
   import §each §.§>!;§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.system.IME;
   import flash.system.IMEConversionMode;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §set §.§[!;§;
   
   public class §6T§ extends §,X§
   {
      
      public static const VERSION:String = "1.0.0.14";
      
      public static const §,x§:int = 760;
      
      public static const §34§:int = 220;
      
      public static const §+!U§:int = 570;
      
      public static const §2H§:Boolean = false;
      
      public static const §@i§:int = 3000;
      
      public static const §&>§:String = "ABChinaCola";
      
      public static const §&H§:String = !!§2H§ ? "http://head.angrybirds-cokecn.appspot.com/" : "../";
      
      private static var §<! §:String = §`$§.§^!O§;
      
      private static var §`;§:SharedObject;
      
      private static var §'N§:Boolean = false;
      
      private static var §4!0§:Class = §%!K§;
      
      private static var §@M§:Class = §8x§;
      
      private static var §>#§:Class = §?!Q§;
      
      private static var §%l§:Class = §9u§;
      
      public static var §>c§:§1T§ = null;
      
      public static var §"!!§:Boolean = true;
      
      public static var §!Z§:§6T§ = null;
      
      public static var §0!>§:Sprite = null;
       
      
      private var § !6§:§#F§;
      
      private var §1!b§:§+'§;
      
      public function §6T§(param1:CocaColaChinaAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§ !6§ = new §#F§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §'N§ = true;
         }
         this.§1!b§ = new §+'§();
         try
         {
            IME.enabled = true;
            IME.conversionMode = IMEConversionMode.ALPHANUMERIC_HALF;
         }
         catch(error:Error)
         {
         }
         Security.allowDomain("http://angrybirds-cokecn.appspot.com");
         §+4§.enabled = true;
         §!!H§.§?!O§(§+4§.§;!7§);
         §%!1§ = §,x§ + §34§;
         §3J§ = §+!U§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§=§.§!B§(§4!0§),§=§.§!B§(§@M§));
         §^!]§.§0%§.init(§[!;§.§#!O§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§ !6§,this.§-<§);
         §!Z§ = this;
         §4i§.§@#§(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7!K§.init(this,§,x§,§+!U§);
         §7!K§.§=j§ = new §^Q§(stage);
         §7!K§.§9!@§.visible = §2H§;
         §-e§(new §4!L§(false));
         §-e§(new §5d§(false));
         §-e§(new §;!S§(false));
         §-e§(new §8E§(false));
         §-e§(new §`$§(false));
         §-e§(new StatePlay(false));
         §-e§(new § P§(false));
         §-e§(new §+!+§(false));
         §-e§(new StateCutScene(false));
         §-e§(new §<Z§(false));
         §-"§.§-!§(§%D§);
         §-"§.§1!!§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§&>§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §+!3§(_loc3_);
         §@E§.§8!-§("CHANNEL_THEME",1,1);
         §@E§.§8!-§("CHANNEL_AMBIENT",1,1);
         §>c§ = new §1T§("");
         §@2§.§=!'§ = new §>!;§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§<![§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§1!J§);
         stage.addEventListener(Event.RESIZE,this.§%!§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§--§);
         if(stage.stageWidth != §,x§ || stage.stageHeight != §+!U§)
         {
            this.§%!§(null);
         }
      }
      
      public static function §+!3§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §"!!§ = value;
         §@E§.§&A§(§"!!§);
         try
         {
            mySO = SharedObject.getLocal(§&>§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=_§() : Boolean
      {
         return §"!!§;
      }
      
      public static function §"t§() : void
      {
         if(§@E§.§,s§("Channel_Theme") == null || !§@E§.§,s§("Channel_Theme").§7!U§())
         {
            §@E§.playSound("Coke_Theme","Channel_Theme",100);
         }
      }
      
      public static function §"!P§() : void
      {
         §@E§.§1o§("Channel_Theme");
      }
      
      public static function get §-5§() : String
      {
         return §<! §;
      }
      
      public static function set §-5§(param1:String) : void
      {
         §<! § = param1;
      }
      
      public static function get §'w§() : Boolean
      {
         return §'N§;
      }
      
      public static function get §0k§() : SharedObject
      {
         return §`;§;
      }
      
      public static function set §0k§(param1:SharedObject) : void
      {
         §`;§ = param1;
      }
      
      override protected function initStateLoad() : §19§
      {
         return new §+!>§(true,§19§.§^!O§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §-<§(param1:ByteArray) : void
      {
      }
      
      private function §<![§(param1:Event) : void
      {
         §<!B§.§3@§();
      }
      
      private function §1!J§(param1:MouseEvent) : void
      {
         §<!B§.§^!#§();
      }
      
      private function §%!§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §,x§;
         var _loc3_:Number = stage.stageHeight / §+!U§;
         if(_loc2_ < _loc3_)
         {
            §%D§.scaleX = §%D§.scaleY = _loc2_;
            §7!K§.§#!1§(§%D§.x,§%D§.y,stage.stageWidth,stage.stageWidth * (§+!U§ / §,x§));
         }
         else
         {
            §%D§.scaleX = §%D§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§,x§ / §+!U§);
            _loc5_ = stage.stageHeight;
            §7!K§.§#!1§(§%D§.x,§%D§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §--§(param1:FullScreenEvent) : void
      {
         this.§%!§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §^!]§.§0%§.§%'§();
         §2!%§.§`!D§(§@!a§.§>!P§(this.§ !6§.getFileAsString("Chapters.json")));
         this.§<x§();
      }
      
      private function §<x§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!!H§.§?!O§(§+4§.§;%§,_loc1_.toString(),_loc1_);
         §7!K§.§3^§(§=§.§!B§(§>#§),§=§.§!B§(§%l§));
         §7!K§.§1!O§(this.§ !6§.§ k§,§'i§.§?!6§(),this.§9y§);
      }
      
      private function §9y§(param1:Event) : void
      {
         § 7§(§4!L§.§^!O§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§7!K§.§9!@§ != null)
         {
            §7!K§.§9!@§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§?!7§().isGenericState())
         {
            if(_loc2_ == §2!_§.STATE_STATUS_COMPLETED)
            {
               §-"§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §?!7§().mName + " New State = " + §?!7§().mNextState);
               § 7§(§?!7§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@i§;
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
         return VERSION.replace("{svn_version}","local dev build");
      }
      
      public function get §"`§() : §+'§
      {
         return this.§1!b§;
      }
   }
}
