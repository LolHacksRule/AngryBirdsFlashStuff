package
{
   import § !1§.§>!g§;
   import § L§.§>!M§;
   import §!!e§.§<!S§;
   import §"!C§.§8?§;
   import §#C§.§ B§;
   import §%<§.§!6§;
   import §%<§.§%!$§;
   import §%<§.§3+§;
   import §%<§.§4!]§;
   import §%<§.§8!Z§;
   import §%<§.§=@§;
   import §%<§.StateCutScene;
   import §%<§.StatePlay;
   import §-!#§.§5!6§;
   import §1!D§.§"!6§;
   import §1!D§.§'!J§;
   import §1!D§.§0S§;
   import §1!D§.§]!§;
   import §2o§.§<H§;
   import §;!-§.§++§;
   import §<G§.§6n§;
   import §=T§.§0!%§;
   import §?H§.§3!X§;
   import §?H§.§>!!§;
   import §]!A§.§1!f§;
   import §]L§.§9%§;
   import §^5§.§@!8§;
   import §^5§.§]!,§;
   import §^u§.§5!U§;
   import §`!W§.§'"§;
   import §`!W§.§2v§;
   import §`!W§.§^!e§;
   import §`!d§.§7!§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §;!4§ extends §8?§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §`G§:String = "http://mcd.angrybirds.com/";
      
      public static const §9!L§:int = 760;
      
      public static const §4!4§:int = 220;
      
      public static const §<!T§:int = 570;
      
      public static const §+!,§:Boolean = false;
      
      public static const §9-§:int = 3000;
      
      public static const §!!P§:String = "ABMcDonaldsChina";
      
      public static var §'!O§:String = !!§+!,§ ? §`G§ : "../";
      
      public static const §]s§:uint = 0;
      
      public static const §[N§:uint = 0;
      
      public static const §,!g§:uint = 12632256;
      
      private static var §2T§:String = §=@§.§<P§;
      
      private static var §+S§:Boolean = false;
      
      private static var §[,§:Class = §'x§;
      
      private static var §#!?§:Class = §%d§;
      
      private static var §false§:Class = §7!M§;
      
      private static var §%y§:Class = §`y§;
      
      private static var §8O§:Class = §-!N§;
      
      private static var §6!e§:Class = §%!e§;
      
      public static var §8'§:§3!X§ = null;
      
      public static var §9r§:Boolean = true;
      
      public static var §?-§:§;!4§ = null;
      
      public static var §'!`§:Sprite = null;
       
      
      private var §=[§:§ B§;
      
      private var §8N§:§'!J§;
      
      public function §;!4§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§>!g§ = null;
         this.§=[§ = new § B§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §+S§ = true;
         }
         this.§8N§ = new §'!J§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §"!6§.enabled = false;
         §]!§.§>G§(§"!6§.§`7§);
         §@!R§ = §9!L§ + §4!4§;
         §=z§ = §<!T§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§^!e§.§=j§(§[,§),§^!e§.§=j§(§#!?§));
         §9%§.§>E§.init(§1!f§.§#7§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=[§,this.§[!a§);
         §0S§.§>E§.§+I§(§^!e§.§=j§(§6!e§));
         var _loc3_:String = §6n§.§+Z§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §0S§.§>E§.§?!7§(_loc3_);
         }
         else
         {
            §0S§.§>E§.§?!7§("zh");
         }
         §?-§ = this;
         §0!%§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §<H§.init(this,§9!L§,§<!T§);
         §<H§.§=3§ = new §++§(stage);
         §<H§.§!B§.visible = §+!,§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §'!O§ = !!§+!,§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §<&§(new §%!$§(false));
         §<&§(new §=@§(false));
         §<&§(new StatePlay(false));
         §<&§(new §!6§(false));
         §<&§(new §4!]§(false));
         §<&§(new StateCutScene(false));
         §<&§(new §8!Z§(false));
         §2v§.§%!H§(§'!0§);
         §2v§.§'K§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = §>!g§.getLocal(§!!P§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §@i§(_loc4_);
         §5!6§.§<!&§("CHANNEL_THEME",1,1);
         §5!6§.§<!&§("CHANNEL_AMBIENT",1,1);
         §8'§ = new §3!X§("");
         §>!!§.§^!4§ = new §5!U§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§^0§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§@u§);
         stage.addEventListener(Event.RESIZE,this.§"g§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§ !J§);
         if(stage.stageWidth != §9!L§ || stage.stageHeight != §<!T§)
         {
            this.§"g§(null);
         }
      }
      
      public static function §@i§(param1:Boolean) : void
      {
         var mySO:§>!g§ = null;
         var value:Boolean = param1;
         §9r§ = value;
         §5!6§.§+!>§(§9r§);
         try
         {
            mySO = §>!g§.getLocal(§!!P§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=!N§() : Boolean
      {
         return §9r§;
      }
      
      public static function §#3§() : void
      {
         if(§5!6§.§`!R§("Channel_Theme") == null || !§5!6§.§`!R§("Channel_Theme").§=!n§())
         {
            §5!6§.§8!G§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §8!n§() : void
      {
         §5!6§.§>R§("Channel_Theme");
      }
      
      public static function get §9!1§() : String
      {
         return §2T§;
      }
      
      public static function set §9!1§(param1:String) : void
      {
         §2T§ = param1;
      }
      
      public static function get §'!h§() : Boolean
      {
         return §+S§;
      }
      
      override protected function initStateLoad() : §@!8§
      {
         return new §3+§(true,§@!8§.§<P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §[!a§(param1:ByteArray) : void
      {
      }
      
      private function §^0§(param1:Event) : void
      {
         §'"§.§;7§();
      }
      
      private function §@u§(param1:MouseEvent) : void
      {
         §'"§.§6!d§();
      }
      
      private function §"g§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §9!L§;
         var _loc3_:Number = stage.stageHeight / §<!T§;
         if(_loc2_ < _loc3_)
         {
            §'!0§.scaleX = §'!0§.scaleY = _loc2_;
            §<H§.§"F§(§'!0§.x,§'!0§.y,stage.stageWidth,stage.stageWidth * (§<!T§ / §9!L§));
         }
         else
         {
            §'!0§.scaleX = §'!0§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§9!L§ / §<!T§);
            _loc5_ = stage.stageHeight;
            §<H§.§"F§(§'!0§.x,§'!0§.y,_loc4_,_loc5_);
         }
      }
      
      protected function § !J§(param1:FullScreenEvent) : void
      {
         this.§"g§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §9%§.§>E§.§!!W§();
         §7!§.§`!@§(§>!M§.§7!N§(this.§=[§.getFileAsString("Chapters.json")));
         this.§>!e§();
      }
      
      private function §>!e§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §]!§.§>G§(§"!6§.§7!-§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§+n§(§^!e§.§=j§(§%y§),§^!e§.§=j§(§false§));
         §<H§.§20§(_loc2_,§^!e§.§=j§(§8O§));
         §<H§.§;!§(this.§=[§.§-P§,§<!S§.§>!8§(),this.§2#§);
      }
      
      private function §2#§(param1:Event) : void
      {
         §^!Z§(§=@§.§<P§);
      }
      
      private function §+n§(param1:XML, param2:XML) : XML
      {
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         param2.appendChild(_loc3_);
         param2.appendChild(_loc4_);
         param2.appendChild(_loc5_);
         param2.appendChild(_loc6_);
         param2.appendChild(_loc7_);
         param2.appendChild(_loc8_);
         param2.appendChild(_loc9_);
         return param2;
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§<H§.§!B§ != null)
         {
            §<H§.§!B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§]!d§().isGenericState())
         {
            if(_loc2_ == §]!,§.STATE_STATUS_COMPLETED)
            {
               §2v§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §]!d§().mName + " New State = " + §]!d§().mNextState);
               §^!Z§(§]!d§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9-§;
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
      
      public function get §1!L§() : §'!J§
      {
         return this.§8N§;
      }
   }
}
