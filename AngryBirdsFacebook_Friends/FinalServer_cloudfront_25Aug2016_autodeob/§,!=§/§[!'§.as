package §,!=§
{
   import §!!G§.§0§;
   import §"!U§.TabbedShopPopup;
   import §#v§.§#!?§;
   import §%$!§.§+3§;
   import §%$!§.§0"F§;
   import §%$!§.§8!t§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§>$$§;
   import §'U§.§]#[§;
   import §+"%§.§6X§;
   import §,n§.§^$"§;
   import §-"i§.§%!'§;
   import §-"i§.StateTournamentResults;
   import §0#d§.§<#u§;
   import §1!@§.§-#O§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §5"$§.§"#E§;
   import §5"$§.§]!m§;
   import §6"r§.§0"<§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §7g§.§4!q§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §8§.§#$+§;
   import §9$8§.QualifierInterruptedPopUp;
   import §;4§.§2!]§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §<!g§.§&$1§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§0"V§;
   import §?"R§.AvatarCreatorPopup;
   import §?"R§.RedeemCodePopup;
   import §?"R§.§[W§;
   import §?-§.§9n§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §^!,§.§<d§;
   import §^a§.Starling;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §[!'§ extends §7"S§ implements § 1§, §@#@§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      private static const §3$0§:int = 0;
      
      private static const §1!#§:int = 1;
       
      
      private var §#$4§:§+,§ = null;
      
      private var §5"d§:§+,§ = null;
      
      private var §]#O§:§+,§ = null;
      
      private var §##o§:§+,§ = null;
      
      private var §1#l§:§^$"§;
      
      private var §;"8§:§=O§ = null;
      
      private var §1!u§:§=O§ = null;
      
      private var §7!§:Array;
      
      private var §"l§:§5$!§;
      
      private var §]!O§:Vector.<Boolean>;
      
      private const §;$4§:String = "MAIN_MENU_BUTTON_";
      
      private const §3!D§:String = "button";
      
      private const §,#B§:String = "brandedButton";
      
      private var §3!"§:TextField;
      
      private var §<y§:TextField;
      
      private var §@!_§:String = "button";
      
      private var §]A§:§>$$§;
      
      public function §[!'§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§7!§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§]!O§ = new Vector.<Boolean>();
         super(param1,param3,param4,param2);
         §]!m§.§3!]§.addEventListener(§0#3§.§!#R§,this.§2"Q§);
         §]!m§.§3!]§.addEventListener(§0#3§.§,N§,this.§+"W§);
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_MainMenuSelection[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-#A§.§6$2§().§,!V§(§-#A§.§2t§);
         (§>"$§.§<_§ as §8G§).§&#§.§`"n§(!§4!q§.§3!]§.active);
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
         if(Starling.§<#`§)
         {
            Starling.§<#`§.start();
         }
         §>"$§.§3#'§.§5'§(false);
         §>"$§.§3#'§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§7!c§();
         this.§>!A§();
         this.§9>§();
         (§!$§.getItemByName("MovieClip_BackGround") as §0"<§).mClip.gotoAndStop(0);
         this.§=!k§();
         §,"W§.trackPageView(this);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§,#I§,null);
         this.§]!O§[§3$0§] = false;
         this.§]!O§[§1!#§] = false;
         §]!m§.§3!]§.addEventListener(§0#3§.§^"B§,this.§&!Y§);
         §]!m§.§3!]§.addEventListener(§0#3§.§]!I§,this.§4"R§);
         §]!m§.§3!]§.§8#d§();
         if(§4!q§.§3!]§.active)
         {
            §4!q§.§3!]§.addEventListener(§&$1§.§=e§,this.§^6§);
            §4!q§.§3!]§.§8#d§();
         }
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      private function §^6§(param1:§&$1§) : void
      {
         §4!q§.§3!]§.removeEventListener(§&$1§.§=e§,this.§^6§);
         if(§4!q§.§3!]§.§=$#§)
         {
            StateTournamentResults.§0$$§ = StateTournamentResults.§#"8§;
            if(§>"$§.§<_§.§^!X§() == §%!'§.STATE_NAME || §>"$§.§<_§.§^!X§() == §[!'§.STATE_NAME)
            {
               §7P§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      private function §=!k§() : void
      {
         var _loc1_:Boolean = §9n§.§6!C§();
         this.§]A§.visible = _loc1_;
         if(_loc1_)
         {
            this.§1!u§.mClip.Textfield_Sale_Discount_Value.text.text = §9n§.§4@§;
         }
      }
      
      protected function §&!Y§(param1:§0#3§) : void
      {
         this.§]!O§[§3$0§] = true;
         this.injectData();
      }
      
      protected function §4"R§(param1:§0#3§) : void
      {
         this.§]!O§[§1!#§] = true;
         this.injectData();
      }
      
      private function §2"Q§(param1:§0#3§) : void
      {
         this.§9>§();
      }
      
      private function §+"W§(param1:§0#3§) : void
      {
         this.§9>§();
      }
      
      private function §9>§() : void
      {
         this.§5!i§();
         this.§^z§();
      }
      
      private function §;#;§() : String
      {
         return this.§7$!§(this.§7!§);
      }
      
      private function §7$!§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §^f§(param1:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:§2"U§ = null;
         var _loc8_:§!#Q§ = null;
         var _loc9_:§8!t§ = null;
         var _loc10_:String = null;
         var _loc11_:§2"U§ = null;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         for each(_loc1_ in this.§]!O§)
         {
            if(!_loc1_)
            {
               return;
            }
         }
         _loc3_ = [];
         _loc4_ = §]!m§.§3!]§.§#u§();
         §2!]§.§%B§ = new Vector.<§8!t§>();
         _loc5_ = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc7_ = §7"m§.§;#F§(_loc6_.uid))
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
            _loc8_ = AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
            if(_loc6_.uid == _loc8_.userID)
            {
               _loc2_ = _loc6_;
            }
            if(_loc6_.c)
            {
               _loc5_ = _loc6_.c;
            }
            else
            {
               _loc6_.c = _loc5_;
            }
            if((_loc9_ = §8!t§.§>!§(_loc6_)).§[!Y§)
            {
               if(§2!]§.§&F§.indexOf(_loc9_.userId) == -1)
               {
                  §2!]§.§%B§.push(_loc9_);
               }
            }
            else
            {
               _loc3_.push(_loc9_);
            }
         }
         if(_loc2_ == null)
         {
            _loc10_ = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
            _loc12_ = !!(_loc11_ = §7"m§.§;#F§(_loc10_)) ? _loc11_.name : "You";
            _loc2_ = {
               "r":_loc4_.length + 1,
               "u":_loc10_,
               "n":_loc12_
            };
            _loc13_ = 0;
            _loc14_ = 0;
            while(_loc14_ < §]!m§.§3!]§.levelIDs.length)
            {
               _loc13_ += _loc8_.§3!5§(§]!m§.§3!]§.levelIDs[_loc14_]);
               _loc14_++;
            }
            _loc2_.p = _loc13_;
            _loc3_.push(§8!t§.§>!§(_loc2_));
         }
         if(§0"F§.§7#"§(§0"F§.§0i§))
         {
            _loc14_ = 0;
            while(_loc14_ < _loc3_.length)
            {
               _loc3_[_loc14_].rank = _loc14_ + 1;
               _loc14_++;
            }
         }
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§@$#§,_loc3_);
         QualifierInterruptedPopUp.§=!`§(_loc3_);
         this.§^z§();
      }
      
      private function §5!i§() : void
      {
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:String = null;
         var _loc8_:MovieClip = null;
         var _loc9_:§"#E§ = null;
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§!$§)
         {
            _loc1_ = §!$§.getItemByName("Button_Tournament").mClip.Button_Graphic;
            §-#O§.each(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§,#B§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§3!D§);
            _loc3_.visible = true;
            this.§@!_§ = this.§3!D§;
         }
         this.§3!"§ = null;
         if(§]!m§.§3!]§.§,"K§ && §!$§)
         {
            §-#O§.each((§!$§.getItemByName("MovieClip_BackGround") as §0"<§).mClip,§]!m§.§3!]§.§,"K§.§5Y§);
            _loc5_ = §]!m§.§3!]§.§,"K§.§+G§;
            _loc5_ = this.§;$4§ + _loc5_;
            if(_loc6_ = §@`§.§4!i§(_loc5_,false,false))
            {
               _loc3_.visible = false;
               (_loc8_ = new _loc6_()).name = this.§,#B§;
               _loc1_.addChild(_loc8_);
               this.§@!_§ = this.§,#B§;
            }
            this.§0"#§(§]!m§.§3!]§.§,"K§);
            if(_loc7_ = §]!m§.§3!]§.§@P§)
            {
               if((_loc9_ = §]!m§.§3!]§.§&!i§(_loc7_)) && _loc9_.§3#$§)
               {
                  if(_loc9_.§5Y§)
                  {
                     (§!$§.getItemByName("MovieClip_BackGround") as §0"<§).mClip.gotoAndStop(_loc9_.§5Y§);
                  }
                  this.§0"#§(_loc9_,true);
               }
            }
         }
      }
      
      private function §0"#§(param1:§"#E§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§>$$§ = null;
         if(param1.§<§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§<§.length)
            {
               _loc4_ = param1.§<§[_loc3_];
               if(!(_loc5_ = §!$§.getItemByName(_loc4_)))
               {
                  throw new Error("Tournament teaser graphic id was not found!");
               }
               continue;
               _loc5_.setVisibility(true);
               if(!param2)
               {
                  _loc5_.setEnabled(true);
               }
               _loc3_++;
            }
         }
      }
      
      private function §>!A§() : void
      {
         this.§;"8§ = §!$§.getItemByName("Button_Tournament") as §=O§;
         this.§1!u§ = §!$§.getItemByName("Sale_Button") as §=O§;
         this.§1!u§.mClip.Textfield_Sale_Discount_Value.text.text = "";
         this.§1!u§.mClip.Sale_Countdown.text.text = "";
         this.§]A§ = §!$§.getItemByName("Container_Sale");
         var _loc1_:int = §8G§.§6!r§.getTotalStars();
         var _loc2_:int = §8G§.§6!r§.§9#D§();
         (§!$§.getItemByName("Textfield_CollectedStars_Total") as §]$!§).setText(_loc1_.toString());
         (§!$§.getItemByName("Textfield_ME_Score_Total") as §]$!§).setText(_loc2_.toString());
         (§!$§.getItemByName("Button_EarnCoins") as §=O§).visible = dataModel.§9"k§;
      }
      
      private function §7!c§() : void
      {
         var _loc1_:§>$$§ = §!$§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§>$$§ = §!$§.getItemByName("AvatarSilhouette");
         if(this.§1#l§ == null)
         {
            this.§1#l§ = new §^$"§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).avatarString,_loc2_.mClip,false,"240");
            this.§1#l§.scaleX = 1;
            this.§1#l§.scaleY = 1;
            this.§1#l§.x = -80;
            this.§1#l§.y = -160;
            _loc1_.mClip.addChild(this.§1#l§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§1#l§);
            this.§1#l§.§["v§ = _loc2_.mClip;
            if(this.§1#l§.§+!z§)
            {
               this.§1#l§.§["v§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§9#T§);
      }
      
      protected function §9#T§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §^z§() : void
      {
         if(!§!$§)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(§!$§.getItemByName("Button_Tournament").mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§@!_§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§<y§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §]!m§.§3!]§.§0"3§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §0"V§.§["$§(_loc3_);
         if(_loc3_ == §]!m§.§#!W§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§<y§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§3!"§ == null)
         {
            _loc4_ = MovieClip(§!$§.getItemByName("Button_Tournament").mClip.getChildByName("Button_Graphic"));
            _loc5_ = DisplayObjectContainer((_loc4_.getChildByName(this.§@!_§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
            this.§3!"§ = TextField(_loc5_.getChildByName("text"));
         }
         var _loc2_:Array = §]!m§.§3!]§.§=>§();
         this.§3!"§.text = _loc2_[0];
         _loc2_ = null;
         var _loc3_:Boolean = §9n§.§6!C§();
         this.§]A§.visible = _loc3_;
         if(_loc3_)
         {
            this.§1!u§.mClip.Sale_Countdown.text.text = §9n§.§-#u§();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:AvatarCreatorPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               _loc4_ = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "PLAYONMOBILE":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§&!C§();
               break;
            case "showCredits":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§"$6§.STATE_NAME);
               break;
            case "SALE":
               if(§9n§.§""i§ != null)
               {
                  §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§[W§.NORMAL,§<d§.DEFAULT));
               }
               break;
            case "TOURNAMENT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(4);
               §7P§(§%!'§.STATE_NAME);
               break;
            case "LEVELS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§]4§.STATE_NAME);
               break;
            case "TOONS":
               this.§'y§();
               break;
            case "LEVELSOVER":
               if(this.§#$4§ != null)
               {
                  this.§#$4§.stop();
               }
               this.§#$4§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§#$4§.play();
               break;
            case "LEVELSOUT":
               if(this.§#$4§ != null)
               {
                  this.§#$4§.stop();
               }
               this.§#$4§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§#$4§.play();
               break;
            case "TOONSOVER":
               if(this.§5"d§ != null)
               {
                  this.§5"d§.stop();
               }
               this.§5"d§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§5"d§.play();
               break;
            case "TOONSOUT":
               if(this.§5"d§ != null)
               {
                  this.§5"d§.stop();
               }
               this.§5"d§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§5"d§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§]#O§ != null)
               {
                  this.§]#O§.stop();
               }
               this.§]#O§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]#O§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§]#O§ != null)
               {
                  this.§]#O§.stop();
               }
               this.§]#O§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§]#O§.play();
               break;
            case "EARNCOINS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.§3U§("earnCredits");
               break;
            case "REDEEMCODE":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§5!R§();
         }
      }
      
      private function §5!R§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§[W§.NORMAL,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §'y§() : void
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
      
      private function §&!C§() : void
      {
         var url:URLRequest = new URLRequest("http://www.rovio.com/en/our-work/games/view/46/angry-birds-friends/");
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§^#6§;
      }
      
      public function §7">§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §]!m§.§3!]§.removeEventListener(§0#3§.§^"B§,this.§&!Y§);
         §]!m§.§3!]§.removeEventListener(§0#3§.§]!I§,this.§4"R§);
         super.deActivate();
         this.§<!Q§();
         §!$§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §!$§.getItemByName("Container_Levels").mClip.scaleY = 1;
         this.§]A§.mClip.scaleX = 1;
         this.§]A§.mClip.scaleY = 1;
         §!$§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §!$§.getItemByName("Container_Tournament").mClip.scaleY = 1;
      }
      
      private function §<!Q§() : void
      {
         if(this.§#$4§ != null)
         {
            this.§#$4§.stop();
            this.§#$4§ = null;
         }
         if(this.§5"d§ != null)
         {
            this.§5"d§.stop();
            this.§5"d§ = null;
         }
         if(this.§##o§ != null)
         {
            this.§##o§.stop();
            this.§##o§ = null;
         }
         if(this.§]#O§ != null)
         {
            this.§]#O§.stop();
            this.§]#O§ = null;
         }
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
   }
}
