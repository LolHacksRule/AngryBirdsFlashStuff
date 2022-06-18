package §3=§
{
   import § "C§.§ !<§;
   import § "g§.§5"D§;
   import §!!t§.§'8§;
   import §!!t§.§9$A§;
   import §!!t§.StateTournamentResults;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+"u§.§6!9§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §+#B§.§?"K§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §3!5§.§0#r§;
   import §3"G§.§16§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §6!'§.§@#c§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §7#j§.§@"F§;
   import §8"b§.§1!9§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §=#§.§,O§;
   import §>" §.QualifierInterruptedPopUp;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"h§.§?>§;
   import §?!N§.§%#§;
   import §?!N§.AvatarCreatorPopup;
   import §]"'§.§1#"§;
   import §]"'§.§@"%§;
   import §]"'§.§[#!§;
   import §]"'§.§default§;
   import §]"P§.Starling;
   import com.rovio.assets.§2"O§;
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
   
   public class §6"H§ extends §-"4§ implements §0"+§, §="D§, §["b§
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const §!d§:Number = 1.6;
      
      public static const §'#O§:Number = 1.6;
       
      
      private var § ""§:§]%§ = null;
      
      private var §]#y§:§]%§ = null;
      
      private var §;!+§:§]%§ = null;
      
      private var §+"S§:§]%§ = null;
      
      private var §?#?§:§,O§;
      
      private var §,"<§:Array;
      
      private var §@7§:§'!n§;
      
      private const §;#]§:String = "MAIN_MENU_BUTTON_";
      
      private const §2$>§:String = "MovieClip_Logo_";
      
      private const §;!0§:String = "button";
      
      private const §8!T§:String = "brandedButton";
      
      private var §4#j§:TextField;
      
      private var §-#E§:TextField;
      
      private var §>"`§:String = "button";
      
      private var §,"f§:§#$>§;
      
      private var §9"5§:§#$>§;
      
      private var §<#e§:TextField;
      
      private var §?3§:Wallet;
      
      public function §6"H§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "MainMenuSelectionState")
      {
         this.§,"<§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_MainMenuSelection[0]);
         this.§,"f§ = §<"`§.getItemByName("Button_Tournament");
         this.§9"5§ = §<"`§.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§##B§(true);
         §+$A§.§@"i§().§="H§(§+$A§.§0"i§);
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
         if(Starling.§3!I§)
         {
            Starling.§3!I§.start();
         }
         §%"T§.§;`§.setVisible(false);
         §%"T§.§;`§.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§4"B§();
         this.§ #g§();
         this.§["u§();
         (§<"`§.getItemByName("MovieClip_BackGround") as §<c§).mClip.gotoAndStop(0);
         §5"w§.trackPageView(this);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§!"d§,null);
         §^"C§.§?q§.addEventListener(§0#r§.§=!z§,this.§4w§);
         §^"C§.§?q§.§!$C§();
         AngryBirdsBase.singleton.playThemeMusic();
         §'8§.§^"=§();
         §^"C§.§]y§(false);
      }
      
      private function §4w§(param1:§0#r§) : void
      {
         §^"C§.§?q§.removeEventListener(§0#r§.§=!z§,this.§4w§);
         if(§^"C§.§?q§.§&2§())
         {
            this.§["u§();
            this.injectData();
         }
         else
         {
            §^"C§.§?q§.addEventListener(§0#r§.§ var§,this.§<!h§);
            §^"C§.§?q§.§ #7§();
         }
      }
      
      private function §<!h§(param1:§0#r§) : void
      {
         this.§["u§();
         if(§@#c§.§?q§.active)
         {
            §@#c§.§?q§.addEventListener(§?>§.§]#s§,this.§+#x§);
            §@#c§.§?q§.§!$C§(§^"C§.§?q§.§5!W§());
         }
         this.injectData();
      }
      
      private function §+#x§(param1:§?>§) : void
      {
         §@#c§.§?q§.removeEventListener(§?>§.§]#s§,this.§+#x§);
         if(!§^"C§.§?q§.§&2§() && §'8§.§>"-§() > 0)
         {
            if(§@#c§.§?q§.§5#1§)
            {
               StateTournamentResults.§?"y§ = StateTournamentResults.§+$E§;
               if(§%"T§.§>$<§.§ p§() == §'8§.STATE_NAME || §%"T§.§>$<§.§ p§() == §6"H§.STATE_NAME)
               {
                  StateTournamentResults.§>!j§ = §'8§.§>"-§();
                  §'8§.§6#R§(0);
                  §%D§(StateTournamentResults.STATE_NAME);
               }
            }
         }
      }
      
      private function §["u§() : void
      {
         this.§+"U§();
         this.§1#2§();
         this.§`!0§();
      }
      
      private function §3#Q§() : String
      {
         return this.§0!m§(this.§,"<§);
      }
      
      private function §0!m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §"!f§(param1:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var _loc1_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§8c§ = null;
         var _loc8_:§default§ = null;
         var _loc9_:String = null;
         var _loc10_:§8c§ = null;
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         this.§##B§(false);
         var _loc2_:Array = [];
         var _loc3_:Array = §^"C§.§?q§.§#C§();
         §5"D§.§[§ = new Vector.<§default§>();
         var _loc4_:int = 0;
         var _loc5_:§2#Q§ = AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
         for each(_loc6_ in _loc3_)
         {
            if(_loc7_ = §5!b§.§8#'§(_loc6_.uid))
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
            if((_loc8_ = §default§.§]"B§(_loc6_)).§5$6§)
            {
               if(§5"D§.§4"L§.indexOf(_loc8_.userId) == -1)
               {
                  §5"D§.§[§.push(_loc8_);
               }
            }
            else
            {
               _loc2_.push(_loc8_);
            }
         }
         if(_loc1_ == null)
         {
            _loc9_ = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
            _loc11_ = !!(_loc10_ = §5!b§.§8#'§(_loc9_)) ? _loc10_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc12_ = 0;
            _loc13_ = 0;
            while(_loc13_ < §^"C§.§?q§.levelIDs.length)
            {
               _loc12_ += _loc5_.§var§(§^"C§.§?q§.levelIDs[_loc13_]);
               _loc13_++;
            }
            _loc1_.p = _loc12_;
            _loc2_.push(§default§.§]"B§(_loc1_));
         }
         if(§[#!§.§1!'§(§[#!§.§^"S§))
         {
            _loc13_ = 0;
            while(_loc13_ < _loc2_.length)
            {
               _loc2_[_loc13_].rank = _loc13_ + 1;
               _loc13_++;
            }
         }
         if(§^"C§.§?q§.§&2§())
         {
            (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§&!;§);
         }
         else
         {
            (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§2!h§,_loc2_);
         }
         QualifierInterruptedPopUp.§9#-§(_loc2_);
         this.§`!0§();
      }
      
      private function §1#2§() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§,"f§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(§<"`§)
         {
            _loc1_ = this.§,"f§.mClip.Button_Graphic;
            §1!9§.§`!c§(_loc1_,"DEFAULT");
            _loc2_ = MovieClip(_loc1_.getChildByName(this.§8!T§));
            if(_loc2_)
            {
               _loc1_.removeChild(_loc2_);
            }
            _loc3_ = _loc1_.getChildByName(this.§;!0§);
            _loc3_.visible = true;
            this.§>"`§ = this.§;!0§;
         }
         this.§4#j§ = null;
         this.§<#e§ = null;
         if(§^"C§.§?q§.§4#-§ && §<"`§)
         {
            if(_loc4_ = §^"C§.§?q§.§4#-§.brandedTournamentAssetId)
            {
               _loc4_ = _loc4_.toUpperCase();
               _loc5_ = this.§;#]§ + _loc4_;
               if(_loc6_ = §2"O§.§`>§(_loc5_,false,false))
               {
                  _loc3_.visible = false;
                  (_loc8_ = new _loc6_()).name = this.§8!T§;
                  _loc1_.addChild(_loc8_);
                  this.§>"`§ = this.§8!T§;
               }
               _loc7_ = §<"`§.getItemByName("MovieClip_Logo").mClip;
               _loc5_ = this.§2$>§ + _loc4_;
               if(_loc6_ = §2"O§.§`>§(_loc5_,false,false))
               {
                  _loc7_.removeChildren();
                  _loc9_ = new _loc6_();
                  _loc7_.addChild(_loc9_);
               }
            }
         }
      }
      
      private function §+"U§() : void
      {
         this.§,"f§.visible = !§^"C§.§?q§.§&2§();
         this.§9"5§.visible = §^"C§.§?q§.§&2§();
      }
      
      private function §3&§(param1:§6!9§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§#$>§ = null;
         if(param1.§"!J§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§"!J§.length)
            {
               _loc4_ = param1.§"!J§[_loc3_];
               if(!(_loc5_ = §<"`§.getItemByName(_loc4_)))
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
      
      private function § #g§() : void
      {
         if(§ !<§.§'!J§(§ !<§.§2#i§) == § !<§.§<_§)
         {
            §<"`§.getItemByName("Container_Tournament").mClip.x = 440;
            §<"`§.getItemByName("Container_Levels").visible = false;
         }
         var _loc1_:int = §'"a§.§`!R§.getTotalStars();
         var _loc2_:int = §'"a§.§`!R§.§ $;§();
         (§<"`§.getItemByName("Textfield_CollectedStars_Total") as §-#j§).setText(_loc1_.toString());
         (§<"`§.getItemByName("Textfield_ME_Score_Total") as §-#j§).setText(_loc2_.toString());
      }
      
      private function §4"B§() : void
      {
         var _loc1_:§#$>§ = §<"`§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§#$>§ = §<"`§.getItemByName("AvatarSilhouette");
         if(this.§?#?§ == null)
         {
            this.§?#?§ = new §,O§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).avatarString,_loc2_.mClip,false,"240");
            this.§?#?§.scaleX = 1;
            this.§?#?§.scaleY = 1;
            this.§?#?§.x = -80;
            this.§?#?§.y = -160;
            _loc1_.mClip.addChild(this.§?#?§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§?#?§);
            this.§?#?§.§ "3§ = _loc2_.mClip;
            if(this.§?#?§.§>#Z§)
            {
               this.§?#?§.§ "3§.visible = false;
            }
         }
         _loc1_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§34§);
      }
      
      protected function §34§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%#§.NORMAL,§9#5§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §`!0§() : void
      {
         if(!§<"`§)
         {
            return;
         }
         if(!this.§,"f§.visible)
         {
            return;
         }
         var _loc1_:MovieClip = MovieClip(this.§,"f§.mClip.getChildByName("Button_Graphic"));
         var _loc2_:DisplayObjectContainer = DisplayObjectContainer((_loc1_.getChildByName(this.§>"`§) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.§-#E§ = TextField(_loc2_.getChildByName("text"));
         var _loc3_:int = §^"C§.§?q§.§@!F§();
         var _loc4_:String = "Your Rank: " + _loc3_ + §?"K§.§7"P§(_loc3_);
         if(_loc3_ == §^"C§.§&!A§)
         {
            _loc4_ = "Join the fun!";
         }
         this.§-#E§.text = _loc4_;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObjectContainer = null;
         super.update(param1);
         if(this.§,"f§.visible)
         {
            if(this.§4#j§ == null)
            {
               _loc2_ = MovieClip(this.§,"f§.mClip.getChildByName("Button_Graphic"));
               _loc3_ = DisplayObjectContainer((_loc2_.getChildByName(this.§>"`§) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.§4#j§ = TextField(_loc3_.getChildByName("text"));
            }
            this.§4#j§.text = §^"C§.§?q§.§1!h§()[0] + " left!";
         }
         else if(this.§9"5§.visible)
         {
            if(this.§<#e§ == null)
            {
               _loc2_ = MovieClip(this.§9"5§.mClip.getChildByName("OverlappingTournamentsButtonGraphic"));
               this.§<#e§ = TextField(_loc2_.getChildByName("Text_OverlappingTournamentsLeft"));
            }
            this.§<#e§.text = §^"C§.§?q§.§=#i§()[0];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'!,§ = param3;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(§%#§.NORMAL,§9#5§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               break;
            case "showCredits":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§1U§.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(4);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§1#"§.§9!1§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     §%D§(§'8§.STATE_NAME);
                  }
                  else
                  {
                     §%D§(§9$A§.STATE_NAME);
                  }
               };
               §1#"§.§ "6§(§1#"§.§9!1§,fn);
               break;
            case "LEVELS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               fn = function(param1:Event):void
               {
                  var _loc2_:URLLoader = param1.currentTarget as URLLoader;
                  _loc2_.removeEventListener(Event.COMPLETE,§1#"§.§9!1§);
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  §%D§(§7W§.STATE_NAME);
               };
               §1#"§.§ "6§(§1#"§.§9!1§,fn);
               break;
            case "TOONS":
               this.§@"O§();
               break;
            case "LEVELSOVER":
               if(this.§ ""§ != null)
               {
                  this.§ ""§.stop();
               }
               this.§ ""§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§ ""§.play();
               break;
            case "LEVELSOUT":
               if(this.§ ""§ != null)
               {
                  this.§ ""§.stop();
               }
               this.§ ""§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§ ""§.play();
               break;
            case "TOONSOVER":
               if(this.§]#y§ != null)
               {
                  this.§]#y§.stop();
               }
               this.§]#y§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]#y§.play();
               break;
            case "TOONSOUT":
               if(this.§]#y§ != null)
               {
                  this.§]#y§.stop();
               }
               this.§]#y§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§]#y§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§;!+§ != null)
               {
                  this.§;!+§.stop();
               }
               this.§;!+§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§;!+§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§;!+§ != null)
               {
                  this.§;!+§.stop();
               }
               this.§;!+§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§;!+§.play();
               break;
            case "EARNCOINS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.exitFullScreen();
               §@"F§.§^$#§("earnCredits");
         }
      }
      
      private function §@"O§() : void
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
      
      public function §<"r§() : String
      {
         return §5"w§.§]#@§;
      }
      
      public function §5!R§() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         §^"C§.§?q§.removeEventListener(§0#r§.§ var§,this.§<!h§);
         super.deActivate();
         this.§2!]§();
         §<"`§.getItemByName("Container_Levels").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_Levels").mClip.scaleY = 1;
         §<"`§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.§"[§(this.§?3§);
      }
      
      private function §2!]§() : void
      {
         if(this.§ ""§ != null)
         {
            this.§ ""§.stop();
            this.§ ""§ = null;
         }
         if(this.§]#y§ != null)
         {
            this.§]#y§.stop();
            this.§]#y§ = null;
         }
         if(this.§+"S§ != null)
         {
            this.§+"S§.stop();
            this.§+"S§ = null;
         }
         if(this.§;!+§ != null)
         {
            this.§;!+§.stop();
            this.§;!+§ = null;
         }
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            _loc1_ = §6"H§.§!d§;
         }
         if(this.§?3§)
         {
            this.§?3§.§5#k§.scaleX = _loc1_;
            this.§?3§.§5#k§.scaleY = _loc1_;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(param1)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
      
      private function §##B§(param1:Boolean) : void
      {
         if(param1)
         {
            (§%"T§.§>$<§ as §'"a§).§##b§(§<"c§.§!!>§);
            §<"`§.getItemByName("loadingBG").setVisibility(true);
            this.§"[§(this.§?3§);
         }
         else
         {
            (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
            §<"`§.getItemByName("loadingBG").setVisibility(false);
            this.§[D§(new Wallet(this,true,true,false,true));
         }
      }
   }
}
