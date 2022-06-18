package §94§
{
   import § "$§.§'"R§;
   import § $%§.§4"v§;
   import § o§.§%"!§;
   import § o§.AvatarCreatorPopup;
   import § o§.RedeemCodePopup;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§%"E§;
   import §&"J§.§9N§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+#t§.§+-§;
   import §1#W§.§!#&§;
   import §2F§.§>§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§ "R§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.StateTournamentResults;
   import §8"X§.§^!E§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §9"1§.§+!x§;
   import §9+§.Starling;
   import §<"1§.§'"S§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §[0§.§;$-§;
   import §[G§.§4!0§;
   import §]!W§.QualifierInterruptedPopUp;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §];§.§-!t§;
   import §];§.§;!r§;
   import §^#]§.§4H§;
   import §`!R§.§&"8§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §>!&§ extends §`"z§ implements §7#M§, §]"w§, §8[§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const §<!3§:Number = 1.6;
      
      public static const §6M§:Number = 1.6;
      
      private static const §=N§:int = 0;
      
      private static const §3R§:int = 1;
       
      
      private var §^" §:§-#C§ = null;
      
      private var §]"c§:§-#C§ = null;
      
      private var §8"F§:§-#C§ = null;
      
      private var §#n§:§-#C§ = null;
      
      private var §,!,§:§+-§;
      
      private var §+$9§:Array;
      
      private var § $§:§4"v§;
      
      private var §+#s§:Vector.<Boolean>;
      
      private const §4!3§:String = "MAIN_MENU_BUTTON_";
      
      private const §^#k§:String = "button";
      
      private const §^Y§:String = "brandedButton";
      
      private var §&!7§:TextField;
      
      private var §!"y§:TextField;
      
      private var §8"?§:String = "button";
      
      private var §3!B§:Wallet;
      
      public function §>!&§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§+$9§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§+#s§ = new Vector.<Boolean>();
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_MainMenuSelection[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?!=§.§3!q§().§'"7§(§?!=§.§9#t§);
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
         if(Starling.§?$#§)
         {
            Starling.§?$#§.start();
         }
         §!#A§.§#F§.§8"d§(false);
         §!#A§.§#F§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§%"6§();
         this.§,!>§();
         this.§>!v§();
         (§?Q§.getItemByName("MovieClip_BackGround") as §]!_§).mClip.gotoAndStop(0);
         §`"5§.trackPageView(this);
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+!q§,null);
         this.§+#s§[§=N§] = false;
         this.§+#s§[§3R§] = false;
         §-!t§.§ "D§.addEventListener(§'"R§.§4&§,this.§^!p§);
         §-!t§.§ "D§.addEventListener(§'"R§.§7#O§,this.§;O§);
         §-!t§.§ "D§.addEventListener(§'"R§.§6#+§,this.§@!!§);
         §-!t§.§ "D§.addEventListener(§'"R§.§'k§,this.§5#7§);
         §-!t§.§ "D§.§@"C§();
         if(§;$-§.§ "D§.active)
         {
            §;$-§.§ "D§.addEventListener(§+!x§.§,!Z§,this.§'!0§);
            §;$-§.§ "D§.§@"C§();
         }
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      private function §'!0§(param1:§+!x§) : void
      {
         §;$-§.§ "D§.removeEventListener(§+!x§.§,!Z§,this.§'!0§);
         if(§;$-§.§ "D§.§&,§)
         {
            StateTournamentResults.§>#K§ = StateTournamentResults.§2!?§;
            if(§!#A§.§>q§.§="!§() == §^!E§.STATE_NAME || §!#A§.§>q§.§="!§() == §>!&§.STATE_NAME)
            {
               §5"p§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      protected function §^!p§(param1:§'"R§) : void
      {
         this.§+#s§[§=N§] = true;
         this.injectData();
      }
      
      protected function §;O§(param1:§'"R§) : void
      {
         this.§+#s§[§3R§] = true;
         this.injectData();
      }
      
      private function §@!!§(param1:§'"R§) : void
      {
         this.§>!v§();
         this.§##Y§(new Wallet(this,true,true,false,true));
      }
      
      private function §5#7§(param1:§'"R§) : void
      {
         this.§>!v§();
      }
      
      private function §>!v§() : void
      {
         this.§%!1§();
         this.§+!B§();
      }
      
      private function §#!4§() : String
      {
         return this.§9!c§(this.§+$9§);
      }
      
      private function §9!c§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §#"t§(param1:Event) : void
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
         var _loc7_:§4!J§ = null;
         var _loc8_:§4"-§ = null;
         var _loc9_:§%"E§ = null;
         var _loc10_:String = null;
         var _loc11_:§4!J§ = null;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         for each(_loc1_ in this.§+#s§)
         {
            if(!_loc1_)
            {
               return;
            }
         }
         _loc3_ = [];
         _loc4_ = §-!t§.§ "D§.§4!X§();
         §4!0§.§7!s§ = new Vector.<§%"E§>();
         _loc5_ = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc7_ = §%!?§.§ $;§(_loc6_.uid))
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
            _loc8_ = AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
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
            if((_loc9_ = §%"E§.§2u§(_loc6_)).§9!r§)
            {
               if(§4!0§.§9! §.indexOf(_loc9_.userId) == -1)
               {
                  §4!0§.§7!s§.push(_loc9_);
               }
            }
            else
            {
               _loc3_.push(_loc9_);
            }
         }
         if(_loc2_ == null)
         {
            _loc10_ = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
            _loc12_ = !!(_loc11_ = §%!?§.§ $;§(_loc10_)) ? _loc11_.name : "You";
            _loc2_ = {
               "r":_loc4_.length + 1,
               "u":_loc10_,
               "n":_loc12_
            };
            _loc13_ = 0;
            _loc14_ = 0;
            while(_loc14_ < §-!t§.§ "D§.levelIDs.length)
            {
               _loc13_ += _loc8_.§ =§(§-!t§.§ "D§.levelIDs[_loc14_]);
               _loc14_++;
            }
            _loc2_.p = _loc13_;
            _loc3_.push(§%"E§.§2u§(_loc2_));
         }
         if(§9N§.§^"?§(§9N§.§>^§))
         {
            _loc14_ = 0;
            while(_loc14_ < _loc3_.length)
            {
               _loc3_[_loc14_].rank = _loc14_ + 1;
               _loc14_++;
            }
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§"#U§,_loc3_);
         QualifierInterruptedPopUp.§'$7§(_loc3_);
         this.§+!B§();
      }
      
      private function §%!1§() : void
      {
         var _loc4_:§;!r§ = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:String = null;
         var _loc8_:MovieClip = null;
         var _loc9_:§;!r§ = null;
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§?Q§)
         {
            _loc1_ = §?Q§.getItemByName("Button_Tournament").mClip.Button_Graphic;
            §4H§.§#!k§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§^Y§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§^#k§);
            _loc3_.visible = true;
            this.§8"?§ = this.§^#k§;
         }
         this.§&!7§ = null;
         if(§-!t§.§ "D§.tournamentRules && §?Q§)
         {
            §4H§.§#!k§((§?Q§.getItemByName("MovieClip_BackGround") as §]!_§).mClip,§-!t§.§ "D§.tournamentRules.§8"q§);
            _loc5_ = (_loc4_ = §-!t§.§ "D§.tournamentRules).§@!l§;
            _loc5_ = this.§4!3§ + _loc5_;
            if(_loc6_ = §+$#§.§["`§(_loc5_,false,false))
            {
               _loc3_.visible = false;
               (_loc8_ = new _loc6_()).name = this.§^Y§;
               _loc1_.addChild(_loc8_);
               this.§8"?§ = this.§^Y§;
            }
            this.§"$ §(§-!t§.§ "D§.tournamentRules);
            if(_loc7_ = §-!t§.§ "D§.§<"q§)
            {
               if((_loc9_ = §-!t§.§ "D§.§+"f§(_loc7_)) && _loc9_.§#L§)
               {
                  if(_loc9_.§8"q§)
                  {
                     (§?Q§.getItemByName("MovieClip_BackGround") as §]!_§).mClip.gotoAndStop(_loc9_.§8"q§);
                  }
                  this.§"$ §(_loc9_,true);
               }
            }
         }
      }
      
      private function §"$ §(param1:§;!r§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§[!K§ = null;
         if(param1.§7#R§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§7#R§.length)
            {
               _loc4_ = param1.§7#R§[_loc3_];
               if(!(_loc5_ = §?Q§.getItemByName(_loc4_)))
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
      
      private function §,!>§() : void
      {
         if(§>#0§.§5f§(§>#0§.§%,§) == §>#0§.§2!]§)
         {
            §?Q§.getItemByName("Container_Tournament").mClip.x = 440;
            §?Q§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = §-#+§.§03§.getTotalStars();
         var _loc2_:int = §-#+§.§03§.§7#k§();
         (§?Q§.getItemByName("Textfield_CollectedStars_Total") as §^!4§).setText(_loc1_.toString());
         (§?Q§.getItemByName("Textfield_ME_Score_Total") as §^!4§).setText(_loc2_.toString());
         (§?Q§.getItemByName("Button_EarnCoins") as §,#w§).visible = dataModel.§5"9§;
      }
      
      private function §%"6§() : void
      {
         var _loc1_:§[!K§ = §?Q§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§[!K§ = §?Q§.getItemByName("AvatarSilhouette");
         if(this.§,!,§ == null)
         {
            this.§,!,§ = new §+-§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).avatarString,_loc2_.mClip,false,"240");
            this.§,!,§.scaleX = 1;
            this.§,!,§.scaleY = 1;
            this.§,!,§.x = -80;
            this.§,!,§.y = -160;
            _loc1_.mClip.addChild(this.§,!,§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§,!,§);
            this.§,!,§.§%$§ = _loc2_.mClip;
            if(this.§,!,§.§0"p§)
            {
               this.§,!,§.§%$§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>!t§);
      }
      
      protected function §>!t§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%"!§.NORMAL,§^#o§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §+!B§() : void
      {
         if(!§?Q§)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(§?Q§.getItemByName("Button_Tournament").mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§8"?§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§!"y§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §-!t§.§ "D§.§&$1§();
         var _loc4_:String = "Your Rank: " + _loc3_ + § "R§.§^#f§(_loc3_);
         if(_loc3_ == §-!t§.§"y§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§!"y§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§&!7§ == null)
         {
            _loc2_ = MovieClip(§?Q§.getItemByName("Button_Tournament").mClip.getChildByName("Button_Graphic"));
            _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§8"?§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
            this.§&!7§ = TextField(_loc3_.getChildByName("text"));
         }
         this.§&!7§.text = §-!t§.§ "D§.§7M§()[0] + " left!";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:AvatarCreatorPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               _loc4_ = new AvatarCreatorPopup(§%"!§.NORMAL,§^#o§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "showCredits":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§@"X§.STATE_NAME);
               break;
            case "TOURNAMENT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(4);
               §5"p§(§^!E§.STATE_NAME);
               break;
            case "LEVELS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§4#M§.STATE_NAME);
               break;
            case "TOONS":
               this.§`";§();
               break;
            case "LEVELSOVER":
               if(this.§^" § != null)
               {
                  this.§^" §.stop();
               }
               this.§^" § = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§^" §.play();
               break;
            case "LEVELSOUT":
               if(this.§^" § != null)
               {
                  this.§^" §.stop();
               }
               this.§^" § = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§^" §.play();
               break;
            case "TOONSOVER":
               if(this.§]"c§ != null)
               {
                  this.§]"c§.stop();
               }
               this.§]"c§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]"c§.play();
               break;
            case "TOONSOUT":
               if(this.§]"c§ != null)
               {
                  this.§]"c§.stop();
               }
               this.§]"c§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§]"c§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§8"F§ != null)
               {
                  this.§8"F§.stop();
               }
               this.§8"F§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§8"F§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§8"F§ != null)
               {
                  this.§8"F§.stop();
               }
               this.§8"F§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§8"F§.play();
               break;
            case "EARNCOINS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.§ "§("earnCredits");
               break;
            case "REDEEMCODE":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§!#N§();
         }
      }
      
      private function §!#N§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§%"!§.NORMAL,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §`";§() : void
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
      
      public function §<"b§() : String
      {
         return §`"5§.§9k§;
      }
      
      public function §>"-§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §-!t§.§ "D§.removeEventListener(§'"R§.§4&§,this.§^!p§);
         §-!t§.§ "D§.removeEventListener(§'"R§.§7#O§,this.§;O§);
         §-!t§.§ "D§.removeEventListener(§'"R§.§6#+§,this.§@!!§);
         §-!t§.§ "D§.removeEventListener(§'"R§.§'k§,this.§5#7§);
         super.deActivate();
         this.§!!m§();
         §?Q§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §?Q§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§"#H§(this.§3!B§);
      }
      
      private function §!!m§() : void
      {
         if(this.§^" § != null)
         {
            this.§^" §.stop();
            this.§^" § = null;
         }
         if(this.§]"c§ != null)
         {
            this.§]"c§.stop();
            this.§]"c§ = null;
         }
         if(this.§#n§ != null)
         {
            this.§#n§.stop();
            this.§#n§ = null;
         }
         if(this.§8"F§ != null)
         {
            this.§8"F§.stop();
            this.§8"F§ = null;
         }
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§!#A§.§>q§ as §-#+§).§3#3§())
         {
            _loc1_ = §>!&§.§<!3§;
         }
         if(this.§3!B§)
         {
            this.§3!B§.§[!R§.scaleX = _loc1_;
            this.§3!B§.§[!R§.scaleY = _loc1_;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.movieClip;
      }
   }
}
