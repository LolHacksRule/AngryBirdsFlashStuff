package
{
   import § !O§.§9!F§;
   import § !Z§.§0V§;
   import § e§.§&!&§;
   import § e§.§0y§;
   import § e§.§?`§;
   import § e§.§[Z§;
   import §"2§.§9-§;
   import §#M§.§+!Z§;
   import §5!5§.§'j§;
   import §5!5§.§1!b§;
   import §5!;§.§40§;
   import §5%§.§?!Q§;
   import §7!Q§.§;_§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §8<§.§ !+§;
   import §8<§.§<!7§;
   import §8<§.§with§;
   import §9!A§.§8r§;
   import §<!b§.§2!c§;
   import §?!'§.§[!S§;
   import §?!d§.§'h§;
   import §[l§.§ A§;
   import §[l§.§+l§;
   import §[l§.§-i§;
   import §[l§.§26§;
   import §[l§.StateCutScene;
   import §[l§.StatePlay;
   import §[l§.§^!G§;
   import §[l§.§`$§;
   import §]q§.§6l§;
   import §^!K§.§ !$§;
   import §`!@§.§#!W§;
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
   
   public class § 4§ extends §?!Q§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §@%§:String = "http://mcd.angrybirds.com/";
      
      public static const §#!<§:int = 760;
      
      public static const § q§:int = 220;
      
      public static const §@+§:int = 570;
      
      public static const §`0§:Boolean = false;
      
      public static const §&!8§:int = 3000;
      
      public static const §#!6§:String = "ABMcDonaldsChina";
      
      public static var §=R§:String = !!§`0§ ? §@%§ : "../";
      
      public static const §5x§:uint = 0;
      
      public static const §9!`§:uint = 0;
      
      public static const §!!l§:uint = 12632256;
      
      private static var §3!!§:String = § A§.§!_§;
      
      private static var §?0§:Boolean = false;
      
      private static var §&!%§:Class = §7!E§;
      
      private static var §@!X§:Class = §"o§;
      
      private static var §4p§:Class = §;C§;
      
      private static var §>!C§:Class = §8o§;
      
      private static var §0N§:Class = §%$§;
      
      private static var §6!1§:Class = §,v§;
      
      public static var §?H§:§;_§ = null;
      
      public static var §%-§:Boolean = true;
      
      public static var §6q§:§ 4§ = null;
      
      public static var §8!M§:Sprite = null;
       
      
      private var §64§:§8r§;
      
      private var §<!E§:§[Z§;
      
      public function § 4§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§#!W§ = null;
         this.§64§ = new §8r§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §?0§ = true;
         }
         this.§<!E§ = new §[Z§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §0y§.enabled = false;
         §?`§.§%p§(§0y§.§^x§);
         §#D§ = §#!<§ + § q§;
         §2!i§ = §@+§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§with§.§ !0§(§&!%§),§with§.§ !0§(§@!X§));
         §'h§.§+j§.init(§0V§.§7h§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§64§,this.§6!F§);
         §&!&§.§+j§.§4!;§(§with§.§ !0§(§6!1§));
         var _loc3_:String = §40§.§&'§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §&!&§.§+j§.§3!,§(_loc3_);
         }
         else
         {
            §&!&§.§+j§.§3!,§("zh");
         }
         §6q§ = this;
         §6l§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §+!Z§.init(this,§#!<§,§@+§);
         §+!Z§.§?!<§ = new §9-§(stage);
         §+!Z§.§8!B§.visible = §`0§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §=R§ = !!§`0§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §;!a§(new §26§(false));
         §;!a§(new § A§(false));
         §;!a§(new StatePlay(false));
         §;!a§(new §^!G§(false));
         §;!a§(new §-i§(false));
         §;!a§(new StateCutScene(false));
         §;!a§(new §+l§(false));
         §<!7§.§5!@§(§ !!§);
         §<!7§.§68§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = §#!W§.getLocal(§#!6§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §@s§(_loc4_);
         § !$§.§1"§("CHANNEL_THEME",1,1);
         § !$§.§1"§("CHANNEL_AMBIENT",1,1);
         §?H§ = new §;_§("");
         §[!5§.§7!h§ = new §9!F§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§3!K§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;s§);
         stage.addEventListener(Event.RESIZE,this.§9`§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§3!F§);
         if(stage.stageWidth != §#!<§ || stage.stageHeight != §@+§)
         {
            this.§9`§(null);
         }
      }
      
      public static function §@s§(param1:Boolean) : void
      {
         var mySO:§#!W§ = null;
         var value:Boolean = param1;
         §%-§ = value;
         § !$§.§'!K§(§%-§);
         try
         {
            mySO = §#!W§.getLocal(§#!6§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<!V§() : Boolean
      {
         return §%-§;
      }
      
      public static function §8!4§() : void
      {
         if(§ !$§.§5!4§("Channel_Theme") == null || !§ !$§.§5!4§("Channel_Theme").§9! §())
         {
            § !$§.§-N§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §!!8§() : void
      {
         § !$§.§-u§("Channel_Theme");
      }
      
      public static function get §#!m§() : String
      {
         return §3!!§;
      }
      
      public static function set §#!m§(param1:String) : void
      {
         §3!!§ = param1;
      }
      
      public static function get §53§() : Boolean
      {
         return §?0§;
      }
      
      override protected function initStateLoad() : §'j§
      {
         return new §`$§(true,§'j§.§!_§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §6!F§(param1:ByteArray) : void
      {
      }
      
      private function §3!K§(param1:Event) : void
      {
         § !+§.§9!>§();
      }
      
      private function §;s§(param1:MouseEvent) : void
      {
         § !+§.§;R§();
      }
      
      private function §9`§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §#!<§;
         var _loc3_:Number = stage.stageHeight / §@+§;
         if(_loc2_ < _loc3_)
         {
            § !!§.scaleX = § !!§.scaleY = _loc2_;
            §+!Z§.§-V§(§ !!§.x,§ !!§.y,stage.stageWidth,stage.stageWidth * (§@+§ / §#!<§));
         }
         else
         {
            § !!§.scaleX = § !!§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§#!<§ / §@+§);
            _loc5_ = stage.stageHeight;
            §+!Z§.§-V§(§ !!§.x,§ !!§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §3!F§(param1:FullScreenEvent) : void
      {
         this.§9`§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'h§.§+j§.§2%§();
         §^d§.§76§(§2!c§.§!"§(this.§64§.getFileAsString("Chapters.json")));
         this.§]!<§();
      }
      
      private function §]!<§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §?`§.§%p§(§0y§.§7p§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§!!L§(§with§.§ !0§(§>!C§),§with§.§ !0§(§4p§));
         §+!Z§.§6j§(_loc2_,§with§.§ !0§(§0N§));
         §+!Z§.§9!i§(this.§64§.§-!c§,§[!S§.§75§(),this.§7x§);
      }
      
      private function §7x§(param1:Event) : void
      {
         §]!D§(§ A§.§!_§);
      }
      
      private function §!!L§(param1:XML, param2:XML) : XML
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
         if(§+!Z§.§8!B§ != null)
         {
            §+!Z§.§8!B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§9!B§().isGenericState())
         {
            if(_loc2_ == §1!b§.STATE_STATUS_COMPLETED)
            {
               §<!7§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §9!B§().mName + " New State = " + §9!B§().mNextState);
               §]!D§(§9!B§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&!8§;
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
      
      public function get §^z§() : §[Z§
      {
         return this.§<!E§;
      }
   }
}
