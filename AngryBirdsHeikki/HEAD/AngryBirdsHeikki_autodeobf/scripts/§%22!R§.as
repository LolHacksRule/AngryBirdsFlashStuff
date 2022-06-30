package
{
   import § A§.§8z§;
   import §!I§.§18§;
   import §#%§.§,!E§;
   import §#%§.§70§;
   import §&!b§.§ c§;
   import §&!b§.§2!L§;
   import §&!b§.§7!G§;
   import §'!F§.§>1§;
   import §+B§.§#!b§;
   import §+B§.§%K§;
   import §+B§.§1!g§;
   import §+B§.§2!c§;
   import §+B§.§;Q§;
   import §+B§.§?!U§;
   import §+B§.StateCutScene;
   import §+B§.StatePlay;
   import §+B§.§[y§;
   import §-!9§.§9!!§;
   import §0!X§.§39§;
   import §1!F§.§;!`§;
   import §5V§.§2I§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!Q§.§0+§;
   import §9!Q§.§1T§;
   import §;$§.§0M§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§1o§;
   import §>!G§.§6!9§;
   import §>'§.§super§;
   import §]!N§.§20§;
   import §^f§.§<q§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §"!R§ extends §super§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §^C§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §-m§:int = 760;
      
      public static const §7!8§:int = 220;
      
      public static const §1l§:int = 570;
      
      public static const §9!G§:Boolean = false;
      
      public static const §^!9§:int = 3000;
      
      public static const §65§:String = "ABHeikkiKovalainen";
      
      public static var §['§:String = !!§9!G§ ? §^C§ : "../";
      
      public static const §4F§:uint = 16777215;
      
      public static const § <§:uint = 0;
      
      public static const §7![§:uint = 16777215;
      
      private static var §?!O§:String = §2!c§.§[!%§;
      
      private static var §^!G§:Boolean = false;
      
      private static var §@p§:Class = § !?§;
      
      private static var §%!V§:Class = §-x§;
      
      private static var §2!Q§:Class = §-!%§;
      
      private static var § b§:Class = §!J§;
      
      private static var §^6§:Class = §16§;
      
      public static var §0!P§:§,!E§ = null;
      
      public static var §!!L§:Boolean = true;
      
      public static var §=>§:§"!R§ = null;
      
      public static var §?S§:Sprite = null;
       
      
      private var §"a§:§2I§;
      
      private var §[!;§:§39§;
      
      public function §"!R§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§"a§ = new §2I§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §^!G§ = true;
         }
         this.§[!;§ = new §39§();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §0+§.enabled = true;
         §1T§.§-f§(§0+§.§'!§);
         §>!%§ = §-m§ + §7!8§;
         § r§ = §1l§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§2!L§.§-!7§(§@p§),§2!L§.§-!7§(§%!V§));
         §;!`§.§?! §.init(§0M§.§;"§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§"a§,this.§0&§);
         §=>§ = this;
         §>1§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §&#§.init(this,§-m§,§1l§);
         §&#§.§3!D§ = new §18§(stage);
         §&#§.§3B§.visible = §9!G§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §['§ = !!§9!G§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §%Y§(new §#!b§(false));
         §%Y§(new §1!g§(false));
         §%Y§(new §2!c§(false));
         §%Y§(new StatePlay(false));
         §%Y§(new §[y§(false));
         §%Y§(new §?!U§(false));
         §%Y§(new StateCutScene(false));
         §%Y§(new §;Q§(false));
         § c§.§6!W§(§8!I§);
         § c§.§3"§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§65§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §5c§(_loc3_);
         §<q§.§5i§("CHANNEL_THEME",1,1);
         §<q§.§5i§("CHANNEL_AMBIENT",1,1);
         §0!P§ = new §,!E§("");
         §70§.§6d§ = new §9!!§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§=u§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§9!D§);
         stage.addEventListener(Event.RESIZE,this.§]b§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§79§);
         if(stage.stageWidth != §-m§ || stage.stageHeight != §1l§)
         {
            this.§]b§(null);
         }
      }
      
      public static function §5c§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §!!L§ = value;
         §<q§.§&p§(§!!L§);
         try
         {
            mySO = SharedObject.getLocal(§65§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@!<§() : Boolean
      {
         return §!!L§;
      }
      
      public static function §1P§() : void
      {
         if(§<q§.§9!e§("Channel_Theme") == null || !§<q§.§9!e§("Channel_Theme").§4w§())
         {
            §<q§.§5!S§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §`!2§() : void
      {
         §<q§.§7!=§("Channel_Theme");
      }
      
      public static function get §54§() : String
      {
         return §?!O§;
      }
      
      public static function set §54§(param1:String) : void
      {
         §?!O§ = param1;
      }
      
      public static function get §"!Z§() : Boolean
      {
         return §^!G§;
      }
      
      override protected function initStateLoad() : §1o§
      {
         return new §%K§(true,§1o§.§[!%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §0&§(param1:ByteArray) : void
      {
      }
      
      private function §=u§(param1:Event) : void
      {
         §7!G§.§]-§();
      }
      
      private function §9!D§(param1:MouseEvent) : void
      {
         §7!G§.§1!Y§();
      }
      
      private function §]b§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §-m§;
         var _loc3_:Number = stage.stageHeight / §1l§;
         if(_loc2_ < _loc3_)
         {
            §8!I§.scaleX = §8!I§.scaleY = _loc2_;
            §&#§.§&C§(§8!I§.x,§8!I§.y,stage.stageWidth,stage.stageWidth * (§1l§ / §-m§));
         }
         else
         {
            §8!I§.scaleX = §8!I§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§-m§ / §1l§);
            _loc5_ = stage.stageHeight;
            §&#§.§&C§(§8!I§.x,§8!I§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §79§(param1:FullScreenEvent) : void
      {
         this.§]b§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §;!`§.§?! §.§for§();
         §#w§.§9!b§(§20§.§4!@§(this.§"a§.getFileAsString("Chapters.json")));
         this.§7U§();
      }
      
      private function §7U§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §1T§.§-f§(§0+§.§5!I§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§1!]§(§2!L§.§-!7§(§ b§),§2!L§.§-!7§(§2!Q§));
         §&#§.§7S§(_loc2_,§2!L§.§-!7§(§^6§));
         §&#§.§2@§(this.§"a§.§?6§,§8z§.§^x§(),this.§2!,§);
      }
      
      private function §2!,§(param1:Event) : void
      {
         §1!g§.§9!F§ = §#!b§.§[!%§;
         §#w§.§8>§(§#w§.§0?§(HighscoreSidebar.§!!Q§));
         §0!9§(§1!g§.§[!%§);
      }
      
      private function §1!]§(param1:XML, param2:XML) : XML
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
         if(§&#§.§3B§ != null)
         {
            §&#§.§3B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§6e§().isGenericState())
         {
            if(_loc2_ == §6!9§.STATE_STATUS_COMPLETED)
            {
               § c§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §6e§().mName + " New State = " + §6e§().mNextState);
               §0!9§(§6e§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §^!9§;
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
      
      public function get §3n§() : §39§
      {
         return this.§[!;§;
      }
   }
}
