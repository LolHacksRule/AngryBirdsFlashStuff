package
{
   import § !Y§.§2#§;
   import §"J§.§0I§;
   import §%!B§.§`+§;
   import §%!n§.§"+§;
   import §&!V§.§2!§;
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §+P§.§;!%§;
   import §2Y§.§]!k§;
   import §5K§.§1[§;
   import §5K§.§6]§;
   import §5K§.§[C§;
   import §7,§.§=d§;
   import §7-§.§ Y§;
   import §7-§.§!j§;
   import §7-§.§"_§;
   import §7-§.§+!c§;
   import §7-§.§-e§;
   import §7-§.StateCutScene;
   import §7-§.StatePlay;
   import §7-§.§^!4§;
   import §7`§.§'M§;
   import §<!Z§.§8X§;
   import §<Z§.§,!f§;
   import §=b§.§!!Z§;
   import §=b§.§,!G§;
   import §?!g§.§ !d§;
   import §?I§.§'k§;
   import §?I§.§2C§;
   import §?I§.§9!#§;
   import §?I§.§`E§;
   import §`R§.§8#§;
   import §finally§.§8k§;
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
   
   public class §2!M§ extends §8X§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §@!+§:String = "http://mcd.angrybirds.com/";
      
      public static const §[!V§:int = 760;
      
      public static const §&-§:int = 220;
      
      public static const §#k§:int = 570;
      
      public static const §6T§:Boolean = false;
      
      public static const §>B§:int = 3000;
      
      public static const §>z§:String = "ABMcDonaldsChina";
      
      public static var §`8§:String = !!§6T§ ? §@!+§ : "../";
      
      public static const §!!9§:uint = 0;
      
      public static const §@?§:uint = 0;
      
      public static const § J§:uint = 12632256;
      
      private static var §-!§:String = §-e§.§<@§;
      
      private static var §<!!§:Boolean = false;
      
      private static var §^m§:Class = §!N§;
      
      private static var §51§:Class = §extends§;
      
      private static var §`!C§:Class = §,!]§;
      
      private static var §?!@§:Class = §[!T§;
      
      private static var §^t§:Class = §`$§;
      
      private static var §=!E§:Class = §@'§;
      
      public static var §&!#§:§!!Z§ = null;
      
      public static var §1!§:Boolean = true;
      
      public static var §7!F§:§2!M§ = null;
      
      public static var §@O§:Sprite = null;
       
      
      private var §85§:§'M§;
      
      private var §,E§:§9!#§;
      
      public function §2!M§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§,!f§ = null;
         this.§85§ = new §'M§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §<!!§ = true;
         }
         this.§,E§ = new §9!#§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §2C§.enabled = false;
         §'k§.§=<§(§2C§.§`<§);
         §>G§ = §[!V§ + §&-§;
         §%!e§ = §#k§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§1[§.§4L§(§^m§),§1[§.§4L§(§51§));
         §0I§.§@!7§.init(§`+§.§-!%§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§85§,this.§%!@§);
         §`E§.§@!7§.§4!Q§(§1[§.§4L§(§=!E§));
         var _loc3_:String = §=d§.§2!l§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §`E§.§@!7§.§"Q§(_loc3_);
         }
         else
         {
            §`E§.§@!7§.§"Q§("zh");
         }
         §7!F§ = this;
         § !J§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §2#§.init(this,§[!V§,§#k§);
         §2#§.§"@§ = new §8#§(stage);
         §2#§.§@!!§.visible = §6T§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §`8§ = !!§6T§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §%!7§(new §"_§(false));
         §%!7§(new §-e§(false));
         §%!7§(new StatePlay(false));
         §%!7§(new § Y§(false));
         §%!7§(new §!j§(false));
         §%!7§(new StateCutScene(false));
         §%!7§(new §+!c§(false));
         §[C§.§ 5§(§,!6§);
         §[C§.§ f§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = §,!f§.getLocal(§>z§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §0!Y§(_loc4_);
         § !d§.§6D§("CHANNEL_THEME",1,1);
         § !d§.§6D§("CHANNEL_AMBIENT",1,1);
         §&!#§ = new §!!Z§("");
         §,!G§.§-!8§ = new §]!k§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§9!"§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§!!§);
         stage.addEventListener(Event.RESIZE,this.§4!^§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§[W§);
         if(stage.stageWidth != §[!V§ || stage.stageHeight != §#k§)
         {
            this.§4!^§(null);
         }
      }
      
      public static function §0!Y§(param1:Boolean) : void
      {
         var mySO:§,!f§ = null;
         var value:Boolean = param1;
         §1!§ = value;
         § !d§.§>E§(§1!§);
         try
         {
            mySO = §,!f§.getLocal(§>z§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&y§() : Boolean
      {
         return §1!§;
      }
      
      public static function §2!-§() : void
      {
         if(§ !d§.§ P§("Channel_Theme") == null || !§ !d§.§ P§("Channel_Theme").§8!N§())
         {
            § !d§.§-h§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §]5§() : void
      {
         § !d§.§+'§("Channel_Theme");
      }
      
      public static function get §4@§() : String
      {
         return §-!§;
      }
      
      public static function set §4@§(param1:String) : void
      {
         §-!§ = param1;
      }
      
      public static function get §!!h§() : Boolean
      {
         return §<!!§;
      }
      
      override protected function initStateLoad() : §2!§
      {
         return new §^!4§(true,§2!§.§<@§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §%!@§(param1:ByteArray) : void
      {
      }
      
      private function §9!"§(param1:Event) : void
      {
         §6]§.§'v§();
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         §6]§.§3!5§();
      }
      
      private function §4!^§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §[!V§;
         var _loc3_:Number = stage.stageHeight / §#k§;
         if(_loc2_ < _loc3_)
         {
            §,!6§.scaleX = §,!6§.scaleY = _loc2_;
            §2#§.§]!L§(§,!6§.x,§,!6§.y,stage.stageWidth,stage.stageWidth * (§#k§ / §[!V§));
         }
         else
         {
            §,!6§.scaleX = §,!6§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§[!V§ / §#k§);
            _loc5_ = stage.stageHeight;
            §2#§.§]!L§(§,!6§.x,§,!6§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §[W§(param1:FullScreenEvent) : void
      {
         this.§4!^§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §0I§.§@!7§.§,!0§();
         §8k§.§'!Q§(§;!%§.§8[§(this.§85§.getFileAsString("Chapters.json")));
         this.§0e§();
      }
      
      private function §0e§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §'k§.§=<§(§2C§.§ ]§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§-q§(§1[§.§4L§(§?!@§),§1[§.§4L§(§`!C§));
         §2#§.§]A§(_loc2_,§1[§.§4L§(§^t§));
         §2#§.§%!M§(this.§85§.§9F§,§"+§.§9!i§(),this.§+!F§);
      }
      
      private function §+!F§(param1:Event) : void
      {
         §>R§(§-e§.§<@§);
      }
      
      private function §-q§(param1:XML, param2:XML) : XML
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
         if(§2#§.§@!!§ != null)
         {
            §2#§.§@!!§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§,y§().isGenericState())
         {
            if(_loc2_ == §=O§.STATE_STATUS_COMPLETED)
            {
               §[C§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §,y§().mName + " New State = " + §,y§().mNextState);
               §>R§(§,y§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §>B§;
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
      
      public function get §@!2§() : §9!#§
      {
         return this.§,E§;
      }
   }
}
