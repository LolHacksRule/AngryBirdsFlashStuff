package
{
   import § !"§.§%!6§;
   import §"W§.§7`§;
   import §1!K§.§4§;
   import §1!K§.§=t§;
   import §1!K§.§>!<§;
   import §1!a§.§<!Y§;
   import §2!Q§.§'[§;
   import §2H§.§>!^§;
   import §2H§.§>7§;
   import §3-§.§1L§;
   import §5N§.§7,§;
   import §6Q§.§'!M§;
   import §7!5§.§=!2§;
   import §8!I§.§=]§;
   import §97§.§&x§;
   import §97§.§,z§;
   import §97§.§1j§;
   import §97§.§3A§;
   import §97§.§88§;
   import §97§.StateCutScene;
   import §97§.StatePlay;
   import §97§.§[U§;
   import §97§.§]!X§;
   import §;c§.§[!T§;
   import §=!S§.§!!Z§;
   import §=!S§.§+!G§;
   import §=+§.§#O§;
   import §=X§.§7!4§;
   import §?!"§.§?!N§;
   import §?!"§.§^!`§;
   import §[!C§.HighscoreSidebar;
   import §]c§.§6S§;
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
   
   public class §,-§ extends §%!6§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §9f§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const § for§:int = 760;
      
      public static const §1!,§:int = 220;
      
      public static const §[S§:int = 570;
      
      public static const §&P§:Boolean = false;
      
      public static const §]V§:int = 3000;
      
      public static const §?H§:String = "ABHeikkiKovalainen";
      
      public static var § 6§:String = !!§&P§ ? §9f§ : "../";
      
      public static const §[!@§:uint = 16777215;
      
      public static const §[p§:uint = 0;
      
      public static const §%Q§:uint = 16777215;
      
      private static var §,!0§:String = §88§.§4l§;
      
      private static var §0!Q§:Boolean = false;
      
      private static var §=!`§:Class = §,F§;
      
      private static var §6!P§:Class = §-$§;
      
      private static var §^K§:Class = §+c§;
      
      private static var §%[§:Class = §9S§;
      
      private static var §#,§:Class = §4!9§;
      
      public static var §?+§:§?!N§ = null;
      
      public static var § !=§:Boolean = true;
      
      public static var §4-§:§,-§ = null;
      
      public static var §?5§:Sprite = null;
       
      
      private var §<-§:§#O§;
      
      private var §%K§:§<!Y§;
      
      public function §,-§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§<-§ = new §#O§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §0!Q§ = true;
         }
         this.§%K§ = new §<!Y§();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §+!G§.enabled = true;
         §!!Z§.§1!?§(§+!G§.§,!C§);
         §if § = § for§ + §1!,§;
         §6!D§ = §[S§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§=t§.§1X§(§=!`§),§=t§.§1X§(§6!P§));
         §=!2§.§;!F§.init(§[!T§.§!_§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§<-§,this.§;F§);
         §4-§ = this;
         §6S§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §1L§.init(this,§ for§,§[S§);
         §1L§.§"f§ = new §7,§(stage);
         §1L§.§-G§.visible = §&P§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            § 6§ = !!§&P§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §5!,§(new §1j§(false));
         §5!,§(new §]!X§(false));
         §5!,§(new §88§(false));
         §5!,§(new StatePlay(false));
         §5!,§(new §[U§(false));
         §5!,§(new §,z§(false));
         §5!,§(new StateCutScene(false));
         §5!,§(new §3A§(false));
         §>!<§.§0e§(§11§);
         §>!<§.§?e§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§?H§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §=M§(_loc3_);
         §'[§.§`V§("CHANNEL_THEME",1,1);
         §'[§.§`V§("CHANNEL_AMBIENT",1,1);
         §?+§ = new §?!N§("");
         §^!`§.§[K§ = new §7`§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§,f§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§@R§);
         stage.addEventListener(Event.RESIZE,this.§7>§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§ ?§);
         if(stage.stageWidth != § for§ || stage.stageHeight != §[S§)
         {
            this.§7>§(null);
         }
      }
      
      public static function §=M§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         § !=§ = value;
         §'[§.§7!H§(§ !=§);
         try
         {
            mySO = SharedObject.getLocal(§?H§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §7G§() : Boolean
      {
         return § !=§;
      }
      
      public static function §"!,§() : void
      {
         if(§'[§.§[!Z§("Channel_Theme") == null || !§'[§.§[!Z§("Channel_Theme").§;!V§())
         {
            §'[§.§"]§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §;R§() : void
      {
         §'[§.§,!?§("Channel_Theme");
      }
      
      public static function get §,O§() : String
      {
         return §,!0§;
      }
      
      public static function set §,O§(param1:String) : void
      {
         §,!0§ = param1;
      }
      
      public static function get §6!<§() : Boolean
      {
         return §0!Q§;
      }
      
      override protected function initStateLoad() : §>7§
      {
         return new §&x§(true,§>7§.§4l§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §;F§(param1:ByteArray) : void
      {
      }
      
      private function §,f§(param1:Event) : void
      {
         §4§.§8!^§();
      }
      
      private function §@R§(param1:MouseEvent) : void
      {
         §4§.§&n§();
      }
      
      private function §7>§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / § for§;
         var _loc3_:Number = stage.stageHeight / §[S§;
         if(_loc2_ < _loc3_)
         {
            §11§.scaleX = §11§.scaleY = _loc2_;
            §1L§.§4!H§(§11§.x,§11§.y,stage.stageWidth,stage.stageWidth * (§[S§ / § for§));
         }
         else
         {
            §11§.scaleX = §11§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§ for§ / §[S§);
            _loc5_ = stage.stageHeight;
            §1L§.§4!H§(§11§.x,§11§.y,_loc4_,_loc5_);
         }
      }
      
      protected function § ?§(param1:FullScreenEvent) : void
      {
         this.§7>§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §=!2§.§;!F§.§4P§();
         §7!4§.§8k§(§'!M§.§+f§(this.§<-§.getFileAsString("Chapters.json")));
         this.§8=§();
      }
      
      private function §8=§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!!Z§.§1!?§(§+!G§.§8!+§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§ o§(§=t§.§1X§(§%[§),§=t§.§1X§(§^K§));
         §1L§.§%S§(_loc2_,§=t§.§1X§(§#,§));
         §1L§.§!!,§(this.§<-§.§9F§,§=]§.§5E§(),this.§-[§);
      }
      
      private function §-[§(param1:Event) : void
      {
         §]!X§.§]!?§ = §1j§.§4l§;
         §7!4§.§^!>§(§7!4§.§!!"§(HighscoreSidebar.§]"§));
         §8!P§(§]!X§.§4l§);
      }
      
      private function § o§(param1:XML, param2:XML) : XML
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
         if(§1L§.§-G§ != null)
         {
            §1L§.§-G§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§?!0§().isGenericState())
         {
            if(_loc2_ == §>!^§.STATE_STATUS_COMPLETED)
            {
               §>!<§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §?!0§().mName + " New State = " + §?!0§().mNextState);
               §8!P§(§?!0§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §]V§;
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
      
      public function get §[!U§() : §<!Y§
      {
         return this.§%K§;
      }
   }
}
