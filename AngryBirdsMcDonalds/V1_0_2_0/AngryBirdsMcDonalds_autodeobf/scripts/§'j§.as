package
{
   import § !m§.§6h§;
   import § v§.§!!^§;
   import § v§.§%!^§;
   import §%!F§.§5!j§;
   import §+-§.§3!5§;
   import §-Y§.§-!V§;
   import §09§.§4!c§;
   import §4%§.§,b§;
   import §4%§.§9!Z§;
   import §4%§.§;!J§;
   import §4%§.§=!J§;
   import §4%§.StateCutScene;
   import §4%§.StatePlay;
   import §4%§.§]!o§;
   import §4%§.§^!O§;
   import §4s§.§>!"§;
   import §6!Q§.§ !"§;
   import §6!Q§.§`4§;
   import §7"§.§2k§;
   import §8!M§.§,N§;
   import §8r§.§8!c§;
   import §9!W§.§=!@§;
   import §;!4§.§4!R§;
   import §;!j§.§'s§;
   import §;!j§.§0!$§;
   import §;!j§.§25§;
   import §;!j§.§[!<§;
   import §=<§.§ !Y§;
   import §=<§.§&5§;
   import §=<§.§1+§;
   import §@]§.§?![§;
   import §^!V§.§^!j§;
   import §`c§.§`Z§;
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
   
   public class §'j§ extends §,N§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §+!>§:String = "http://mcd.angrybirds.com/";
      
      public static const §7&§:int = 760;
      
      public static const §6,§:int = 220;
      
      public static const §+! §:int = 570;
      
      public static const §>!%§:Boolean = false;
      
      public static const §8!5§:int = 3000;
      
      public static const §]!2§:String = "ABMcDonaldsChina";
      
      public static var §2H§:String = !!§>!%§ ? §+!>§ : "../";
      
      public static const §6!D§:uint = 0;
      
      public static const §>5§:uint = 0;
      
      public static const §3!<§:uint = 12632256;
      
      private static var §'!N§:String = §9!Z§.§4D§;
      
      private static var §]!5§:Boolean = false;
      
      private static var §,,§:Class = §9"§;
      
      private static var §>!H§:Class = §"p§;
      
      private static var §1@§:Class = §'7§;
      
      private static var §&!Q§:Class = §3!"§;
      
      private static var §4!I§:Class = §for§;
      
      private static var §[O§:Class = §%_§;
      
      public static var §%g§:§%!^§ = null;
      
      public static var §+!1§:Boolean = true;
      
      public static var §7!$§:§'j§ = null;
      
      public static var §^!k§:Sprite = null;
       
      
      private var §=U§:§4!R§;
      
      private var §=!T§:§0!$§;
      
      public function §'j§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§2k§ = null;
         this.§=U§ = new §4!R§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §]!5§ = true;
         }
         this.§=!T§ = new §0!$§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §'s§.enabled = false;
         §25§.§%!<§(§'s§.§6!g§);
         §9!T§ = §7&§ + §6,§;
         §>!7§ = §+! §;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§ !Y§.§^t§(§,,§),§ !Y§.§^t§(§>!H§));
         §5!j§.§'!S§.init(§4!c§.§9!8§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=U§,this.§0!?§);
         §[!<§.§'!S§.§2l§(§ !Y§.§^t§(§[O§));
         var _loc3_:String = §`Z§.§?D§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §[!<§.§'!S§.§7!m§(_loc3_);
         }
         else
         {
            §[!<§.§'!S§.§7!m§("zh");
         }
         §7!$§ = this;
         §^!j§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §=!@§.init(this,§7&§,§+! §);
         §=!@§.§>!T§ = new §-!V§(stage);
         §=!@§.§3!U§.visible = §>!%§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §2H§ = !!§>!%§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §8!n§(new §,b§(false));
         §8!n§(new §9!Z§(false));
         §8!n§(new StatePlay(false));
         §8!n§(new §;!J§(false));
         §8!n§(new §=!J§(false));
         §8!n§(new StateCutScene(false));
         §8!n§(new §^!O§(false));
         §1+§.§4!%§(§[A§);
         §1+§.§?h§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = §2k§.getLocal(§]!2§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §"!e§(_loc4_);
         §6h§.§9o§("CHANNEL_THEME",1,1);
         §6h§.§9o§("CHANNEL_AMBIENT",1,1);
         §%g§ = new §%!^§("");
         §!!^§.§,!a§ = new §?![§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§=g§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§5!"§);
         stage.addEventListener(Event.RESIZE,this.§1!Y§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§[&§);
         if(stage.stageWidth != §7&§ || stage.stageHeight != §+! §)
         {
            this.§1!Y§(null);
         }
      }
      
      public static function §"!e§(param1:Boolean) : void
      {
         var mySO:§2k§ = null;
         var value:Boolean = param1;
         §+!1§ = value;
         §6h§.§#!2§(§+!1§);
         try
         {
            mySO = §2k§.getLocal(§]!2§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §62§() : Boolean
      {
         return §+!1§;
      }
      
      public static function §^!>§() : void
      {
         if(§6h§.§5!K§("Channel_Theme") == null || !§6h§.§5!K§("Channel_Theme").§['§())
         {
            §6h§.§-a§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §'!<§() : void
      {
         §6h§.§1x§("Channel_Theme");
      }
      
      public static function get §4h§() : String
      {
         return §'!N§;
      }
      
      public static function set §4h§(param1:String) : void
      {
         §'!N§ = param1;
      }
      
      public static function get §5m§() : Boolean
      {
         return §]!5§;
      }
      
      override protected function initStateLoad() : §`4§
      {
         return new §]!o§(true,§`4§.§4D§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §0!?§(param1:ByteArray) : void
      {
      }
      
      private function §=g§(param1:Event) : void
      {
         §&5§.§1!b§();
      }
      
      private function §5!"§(param1:MouseEvent) : void
      {
         §&5§.§6c§();
      }
      
      private function §1!Y§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §7&§;
         var _loc3_:Number = stage.stageHeight / §+! §;
         if(_loc2_ < _loc3_)
         {
            §[A§.scaleX = §[A§.scaleY = _loc2_;
            §=!@§.§6F§(§[A§.x,§[A§.y,stage.stageWidth,stage.stageWidth * (§+! § / §7&§));
         }
         else
         {
            §[A§.scaleX = §[A§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§7&§ / §+! §);
            _loc5_ = stage.stageHeight;
            §=!@§.§6F§(§[A§.x,§[A§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §[&§(param1:FullScreenEvent) : void
      {
         this.§1!Y§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §5!j§.§'!S§.§@!1§();
         §3!5§.§8T§(§8!c§.§`!S§(this.§=U§.getFileAsString("Chapters.json")));
         this.§#a§();
      }
      
      private function §#a§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §25§.§%!<§(§'s§.§-]§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§"2§(§ !Y§.§^t§(§&!Q§),§ !Y§.§^t§(§1@§));
         §=!@§.§<!U§(_loc2_,§ !Y§.§^t§(§4!I§));
         §=!@§.§`'§(this.§=U§.§@!e§,§>!"§.§7#§(),this.§"!X§);
      }
      
      private function §"!X§(param1:Event) : void
      {
         §0! §(§9!Z§.§4D§);
      }
      
      private function §"2§(param1:XML, param2:XML) : XML
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
         if(§=!@§.§3!U§ != null)
         {
            §=!@§.§3!U§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§7z§().isGenericState())
         {
            if(_loc2_ == § !"§.STATE_STATUS_COMPLETED)
            {
               §1+§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §7z§().mName + " New State = " + §7z§().mNextState);
               §0! §(§7z§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §8!5§;
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
      
      public function get §,!_§() : §0!$§
      {
         return this.§=!T§;
      }
   }
}
