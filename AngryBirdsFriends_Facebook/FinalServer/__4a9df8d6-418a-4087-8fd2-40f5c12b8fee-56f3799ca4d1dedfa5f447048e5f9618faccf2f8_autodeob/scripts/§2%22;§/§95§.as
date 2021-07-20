package §2";§
{
   import § !j§.§4#c§;
   import § §.§,#l§;
   import §!#C§.§&%§;
   import §!#C§.§3" §;
   import §!#C§.§4!Q§;
   import §!#C§.§5H§;
   import §"!n§.§^#f§;
   import §"",§.§4#Q§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §##Z§.§<$2§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§%!S§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §'!j§.Starling;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §,"v§.§;"n§;
   import §0!s§.§]"Y§;
   import §0"B§.§##G§;
   import §1"l§.§`""§;
   import §1L§.§!!o§;
   import §2J§.§]#@§;
   import §3!-§.QualifierInterruptedPopUp;
   import §3+§.§0!S§;
   import §3+§.§;!H§;
   import §3+§.StateTournamentResults;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §<!r§.§]_§;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §>z§.§#"l§;
   import §>z§.AvatarCreatorPopup;
   import §?!a§.§>#,§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
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
   
   public class §95§ extends §7!z§ implements §,!n§, §%!#§, §&>§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const §^"_§:Number = 1.6;
      
      public static const §8g§:Number = 1.6;
       
      
      private var §?"6§:§7$C§ = null;
      
      private var § "M§:§7$C§ = null;
      
      private var § i§:§7$C§ = null;
      
      private var §1"I§:§7$C§ = null;
      
      private var §1#0§:§>#,§;
      
      private var §"#'§:Array;
      
      private var §6"8§:§!!o§;
      
      private const §6#X§:String = "MAIN_MENU_BUTTON_";
      
      private const § "Q§:String = "MovieClip_Logo_";
      
      private const §@#u§:String = "button";
      
      private const §^o§:String = "brandedButton";
      
      private var §4"k§:TextField;
      
      private var §&!x§:TextField;
      
      private var §#p§:String = "button";
      
      private var §1!'§:§8#=§;
      
      private var §-"p§:§8#=§;
      
      private var §2!]§:TextField;
      
      private var §1!B§:Wallet;
      
      public function §95§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§"#'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_MainMenuSelection[0]);
         this.§1!'§ = §[$5§.getItemByName("Button_Tournament");
         this.§-"p§ = §[$5§.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§54§(true);
         §!!K§.§%#S§().§4"8§(§!!K§.§;#u§);
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
         if(Starling.§>x§)
         {
            Starling.§>x§.start();
         }
         §7n§.§6#K§.setVisible(false);
         §7n§.§6#K§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§7"<§();
         this.§,"T§();
         this.§6#S§();
         (§[$5§.getItemByName("MovieClip_BackGround") as §]$+§).mClip.gotoAndStop(0);
         §0I§.trackPageView(this);
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§2"5§,null);
         §'##§.§`"H§.addEventListener(§]#@§.§,!N§,this.§^"&§);
         §'##§.§`"H§.§ $%§();
         AngryBirdsBase.singleton.playThemeMusic();
         §;!H§.§4$%§();
         §'##§.§#$@§(false);
      }
      
      private function §^"&§(param1:§]#@§) : void
      {
         §'##§.§`"H§.removeEventListener(§]#@§.§,!N§,this.§^"&§);
         if(§'##§.§`"H§.§;!q§())
         {
            this.§6#S§();
            this.injectData();
         }
         else
         {
            §'##§.§`"H§.addEventListener(§]#@§.§1!^§,this.§-!V§);
            §'##§.§`"H§.§;$!§();
         }
      }
      
      private function §-!V§(param1:§]#@§) : void
      {
         this.§6#S§();
         if(§<$2§.§`"H§.active)
         {
            §<$2§.§`"H§.addEventListener(§4#Q§.§4f§,this.§23§);
            §<$2§.§`"H§.§ $%§(§'##§.§`"H§.§4"e§());
         }
         this.injectData();
      }
      
      private function §23§(param1:§4#Q§) : void
      {
         §<$2§.§`"H§.removeEventListener(§4#Q§.§4f§,this.§23§);
         if(!§'##§.§`"H§.§;!q§() && §;!H§.§[!d§() > 0)
         {
            if(§<$2§.§`"H§.§>!L§)
            {
               StateTournamentResults.§2!x§ = StateTournamentResults.§="M§;
               if(§7n§.§-$<§.§'!&§() == §;!H§.STATE_NAME || §7n§.§-$<§.§'!&§() == §95§.STATE_NAME)
               {
                  StateTournamentResults.§<#%§ = §;!H§.§[!d§();
                  §;!H§.§#$%§(0);
                  §1!L§(StateTournamentResults.STATE_NAME);
               }
            }
         }
      }
      
      private function §6#S§() : void
      {
         this.§2v§();
         this.§5#'§();
         this.§##P§();
      }
      
      private function §1+§() : String
      {
         return this.§3$>§(this.§"#'§);
      }
      
      private function §3$>§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §0$A§(param1:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var _loc1_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§@u§ = null;
         var _loc8_:§3" § = null;
         var _loc9_:String = null;
         var _loc10_:§@u§ = null;
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         this.§54§(false);
         var _loc2_:Array = [];
         var _loc3_:Array = §'##§.§`"H§.§]!,§();
         §##G§.§@!-§ = new Vector.<§3" §>();
         var _loc4_:int = 0;
         var _loc5_:§ #`§ = AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
         for each(_loc6_ in _loc3_)
         {
            if(_loc7_ = §<T§.§<#§(_loc6_.uid))
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
            if((_loc8_ = §3" §.§5+§(_loc6_)).§^!w§)
            {
               if(§##G§.§##F§.indexOf(_loc8_.userId) == -1)
               {
                  §##G§.§@!-§.push(_loc8_);
               }
            }
            else
            {
               _loc2_.push(_loc8_);
            }
         }
         if(_loc1_ == null)
         {
            _loc9_ = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
            _loc11_ = !!(_loc10_ = §<T§.§<#§(_loc9_)) ? _loc10_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc12_ = 0;
            _loc13_ = 0;
            while(_loc13_ < §'##§.§`"H§.levelIDs.length)
            {
               _loc12_ += _loc5_.§ P§(§'##§.§`"H§.levelIDs[_loc13_]);
               _loc13_++;
            }
            _loc1_.p = _loc12_;
            _loc2_.push(§3" §.§5+§(_loc1_));
         }
         if(§5H§.§^"M§(§5H§.§,"5§))
         {
            _loc13_ = 0;
            while(_loc13_ < _loc2_.length)
            {
               _loc2_[_loc13_].rank = _loc13_ + 1;
               _loc13_++;
            }
         }
         if(§'##§.§`"H§.§;!q§())
         {
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§8$,§);
         }
         else
         {
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§[!-§,_loc2_);
         }
         QualifierInterruptedPopUp.§2"L§(_loc2_);
         this.§##P§();
      }
      
      private function §5#'§() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§1!'§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§[$5§)
         {
            _loc1_ = this.§1!'§.mClip.Button_Graphic;
            §^#f§.§##[§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§^o§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§@#u§);
            _loc3_.visible = true;
            this.§#p§ = this.§@#u§;
         }
         this.§4"k§ = null;
         this.§2!]§ = null;
         if(§'##§.§`"H§.§;#Q§ && §[$5§)
         {
            if(_loc4_ = §'##§.§`"H§.§;#Q§.brandedTournamentAssetId)
            {
               _loc4_ = _loc4_.toUpperCase();
               _loc5_ = this.§6#X§ + _loc4_;
               if(_loc6_ = §6$A§.§1!m§(_loc5_,false,false))
               {
                  _loc3_.visible = false;
                  (_loc8_ = new _loc6_()).name = this.§^o§;
                  _loc1_.addChild(_loc8_);
                  this.§#p§ = this.§^o§;
               }
               _loc7_ = §[$5§.getItemByName("MovieClip_Logo").mClip;
               _loc5_ = this.§ "Q§ + _loc4_;
               if(_loc6_ = §6$A§.§1!m§(_loc5_,false,false))
               {
                  _loc7_.removeChildren();
                  _loc9_ = new _loc6_();
                  _loc7_.addChild(_loc9_);
               }
            }
         }
      }
      
      private function §2v§() : void
      {
         this.§1!'§.visible = !§'##§.§`"H§.§;!q§();
         this.§-"p§.visible = §'##§.§`"H§.§;!q§();
      }
      
      private function §%"k§(param1:§]_§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§8#=§ = null;
         if(param1.§;##§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§;##§.length)
            {
               _loc4_ = param1.§;##§[_loc3_];
               if(!(_loc5_ = §[$5§.getItemByName(_loc4_)))
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
      
      private function §,"T§() : void
      {
         if(§,#l§.§`!x§(§,#l§.§,=§) == §,#l§.§<t§)
         {
            §[$5§.getItemByName("Container_Tournament").mClip.x = 440;
            §[$5§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = § #v§.§,"§.getTotalStars();
         var _loc2_:int = § #v§.§,"§.§7$#§();
         (§[$5§.getItemByName("Textfield_CollectedStars_Total") as §`"$§).setText(_loc1_.toString());
         (§[$5§.getItemByName("Textfield_ME_Score_Total") as §`"$§).setText(_loc2_.toString());
      }
      
      private function §7"<§() : void
      {
         var _loc1_:§8#=§ = §[$5§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§8#=§ = §[$5§.getItemByName("AvatarSilhouette");
         if(this.§1#0§ == null)
         {
            this.§1#0§ = new §>#,§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).avatarString,_loc2_.mClip,false,"240");
            this.§1#0§.scaleX = 1;
            this.§1#0§.scaleY = 1;
            this.§1#0§.x = -80;
            this.§1#0§.y = -160;
            _loc1_.mClip.addChild(this.§1#0§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§1#0§);
            this.§1#0§.§9[§ = _loc2_.mClip;
            if(this.§1#0§.§+!S§)
            {
               this.§1#0§.§9[§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!"W§);
      }
      
      protected function §!"W§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§#"l§.NORMAL,§]"Y§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §##P§() : void
      {
         if(!§[$5§)
         {
            return;
         }
         if(!this.§1!'§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(this.§1!'§.mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§#p§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§&!x§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §'##§.§`"H§.§!#F§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §%!S§.§;!B§(_loc3_);
         if(_loc3_ == §'##§.§=#&§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§&!x§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§1!'§.visible)
         {
            if(this.§4"k§ == null)
            {
               _loc2_ = MovieClip(this.§1!'§.mClip.getChildByName("Button_Graphic"));
               _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§#p§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.§4"k§ = TextField(_loc3_.getChildByName("text"));
            }
            this.§4"k§.text = §'##§.§`"H§.§?! §()[0] + " left!";
         }
         else if(this.§-"p§.visible)
         {
            if(this.§2!]§ == null)
            {
               _loc2_ = MovieClip(this.§-"p§.mClip.getChildByName("OverlappingTournamentsButtonGraphic"));
               this.§2!]§ = TextField(_loc2_.getChildByName("Text_OverlappingTournamentsLeft"));
            }
            this.§2!]§.text = §'##§.§`"H§.§@!L§()[0];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§6"n§ = param3;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(§#"l§.NORMAL,§]"Y§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               break;
            case "showCredits":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§'#J§.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(4);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§&%§.§5"8§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     §1!L§(§;!H§.STATE_NAME);
                  }
                  else
                  {
                     §1!L§(§0!S§.STATE_NAME);
                  }
               };
               §&%§.§^!c§(§&%§.§5"8§,fn);
               break;
            case "LEVELS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§&%§.§5"8§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  §1!L§(§8$0§.STATE_NAME);
               };
               §&%§.§^!c§(§&%§.§5"8§,fn);
               break;
            case "TOONS":
               this.§&#l§();
               break;
            case "LEVELSOVER":
               if(this.§?"6§ != null)
               {
                  this.§?"6§.stop();
               }
               this.§?"6§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§?"6§.play();
               break;
            case "LEVELSOUT":
               if(this.§?"6§ != null)
               {
                  this.§?"6§.stop();
               }
               this.§?"6§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§?"6§.play();
               break;
            case "TOONSOVER":
               if(this.§ "M§ != null)
               {
                  this.§ "M§.stop();
               }
               this.§ "M§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§ "M§.play();
               break;
            case "TOONSOUT":
               if(this.§ "M§ != null)
               {
                  this.§ "M§.stop();
               }
               this.§ "M§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§ "M§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§ i§ != null)
               {
                  this.§ i§.stop();
               }
               this.§ i§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§ i§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§ i§ != null)
               {
                  this.§ i§.stop();
               }
               this.§ i§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§ i§.play();
               break;
            case "EARNCOINS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.exitFullScreen();
               § !+§.§>$%§("earnCredits");
         }
      }
      
      private function §&#l§() : void
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
      
      public function §;!=§() : String
      {
         return §0I§.§5"`§;
      }
      
      public function §#"!§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §'##§.§`"H§.removeEventListener(§]#@§.§1!^§,this.§-!V§);
         super.deActivate();
         this.§+"7§();
         §[$5§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §[$5§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§&!U§(this.§1!B§);
      }
      
      private function §+"7§() : void
      {
         if(this.§?"6§ != null)
         {
            this.§?"6§.stop();
            this.§?"6§ = null;
         }
         if(this.§ "M§ != null)
         {
            this.§ "M§.stop();
            this.§ "M§ = null;
         }
         if(this.§1"I§ != null)
         {
            this.§1"I§.stop();
            this.§1"I§ = null;
         }
         if(this.§ i§ != null)
         {
            this.§ i§.stop();
            this.§ i§ = null;
         }
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            _loc1_ = §95§.§^"_§;
         }
         if(this.§1!B§)
         {
            this.§1!B§.§+F§.scaleX = _loc1_;
            this.§1!B§.§+F§.scaleY = _loc1_;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
      
      private function §54§(param1:Boolean) : void
      {
         if(param1)
         {
            (§7n§.§-$<§ as § #v§).§ "u§(§`""§.§+#X§);
            §[$5§.getItemByName("loadingBG").setVisibility(true);
            this.§&!U§(this.§1!B§);
         }
         else
         {
            (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
            §[$5§.getItemByName("loadingBG").setVisibility(false);
            this.§0!A§(new Wallet(this,true,true,false,true));
         }
      }
   }
}
