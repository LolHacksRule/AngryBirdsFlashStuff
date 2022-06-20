package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.AvatarCreatorPopup;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§-$8§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §&!A§.§7!8§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §+#X§.FeatureRemovalWarningBirdomatic;
   import §+#X§.FeatureRemovalWarningMainMenu;
   import §-"S§.§>#G§;
   import §1!1§.§<#M§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2E§.§%!6§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §3#t§.§51§;
   import §4#$§.§5"L§;
   import §4#$§.§6#!§;
   import §4$A§.§=$5§;
   import §6#Y§.QualifierInterruptedPopUp;
   import §7"1§.§5"f§;
   import §9!6§.§## §;
   import §9x§.§6#h§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §=!&§.§<$!§;
   import §>#Y§.§!#?§;
   import §>#Y§.§#!&§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2"%§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §[#v§.§4e§;
   import §[#v§.§7"Z§;
   import §[#v§.StateTournamentResults;
   import §]!4§.§=#c§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
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
   
   public class §[$2§ extends §';§ implements §'r§, §=$5§, §;"P§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const § #H§:Number = 1.6;
      
      public static const §1!W§:Number = 1.6;
       
      
      private var §<Y§:§@#5§ = null;
      
      private var §?"V§:§@#5§ = null;
      
      private var §@#T§:§@#5§ = null;
      
      private var §!$D§:§@#5§ = null;
      
      private var §##f§:§6#h§;
      
      private var §?#Y§:Array;
      
      private var §@!#§:§5"f§;
      
      private const §5"D§:String = "MAIN_MENU_BUTTON_";
      
      private const §2!f§:String = "MovieClip_Logo_";
      
      private const §6!#§:String = "button";
      
      private const §&z§:String = "brandedButton";
      
      private var §!#M§:TextField;
      
      private var §%$#§:TextField;
      
      private var §8X§:String = "button";
      
      private var §36§:§6!1§;
      
      private var §9"r§:§6!1§;
      
      private var §#$C§:TextField;
      
      private var §1"w§:Wallet;
      
      public function §[$2§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§?#Y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_MainMenuSelection[0]);
         this.§36§ = §@!D§.getItemByName("Button_Tournament");
         this.§9"r§ = §@!D§.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§<#f§(true);
         §]!P§.§1!7§().§4c§(§]!P§.§'"l§);
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
         if(Starling.§%!q§)
         {
            Starling.§%!q§.start();
         }
         §+!p§.§`?§.setVisible(false);
         §+!p§.§`?§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§5""§();
         this.§-"O§();
         this.§[H§();
         (§@!D§.getItemByName("MovieClip_BackGround") as §!"e§).mClip.gotoAndStop(0);
         §'@§.trackPageView(this);
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§5#O§,null);
         §5"L§.§3"1§.addEventListener(§<$!§.§4!<§,this.§!!3§);
         §5"L§.§3"1§.§9"G§();
         AngryBirdsBase.singleton.playThemeMusic();
         §4e§.§;#@§();
         §5"L§.§`6§(false);
         if(param1 == "template")
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningMainMenu(§-!S§.NORMAL,§## §.DEFAULT));
         }
      }
      
      private function §!!3§(param1:§<$!§) : void
      {
         §5"L§.§3"1§.removeEventListener(§<$!§.§4!<§,this.§!!3§);
         if(§5"L§.§3"1§.§2o§())
         {
            this.§[H§();
            this.injectData();
         }
         else
         {
            §5"L§.§3"1§.addEventListener(§<$!§.§<#-§,this.§!#]§);
            §5"L§.§3"1§.§+#A§();
         }
      }
      
      private function §!#]§(param1:§<$!§) : void
      {
         this.§[H§();
         if(§?#,§.§3"1§.active)
         {
            §?#,§.§3"1§.addEventListener(§<#M§.§ "2§,this.§[b§);
            §?#,§.§3"1§.§9"G§(§5"L§.§3"1§.§`#p§());
         }
         this.injectData();
      }
      
      private function §[b§(param1:§<#M§) : void
      {
         §?#,§.§3"1§.removeEventListener(§<#M§.§ "2§,this.§[b§);
         if(!§5"L§.§3"1§.§2o§() && §4e§.§9$%§() > 0)
         {
            if(§?#,§.§3"1§.§7$?§)
            {
               StateTournamentResults.§4!&§ = StateTournamentResults.§9!@§;
               if(§+!p§.§;"-§.§1"Z§() == §4e§.STATE_NAME || §+!p§.§;"-§.§1"Z§() == §[$2§.STATE_NAME)
               {
                  StateTournamentResults.§4"=§ = §4e§.§9$%§();
                  §4e§.§7!v§(0);
                  §%!?§(StateTournamentResults.STATE_NAME);
               }
            }
         }
      }
      
      private function §[H§() : void
      {
         this.§0#=§();
         this.§%!]§();
         this.§%"'§();
      }
      
      private function §=l§() : String
      {
         return this.§>O§(this.§?#Y§);
      }
      
      private function §>O§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §&"W§(param1:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var _loc1_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§9$§ = null;
         var _loc8_:§#!&§ = null;
         var _loc9_:String = null;
         var _loc10_:§9$§ = null;
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         this.§<#f§(false);
         var _loc2_:Array = [];
         var _loc3_:Array = §5"L§.§3"1§.§?5§();
         §51§.§%[§ = new Vector.<§#!&§>();
         var _loc4_:int = 0;
         var _loc5_:§>#G§ = AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
         for each(_loc6_ in _loc3_)
         {
            if(_loc7_ = §-#]§.§0B§(_loc6_.uid))
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
            if((_loc8_ = §#!&§.§5!I§(_loc6_)).§^"%§)
            {
               if(§51§.§8!a§.indexOf(_loc8_.userId) == -1)
               {
                  §51§.§%[§.push(_loc8_);
               }
            }
            else
            {
               _loc2_.push(_loc8_);
            }
         }
         if(_loc1_ == null)
         {
            _loc9_ = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
            _loc11_ = !!(_loc10_ = §-#]§.§0B§(_loc9_)) ? _loc10_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc12_ = 0;
            _loc13_ = 0;
            while(_loc13_ < §5"L§.§3"1§.levelIDs.length)
            {
               _loc12_ += _loc5_.§5!>§(§5"L§.§3"1§.levelIDs[_loc13_]);
               _loc13_++;
            }
            _loc1_.p = _loc12_;
            _loc2_.push(§#!&§.§5!I§(_loc1_));
         }
         if(§!#?§.§]!2§(§!#?§.§1#E§))
         {
            _loc13_ = 0;
            while(_loc13_ < _loc2_.length)
            {
               _loc2_[_loc13_].rank = _loc13_ + 1;
               _loc13_++;
            }
         }
         if(§5"L§.§3"1§.§2o§())
         {
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§8$-§);
         }
         else
         {
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§?<§,_loc2_);
         }
         QualifierInterruptedPopUp.§1""§(_loc2_);
         this.§%"'§();
      }
      
      private function §%!]§() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§36§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§@!D§)
         {
            _loc1_ = this.§36§.mClip.Button_Graphic;
            §-$8§.§#f§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§&z§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§6!#§);
            _loc3_.visible = true;
            this.§8X§ = this.§6!#§;
         }
         this.§!#M§ = null;
         this.§#$C§ = null;
         if(§5"L§.§3"1§.§54§ && §@!D§)
         {
            if(_loc4_ = §5"L§.§3"1§.§54§.brandedTournamentAssetId)
            {
               _loc4_ = _loc4_.toUpperCase();
               _loc5_ = this.§5"D§ + _loc4_;
               if(_loc6_ = §=@§.§9!x§(_loc5_,false,false))
               {
                  _loc3_.visible = false;
                  (_loc8_ = new _loc6_()).name = this.§&z§;
                  _loc1_.addChild(_loc8_);
                  this.§8X§ = this.§&z§;
               }
               _loc7_ = §@!D§.getItemByName("MovieClip_Logo").mClip;
               _loc5_ = this.§2!f§ + _loc4_;
               if(_loc6_ = §=@§.§9!x§(_loc5_,false,false))
               {
                  _loc7_.removeChildren();
                  _loc9_ = new _loc6_();
                  _loc7_.addChild(_loc9_);
               }
            }
         }
      }
      
      private function §0#=§() : void
      {
         this.§36§.visible = !§5"L§.§3"1§.§2o§();
         this.§9"r§.visible = §5"L§.§3"1§.§2o§();
      }
      
      private function §^"5§(param1:§6#!§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§6!1§ = null;
         if(param1.§1!$§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§1!$§.length)
            {
               _loc4_ = param1.§1!$§[_loc3_];
               if(!(_loc5_ = §@!D§.getItemByName(_loc4_)))
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
      
      private function §-"O§() : void
      {
         if(§7!8§.§1"O§(§7!8§.§&$ §) == §7!8§.§'!N§)
         {
            §@!D§.getItemByName("Container_Tournament").mClip.x = 440;
            §@!D§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = §^"a§.§'e§.getTotalStars();
         var _loc2_:int = §^"a§.§'e§.§6#1§();
         (§@!D§.getItemByName("Textfield_CollectedStars_Total") as §-$5§).setText(_loc1_.toString());
         (§@!D§.getItemByName("Textfield_ME_Score_Total") as §-$5§).setText(_loc2_.toString());
      }
      
      private function §5""§() : void
      {
         var _loc1_:§6!1§ = §@!D§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§6!1§ = §@!D§.getItemByName("AvatarSilhouette");
         if(this.§##f§ == null)
         {
            this.§##f§ = new §6#h§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).avatarString,_loc2_.mClip,false,"240");
            this.§##f§.scaleX = 1;
            this.§##f§.scaleY = 1;
            this.§##f§.x = -80;
            this.§##f§.y = -160;
            _loc1_.mClip.addChild(this.§##f§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§##f§);
            this.§##f§.§=!n§ = _loc2_.mClip;
            if(this.§##f§.§]!J§)
            {
               this.§##f§.§=!n§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#!3§);
      }
      
      protected function §#!3§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§-!S§.NORMAL,§## §.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
      }
      
      protected function §%"'§() : void
      {
         if(!§@!D§)
         {
            return;
         }
         if(!this.§36§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(this.§36§.mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§8X§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§%$#§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §5"L§.§3"1§.§3!^§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §%!6§.§<$;§(_loc3_);
         if(_loc3_ == §5"L§.§'#]§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§%$#§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§36§.visible)
         {
            if(this.§!#M§ == null)
            {
               _loc2_ = MovieClip(this.§36§.mClip.getChildByName("Button_Graphic"));
               _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§8X§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.§!#M§ = TextField(_loc3_.getChildByName("text"));
            }
            this.§!#M§.text = §5"L§.§3"1§.§%"#§()[0] + " left!";
         }
         else if(this.§9"r§.visible)
         {
            if(this.§#$C§ == null)
            {
               _loc2_ = MovieClip(this.§9"r§.mClip.getChildByName("OverlappingTournamentsButtonGraphic"));
               this.§#$C§ = TextField(_loc2_.getChildByName("Text_OverlappingTournamentsLeft"));
            }
            this.§#$C§.text = §5"L§.§3"1§.§;!Y§()[0];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§8!g§ = param3;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(§-!S§.NORMAL,§## §.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
               break;
            case "showCredits":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§+!Y§.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(4);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§2"%§.§%k§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     §%!?§(§4e§.STATE_NAME);
                  }
                  else
                  {
                     §%!?§(§7"Z§.STATE_NAME);
                  }
               };
               §2"%§.§%+§(§2"%§.§%k§,fn);
               break;
            case "LEVELS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§2"%§.§%k§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  §%!?§(§4#p§.STATE_NAME);
               };
               §2"%§.§%+§(§2"%§.§%k§,fn);
               break;
            case "TOONS":
               this.§;#H§();
               break;
            case "LEVELSOVER":
               if(this.§<Y§ != null)
               {
                  this.§<Y§.stop();
               }
               this.§<Y§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§<Y§.play();
               break;
            case "LEVELSOUT":
               if(this.§<Y§ != null)
               {
                  this.§<Y§.stop();
               }
               this.§<Y§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§<Y§.play();
               break;
            case "TOONSOVER":
               if(this.§?"V§ != null)
               {
                  this.§?"V§.stop();
               }
               this.§?"V§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§?"V§.play();
               break;
            case "TOONSOUT":
               if(this.§?"V§ != null)
               {
                  this.§?"V§.stop();
               }
               this.§?"V§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§?"V§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§@#T§ != null)
               {
                  this.§@#T§.stop();
               }
               this.§@#T§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§@#T§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§@#T§ != null)
               {
                  this.§@#T§.stop();
               }
               this.§@#T§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§@#T§.play();
               break;
            case "EARNCOINS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.exitFullScreen();
               §=#c§.§<!t§("earnCredits");
         }
      }
      
      private function §;#H§() : void
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
      
      public function §2!^§() : String
      {
         return §'@§.§"t§;
      }
      
      public function §6#U§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §5"L§.§3"1§.removeEventListener(§<$!§.§<#-§,this.§!#]§);
         super.deActivate();
         this.§=#[§();
         §@!D§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §@!D§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§+E§(this.§1"w§);
      }
      
      private function §=#[§() : void
      {
         if(this.§<Y§ != null)
         {
            this.§<Y§.stop();
            this.§<Y§ = null;
         }
         if(this.§?"V§ != null)
         {
            this.§?"V§.stop();
            this.§?"V§ = null;
         }
         if(this.§!$D§ != null)
         {
            this.§!$D§.stop();
            this.§!$D§ = null;
         }
         if(this.§@#T§ != null)
         {
            this.§@#T§.stop();
            this.§@#T§ = null;
         }
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            _loc1_ = §[$2§.§ #H§;
         }
         if(this.§1"w§)
         {
            this.§1"w§.§6""§.scaleX = _loc1_;
            this.§1"w§.§6""§.scaleY = _loc1_;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
      
      private function §<#f§(param1:Boolean) : void
      {
         if(param1)
         {
            (§+!p§.§;"-§ as §^"a§).§6H§(§9! §.§@v§);
            §@!D§.getItemByName("loadingBG").setVisibility(true);
            this.§+E§(this.§1"w§);
         }
         else
         {
            (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
            §@!D§.getItemByName("loadingBG").setVisibility(false);
            this.§ "@§(new Wallet(this,true,true,false,true));
         }
      }
   }
}
