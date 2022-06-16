package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"!!§.§+"0§;
   import §"$!§.§7#U§;
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §&N§.§5#"§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §+$?§.§8V§;
   import §-!S§.§##>§;
   import §0#f§.QualifierInterruptedPopUp;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §2G§.§ #$§;
   import §2G§.§#"8§;
   import §2G§.§5$4§;
   import §2G§.§9=§;
   import §3#T§.§'§;
   import §3#T§.§@"!§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §8#!§.§-"Z§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §9#B§.§"#&§;
   import §9#B§.§=!L§;
   import §9#B§.StateTournamentResults;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §<h§.§[#K§;
   import §?"e§.Starling;
   import §?P§.AvatarCreatorPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §[#[§.§'!-§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§["7§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
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
   
   public class §>"c§ extends §@"S§ implements §7E§, §8#§, §9#a§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const § "'§:Number = 1.6;
      
      public static const §'"&§:Number = 1.6;
      
      private static const §^3§:int = 0;
      
      private static const §?#Y§:int = 1;
       
      
      private var §0!x§:§4[§ = null;
      
      private var §<!?§:§4[§ = null;
      
      private var §"o§:§4[§ = null;
      
      private var §="^§:§4[§ = null;
      
      private var §&!M§:§8V§;
      
      private var §8O§:Array;
      
      private var §>$8§:§1"V§;
      
      private var §'#H§:Vector.<Boolean>;
      
      private const §-#r§:String = "MAIN_MENU_BUTTON_";
      
      private const §^"F§:String = "button";
      
      private const §+#7§:String = "brandedButton";
      
      private var §-!1§:TextField;
      
      private var §=$@§:TextField;
      
      private var §="R§:String = "button";
      
      private var §>$@§:§@"!§;
      
      private var §-",§:§@"!§;
      
      private var §&"K§:Wallet;
      
      public function §>"c§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§8O§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§'#H§ = new Vector.<Boolean>();
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_MainMenuSelection[0]);
         this.§>$@§ = §`!H§.getItemByName("Button_Tournament");
         this.§-",§ = §`!H§.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § try§.§!!t§().§'2§(§ try§.§2!N§);
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
         if(Starling.§@#K§)
         {
            Starling.§@#K§.start();
         }
         §3#U§.§#$4§.§;"?§(false);
         §3#U§.§#$4§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§@#W§();
         this.§2#a§();
         this.§1"§();
         (§`!H§.getItemByName("MovieClip_BackGround") as §[#K§).mClip.gotoAndStop(0);
         §`"x§.trackPageView(this);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§,null);
         this.§'#H§[§^3§] = false;
         this.§'#H§[§?#Y§] = false;
         §5`§.§6!§.addEventListener(§1#e§.§<"Y§,this.§<#B§);
         §5`§.§6!§.addEventListener(§1#e§.§>"d§,this.§3!D§);
         §5`§.§6!§.addEventListener(§1#e§.§7+§,this.§5$#§);
         §5`§.§6!§.addEventListener(§1#e§.§9"S§,this.§^"V§);
         §5`§.§6!§.§9E§();
         if(§2#s§.§6!§.active)
         {
            §2#s§.§6!§.addEventListener(§7#U§.§`$4§,this.§?$1§);
            §2#s§.§6!§.§9E§();
         }
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      private function §?$1§(param1:§7#U§) : void
      {
         §2#s§.§6!§.removeEventListener(§7#U§.§`$4§,this.§?$1§);
         if(§2#s§.§6!§.§6m§)
         {
            StateTournamentResults.§,!%§ = StateTournamentResults.§ "-§;
            if(§3#U§.§9#^§.§ Y§() == §=!L§.STATE_NAME || §3#U§.§9#^§.§ Y§() == §>"c§.STATE_NAME)
            {
               §1"h§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      protected function §<#B§(param1:§1#e§) : void
      {
         this.§'#H§[§^3§] = true;
         this.injectData();
      }
      
      protected function §3!D§(param1:§1#e§) : void
      {
         this.§'#H§[§?#Y§] = true;
         this.injectData();
      }
      
      private function §5$#§(param1:§1#e§) : void
      {
         this.§1"§();
         this.§[?§(new Wallet(this,true,true,false,true));
      }
      
      private function §^"V§(param1:§1#e§) : void
      {
         this.§1"§();
      }
      
      private function §1"§() : void
      {
         this.§9#k§();
         this.§,"C§();
         this.§-9§();
      }
      
      private function §2"a§() : String
      {
         return this.§,k§(this.§8O§);
      }
      
      private function §,k§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §[$0§(param1:Event) : void
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
         var _loc7_:§,^§ = null;
         var _loc8_:§##>§ = null;
         var _loc9_:§5$4§ = null;
         var _loc10_:String = null;
         var _loc11_:§,^§ = null;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         for each(_loc1_ in this.§'#H§)
         {
            if(!_loc1_)
            {
               return;
            }
         }
         _loc3_ = [];
         _loc4_ = §5`§.§6!§.§1"q§();
         §+"0§.§]#6§ = new Vector.<§5$4§>();
         _loc5_ = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc7_ = §4"I§.§2!K§(_loc6_.uid))
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
            _loc8_ = AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
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
            if((_loc9_ = §5$4§.§+!@§(_loc6_)).§'#%§)
            {
               if(§+"0§.§@#`§.indexOf(_loc9_.userId) == -1)
               {
                  §+"0§.§]#6§.push(_loc9_);
               }
            }
            else
            {
               _loc3_.push(_loc9_);
            }
         }
         if(_loc2_ == null)
         {
            _loc10_ = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
            _loc12_ = !!(_loc11_ = §4"I§.§2!K§(_loc10_)) ? _loc11_.name : "You";
            _loc2_ = {
               "r":_loc4_.length + 1,
               "u":_loc10_,
               "n":_loc12_
            };
            _loc13_ = 0;
            _loc14_ = 0;
            while(_loc14_ < §5`§.§6!§.levelIDs.length)
            {
               _loc13_ += _loc8_.§?"B§(§5`§.§6!§.levelIDs[_loc14_]);
               _loc14_++;
            }
            _loc2_.p = _loc13_;
            _loc3_.push(§5$4§.§+!@§(_loc2_));
         }
         if(§9=§.§2#p§(§9=§.§1H§))
         {
            _loc14_ = 0;
            while(_loc14_ < _loc3_.length)
            {
               _loc3_[_loc14_].rank = _loc14_ + 1;
               _loc14_++;
            }
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§0!c§,_loc3_);
         QualifierInterruptedPopUp.§9#x§(_loc3_);
         this.§-9§();
      }
      
      private function §,"C§() : void
      {
         var _loc4_:§-"Z§ = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:String = null;
         var _loc8_:MovieClip = null;
         var _loc9_:§-"Z§ = null;
         if(!this.§>$@§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§`!H§)
         {
            _loc1_ = this.§>$@§.mClip.Button_Graphic;
            §'!-§.§>"A§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§+#7§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§^"F§);
            _loc3_.visible = true;
            this.§="R§ = this.§^"F§;
         }
         this.§-!1§ = null;
         if(§5`§.§6!§.tournamentRules && §`!H§)
         {
            §'!-§.§>"A§((§`!H§.getItemByName("MovieClip_BackGround") as §[#K§).mClip,§5`§.§6!§.tournamentRules.§,#!§);
            _loc5_ = (_loc4_ = §5`§.§6!§.tournamentRules).§7"4§;
            _loc5_ = this.§-#r§ + _loc5_;
            if(_loc6_ = §!"f§.§##?§(_loc5_,false,false))
            {
               _loc3_.visible = false;
               (_loc8_ = new _loc6_()).name = this.§+#7§;
               _loc1_.addChild(_loc8_);
               this.§="R§ = this.§+#7§;
            }
            this.§^-§(§5`§.§6!§.tournamentRules);
            if(_loc7_ = §5`§.§6!§.§6"!§)
            {
               if((_loc9_ = §5`§.§6!§.§]"J§(_loc7_)) && _loc9_.§ #F§)
               {
                  if(_loc9_.§,#!§)
                  {
                     (§`!H§.getItemByName("MovieClip_BackGround") as §[#K§).mClip.gotoAndStop(_loc9_.§,#!§);
                  }
                  this.§^-§(_loc9_,true);
               }
            }
         }
      }
      
      private function §9#k§() : void
      {
         this.§>$@§.visible = !§5`§.§6!§.§3#u§();
         this.§-",§.visible = §5`§.§6!§.§3#u§();
      }
      
      private function §^-§(param1:§-"Z§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§@"!§ = null;
         if(param1.§`U§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§`U§.length)
            {
               _loc4_ = param1.§`U§[_loc3_];
               if(!(_loc5_ = §`!H§.getItemByName(_loc4_)))
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
      
      private function §2#a§() : void
      {
         if(§5#"§.§+6§(§5#"§.§!#$§) == §5#"§.§2"r§)
         {
            §`!H§.getItemByName("Container_Tournament").mClip.x = 440;
            §`!H§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = §,A§.§""`§.getTotalStars();
         var _loc2_:int = §,A§.§""`§.§?#Q§();
         (§`!H§.getItemByName("Textfield_CollectedStars_Total") as §%M§).setText(_loc1_.toString());
         (§`!H§.getItemByName("Textfield_ME_Score_Total") as §%M§).setText(_loc2_.toString());
      }
      
      private function §@#W§() : void
      {
         var _loc1_:§@"!§ = §`!H§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§@"!§ = §`!H§.getItemByName("AvatarSilhouette");
         if(this.§&!M§ == null)
         {
            this.§&!M§ = new §8V§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).avatarString,_loc2_.mClip,false,"240");
            this.§&!M§.scaleX = 1;
            this.§&!M§.scaleY = 1;
            this.§&!M§.x = -80;
            this.§&!M§.y = -160;
            _loc1_.mClip.addChild(this.§&!M§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§&!M§);
            this.§&!M§.§-$#§ = _loc2_.mClip;
            if(this.§&!M§.§"$4§)
            {
               this.§&!M§.§-$#§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^$3§);
      }
      
      protected function §^$3§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§]"$§.NORMAL,§^"U§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §-9§() : void
      {
         if(!§`!H§)
         {
            return;
         }
         if(!this.§>$@§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(this.§>$@§.mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§="R§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§=$@§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §5`§.§6!§.§<#8§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §["7§.§+H§(_loc3_);
         if(_loc3_ == §5`§.§ "C§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§=$@§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§>$@§.visible)
         {
            if(this.§-!1§ == null)
            {
               _loc2_ = MovieClip(this.§>$@§.mClip.getChildByName("Button_Graphic"));
               _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§="R§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.§-!1§ = TextField(_loc3_.getChildByName("text"));
            }
            this.§-!1§.text = §5`§.§6!§.§?#U§()[0] + " left!";
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'#0§ = param3;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(§]"$§.NORMAL,§^"U§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               break;
            case "showCredits":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§ !K§.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(4);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§ #$§.§?!s§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     §1"h§(§=!L§.STATE_NAME);
                  }
                  else
                  {
                     §1"h§(§"#&§.STATE_NAME);
                  }
               };
               § #$§.§@$#§(§ #$§.§?!s§,fn);
               break;
            case "LEVELS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§ #$§.§?!s§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  §1"h§(§^!§.STATE_NAME);
               };
               § #$§.§@$#§(§ #$§.§?!s§,fn);
               break;
            case "TOONS":
               this.§5! §();
               break;
            case "LEVELSOVER":
               if(this.§0!x§ != null)
               {
                  this.§0!x§.stop();
               }
               this.§0!x§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§0!x§.play();
               break;
            case "LEVELSOUT":
               if(this.§0!x§ != null)
               {
                  this.§0!x§.stop();
               }
               this.§0!x§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§0!x§.play();
               break;
            case "TOONSOVER":
               if(this.§<!?§ != null)
               {
                  this.§<!?§.stop();
               }
               this.§<!?§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§<!?§.play();
               break;
            case "TOONSOUT":
               if(this.§<!?§ != null)
               {
                  this.§<!?§.stop();
               }
               this.§<!?§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§<!?§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§"o§ != null)
               {
                  this.§"o§.stop();
               }
               this.§"o§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§"o§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§"o§ != null)
               {
                  this.§"o§.stop();
               }
               this.§"o§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§"o§.play();
               break;
            case "EARNCOINS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.exitFullScreen();
               §^!K§.§+"D§("earnCredits");
         }
      }
      
      private function §5! §() : void
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
      
      public function §!3§() : String
      {
         return §`"x§.§%#&§;
      }
      
      public function §0'§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §5`§.§6!§.removeEventListener(§1#e§.§<"Y§,this.§<#B§);
         §5`§.§6!§.removeEventListener(§1#e§.§>"d§,this.§3!D§);
         §5`§.§6!§.removeEventListener(§1#e§.§7+§,this.§5$#§);
         §5`§.§6!§.removeEventListener(§1#e§.§9"S§,this.§^"V§);
         super.deActivate();
         this.§;$;§();
         §`!H§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §`!H§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§8!3§(this.§&"K§);
      }
      
      private function §;$;§() : void
      {
         if(this.§0!x§ != null)
         {
            this.§0!x§.stop();
            this.§0!x§ = null;
         }
         if(this.§<!?§ != null)
         {
            this.§<!?§.stop();
            this.§<!?§ = null;
         }
         if(this.§="^§ != null)
         {
            this.§="^§.stop();
            this.§="^§ = null;
         }
         if(this.§"o§ != null)
         {
            this.§"o§.stop();
            this.§"o§ = null;
         }
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            _loc1_ = §>"c§.§ "'§;
         }
         if(this.§&"K§)
         {
            this.§&"K§.§=#-§.scaleX = _loc1_;
            this.§&"K§.§=#-§.scaleY = _loc1_;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.movieClip;
      }
   }
}
