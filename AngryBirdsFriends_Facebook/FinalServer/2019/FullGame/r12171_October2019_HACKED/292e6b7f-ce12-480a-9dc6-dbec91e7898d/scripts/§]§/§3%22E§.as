package §]§
{
   import § "L§.§23§;
   import § "L§.§7`§;
   import § $0§.§5R§;
   import §!!L§.§ !8§;
   import §!!L§.§8"^§;
   import §!!L§.StateTournamentResults;
   import §!L§.§`#u§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §"#k§.Starling;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§'Z§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §'n§.§+"g§;
   import §+_§.QualifierInterruptedPopUp;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §,#,§.§2§;
   import §,#,§.§=#o§;
   import §,#,§.§@§;
   import §1#`§.§&#m§;
   import §2!Y§.§4!h§;
   import §2G§.§`!K§;
   import §3"V§.§ b§;
   import §4S§.§-$C§;
   import §7"&§.§1k§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §>!f§.§>#-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.AvatarCreatorPopup;
   import §]#'§.§4"s§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`"t§.§4$C§;
   import §`,§.§'#t§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §3"E§ extends §1$?§ implements §2"M§, §1k§, §+#?§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const §3$0§:Number = 1.6;
      
      public static const §3$>§:Number = 1.6;
       
      
      private var §]"H§:§@$-§ = null;
      
      private var §]#[§:§@$-§ = null;
      
      private var §1"o§:§@$-§ = null;
      
      private var §+#$§:§@$-§ = null;
      
      private var §8#`§:§`!K§;
      
      private var §?#y§:Array;
      
      private var §`8§:§-$C§;
      
      private const §8!Q§:String = "MAIN_MENU_BUTTON_";
      
      private const §2!I§:String = "MovieClip_Logo_";
      
      private const §'$6§:String = "button";
      
      private const §5$+§:String = "brandedButton";
      
      private var §'`§:TextField;
      
      private var §1!;§:TextField;
      
      private var §&$>§:String = "button";
      
      private var §=!H§:§^"C§;
      
      private var §&$-§:§^"C§;
      
      private var §@"C§:TextField;
      
      private var §"#W§:Wallet;
      
      public function §3"E§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§?#y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_MainMenuSelection[0]);
         this.§=!H§ = §;!w§.getItemByName("Button_Tournament");
         this.§&$-§ = §;!w§.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§<!X§(true);
         §3";§.§#"'§().§@"l§(§3";§.§0J§);
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
         if(Starling.§4$#§)
         {
            Starling.§4$#§.start();
         }
         §]$?§.§2#§.setVisible(false);
         §]$?§.§2#§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§#!U§();
         this.§2#[§();
         this.§super§();
         (§;!w§.getItemByName("MovieClip_BackGround") as §23§).mClip.gotoAndStop(0);
         §<"G§.trackPageView(this);
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§#!3§,null);
         §7!$§.§+!,§.addEventListener(§&#m§.§&!I§,this.§!#%§);
         §7!$§.§+!,§.§08§();
         AngryBirdsBase.singleton.playThemeMusic();
         § !8§.§`"[§();
         §7!$§.§0#§(false);
      }
      
      private function §!#%§(param1:§&#m§) : void
      {
         §7!$§.§+!,§.removeEventListener(§&#m§.§&!I§,this.§!#%§);
         if(§7!$§.§+!,§.§!$#§())
         {
            this.§super§();
            this.injectData();
         }
         else
         {
            §7!$§.§+!,§.addEventListener(§&#m§.§'"X§,this.§]"e§);
            §7!$§.§+!,§.§2!P§();
         }
      }
      
      private function §]"e§(param1:§&#m§) : void
      {
         this.§super§();
         if(§4"s§.§+!,§.active)
         {
            §4"s§.§+!,§.addEventListener(§+"g§.§7#i§,this.§[!r§);
            §4"s§.§+!,§.§08§(§7!$§.§+!,§.§`!X§());
         }
         this.injectData();
      }
      
      private function §[!r§(param1:§+"g§) : void
      {
         §4"s§.§+!,§.removeEventListener(§+"g§.§7#i§,this.§[!r§);
         if(!§7!$§.§+!,§.§!$#§() && § !8§.§`#B§() > 0)
         {
            if(§4"s§.§+!,§.§]$ §)
            {
               StateTournamentResults.§+G§ = StateTournamentResults.§9`§;
               if(§]$?§.§;u§.§%#7§() == § !8§.STATE_NAME || §]$?§.§;u§.§%#7§() == §3"E§.STATE_NAME)
               {
                  StateTournamentResults.§^z§ = § !8§.§`#B§();
                  § !8§.§9F§(0);
                  §3#§(StateTournamentResults.STATE_NAME);
               }
            }
         }
      }
      
      private function §super§() : void
      {
         this.§4!n§();
         this.§0#2§();
         this.§""G§();
      }
      
      private function §3! §() : String
      {
         return this.§`"L§(this.§?#y§);
      }
      
      private function §`"L§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §]"S§(param1:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var _loc1_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§"5§ = null;
         var _loc8_:§2#9§ = null;
         var _loc9_:String = null;
         var _loc10_:§"5§ = null;
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         this.§<!X§(false);
         var _loc2_:Array = [];
         var _loc3_:Array = §7!$§.§+!,§.§<#K§();
         §4!h§.§3#^§ = new Vector.<§2#9§>();
         var _loc4_:int = 0;
         var _loc5_:§`#u§ = AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
         for each(_loc6_ in _loc3_)
         {
            if(_loc7_ = §8#g§.§^!O§(_loc6_.uid))
            {
               if(_loc7_.name)
               {
                  _loc6_.n = _loc7_.name;
               }
            }
            if(_loc6_.n == null)
            {
               _loc6_.n = "";
            }
            if(_loc6_.uid == _loc5_.userID)
            {
               _loc1_ = _loc6_;
            }
            if(_loc6_.c)
            {
               _loc4_ = _loc6_.c;
            }
            else
            {
               _loc6_.c = _loc4_;
            }
            if((_loc8_ = §2#9§.§"!U§(_loc6_)).§#!§)
            {
               if(§4!h§.§6M§.indexOf(_loc8_.userId) == -1)
               {
                  §4!h§.§3#^§.push(_loc8_);
               }
            }
            else
            {
               _loc2_.push(_loc8_);
            }
         }
         if(_loc1_ == null)
         {
            _loc9_ = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
            _loc11_ = !!(_loc10_ = §8#g§.§^!O§(_loc9_)) ? _loc10_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc12_ = 0;
            _loc13_ = 0;
            while(_loc13_ < §7!$§.§+!,§.levelIDs.length)
            {
               _loc12_ += _loc5_.§1$C§(§7!$§.§+!,§.levelIDs[_loc13_]);
               _loc13_++;
            }
            _loc1_.p = _loc12_;
            _loc2_.push(§2#9§.§"!U§(_loc1_));
         }
         if(§@#5§.§=D§(§@#5§.§;##§))
         {
            _loc13_ = 0;
            while(_loc13_ < _loc2_.length)
            {
               _loc2_[_loc13_].rank = _loc13_ + 1;
               _loc13_++;
            }
         }
         if(§7!$§.§+!,§.§!$#§())
         {
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§,"P§);
         }
         else
         {
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§>C§,_loc2_);
         }
         QualifierInterruptedPopUp.§2!,§(_loc2_);
         this.§""G§();
      }
      
      private function §0#2§() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§=!H§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§;!w§)
         {
            _loc1_ = this.§=!H§.mClip.Button_Graphic;
            §4$C§.§=M§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§5$+§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§'$6§);
            _loc3_.visible = true;
            this.§&$>§ = this.§'$6§;
         }
         this.§'`§ = null;
         this.§@"C§ = null;
         if(§7!$§.§+!,§.§@!v§ && §;!w§)
         {
            if(_loc4_ = §7!$§.§+!,§.§@!v§.brandedTournamentAssetId)
            {
               _loc4_ = _loc4_.toUpperCase();
               _loc5_ = this.§8!Q§ + _loc4_;
               if(_loc6_ = §[a§.§8#k§(_loc5_,false,false))
               {
                  _loc3_.visible = false;
                  (_loc8_ = new _loc6_()).name = this.§5$+§;
                  _loc1_.addChild(_loc8_);
                  this.§&$>§ = this.§5$+§;
               }
               _loc7_ = §;!w§.getItemByName("MovieClip_Logo").mClip;
               _loc5_ = this.§2!I§ + _loc4_;
               if(_loc6_ = §[a§.§8#k§(_loc5_,false,false))
               {
                  _loc7_.removeChildren();
                  _loc9_ = new _loc6_();
                  _loc7_.addChild(_loc9_);
               }
            }
         }
      }
      
      private function §4!n§() : void
      {
         this.§=!H§.visible = !§7!$§.§+!,§.§!$#§();
         this.§&$-§.visible = §7!$§.§+!,§.§!$#§();
      }
      
      private function §]"R§(param1:§'#t§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§^"C§ = null;
         if(param1.§3!K§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§3!K§.length)
            {
               _loc4_ = param1.§3!K§[_loc3_];
               if(!(_loc5_ = §;!w§.getItemByName(_loc4_)))
               {
                  throw new Error("Tournament teaser graphic id was not found!");
               }
               _loc5_.setVisibility(true);
               if(!param2)
               {
                  _loc5_.setEnabled(true);
               }
               _loc3_++;
            }
         }
      }
      
      private function §2#[§() : void
      {
         if(§>#-§.§5$<§(§>#-§.§4$0§) == §>#-§.§9"§)
         {
            §;!w§.getItemByName("Container_Tournament").mClip.x = 440;
            §;!w§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = §@z§.§<"I§.getTotalStars();
         var _loc2_:int = §@z§.§<"I§.§ "B§();
         (§;!w§.getItemByName("Textfield_CollectedStars_Total") as §7`§).setText(_loc1_.toString());
         (§;!w§.getItemByName("Textfield_ME_Score_Total") as §7`§).setText(_loc2_.toString());
      }
      
      private function §#!U§() : void
      {
         var _loc1_:§^"C§ = §;!w§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§^"C§ = §;!w§.getItemByName("AvatarSilhouette");
         if(this.§8#`§ == null)
         {
            this.§8#`§ = new §`!K§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).avatarString,_loc2_.mClip,false,"240");
            this.§8#`§.scaleX = 1;
            this.§8#`§.scaleY = 1;
            this.§8#`§.x = -80;
            this.§8#`§.y = -160;
            _loc1_.mClip.addChild(this.§8#`§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§8#`§);
            this.§8#`§.§2!y§ = _loc2_.mClip;
            if(this.§8#`§.§6$D§)
            {
               this.§8#`§.§2!y§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>" §);
      }
      
      protected function §>" §(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§@#D§.NORMAL,§5R§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §""G§() : void
      {
         if(!§;!w§)
         {
            return;
         }
         if(!this.§=!H§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(this.§=!H§.mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§&$>§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§1!;§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §7!$§.§+!,§.§?"t§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §'Z§.§`"S§(_loc3_);
         if(_loc3_ == §7!$§.§1h§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§1!;§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§=!H§.visible)
         {
            if(this.§'`§ == null)
            {
               _loc2_ = MovieClip(this.§=!H§.mClip.getChildByName("Button_Graphic"));
               _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§&$>§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.§'`§ = TextField(_loc3_.getChildByName("text"));
            }
            this.§'`§.text = §7!$§.§+!,§.§8#h§()[0] + " left!";
         }
         else if(this.§&$-§.visible)
         {
            if(this.§@"C§ == null)
            {
               _loc2_ = MovieClip(this.§&$-§.mClip.getChildByName("OverlappingTournamentsButtonGraphic"));
               this.§@"C§ = TextField(_loc2_.getChildByName("Text_OverlappingTournamentsLeft"));
            }
            this.§@"C§.text = §7!$§.§+!,§.§?#"§()[0];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§`$4§ = param3;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(§@#D§.NORMAL,§5R§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               break;
            case "showCredits":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§[#t§.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(4);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§%"#§.§3M§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     §3#§(§ !8§.STATE_NAME);
                  }
                  else
                  {
                     §3#§(§8"^§.STATE_NAME);
                  }
               };
               §%"#§.§;!Y§(§%"#§.§3M§,fn);
               break;
            case "LEVELS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§%"#§.§3M§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  §3#§(§9#Q§.STATE_NAME);
               };
               §%"#§.§;!Y§(§%"#§.§3M§,fn);
               break;
            case "TOONS":
               this.§0G§();
               break;
            case "LEVELSOVER":
               if(this.§]"H§ != null)
               {
                  this.§]"H§.stop();
               }
               this.§]"H§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]"H§.play();
               break;
            case "LEVELSOUT":
               if(this.§]"H§ != null)
               {
                  this.§]"H§.stop();
               }
               this.§]"H§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§]"H§.play();
               break;
            case "TOONSOVER":
               if(this.§]#[§ != null)
               {
                  this.§]#[§.stop();
               }
               this.§]#[§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]#[§.play();
               break;
            case "TOONSOUT":
               if(this.§]#[§ != null)
               {
                  this.§]#[§.stop();
               }
               this.§]#[§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§]#[§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§1"o§ != null)
               {
                  this.§1"o§.stop();
               }
               this.§1"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§1"o§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§1"o§ != null)
               {
                  this.§1"o§.stop();
               }
               this.§1"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§1"o§.play();
               break;
            case "EARNCOINS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.exitFullScreen();
               §7!b§.§7@§("earnCredits");
         }
      }
      
      private function §0G§() : void
      {
         var url:URLRequest = new URLRequest("http://www.angrybirds.com/toons/");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§9^§;
      }
      
      public function §4!G§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §7!$§.§+!,§.removeEventListener(§&#m§.§'"X§,this.§]"e§);
         super.deActivate();
         this.§&#y§();
         §;!w§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §;!w§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§7=§(this.§"#W§);
      }
      
      private function §&#y§() : void
      {
         if(this.§]"H§ != null)
         {
            this.§]"H§.stop();
            this.§]"H§ = null;
         }
         if(this.§]#[§ != null)
         {
            this.§]#[§.stop();
            this.§]#[§ = null;
         }
         if(this.§+#$§ != null)
         {
            this.§+#$§.stop();
            this.§+#$§ = null;
         }
         if(this.§1"o§ != null)
         {
            this.§1"o§.stop();
            this.§1"o§ = null;
         }
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            _loc1_ = §3"E§.§3$0§;
         }
         if(this.§"#W§)
         {
            this.§"#W§.§`#8§.scaleX = _loc1_;
            this.§"#W§.§`#8§.scaleY = _loc1_;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
      
      private function §<!X§(param1:Boolean) : void
      {
         if(param1)
         {
            (§]$?§.§;u§ as §@z§).§-"o§(§2+§.§3#u§);
            §;!w§.getItemByName("loadingBG").setVisibility(true);
            this.§7=§(this.§"#W§);
         }
         else
         {
            (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
            §;!w§.getItemByName("loadingBG").setVisibility(false);
            this.§6"h§(new Wallet(this,true,true,false,true));
         }
      }
   }
}
