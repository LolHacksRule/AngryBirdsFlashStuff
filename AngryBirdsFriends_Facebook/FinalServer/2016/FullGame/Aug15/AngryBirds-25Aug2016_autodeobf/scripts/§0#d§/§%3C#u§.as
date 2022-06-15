package §0#d§
{
   import §!x§.§4"d§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §#v§.§6^§;
   import §%$!§.§"r§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§0"F§;
   import §%$!§.§1#`§;
   import §%$!§.§3J§;
   import §%$!§.§9$6§;
   import §%$!§.§?i§;
   import §%$!§.§[!6§;
   import §+!u§.§"#B§;
   import §+"%§.§6X§;
   import §,!=§.§3"%§;
   import §,!=§.§6!'§;
   import §,!=§.StatePlay;
   import §-"i§.§4"X§;
   import §-"i§.§6#A§;
   import §-"i§.StateTournamentResults;
   import §-"i§.§^"A§;
   import §2!X§.§6#V§;
   import §2!X§.§;z§;
   import §2!X§.§=@§;
   import §2V§.§+" §;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §7g§.§4!q§;
   import §7z§.§7"m§;
   import §7z§.§[$,§;
   import §8§.§#$+§;
   import §9!s§.§!#d§;
   import §9!s§.§8!P§;
   import §;!H§.§<!K§;
   import §;4§.§2!]§;
   import §;4§.§9X§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§]#§;
   import §>q§.§1!_§;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§9"+§;
   import §^!,§.§<d§;
   import §`#?§.GiftInboxPopup;
   import §`3§.§3#Y§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §<#u§ extends Sprite implements §@J§, §@#@§
   {
      
      public static var § #C§:Boolean = false;
      
      public static const §4$&§:String = "SidebarButtonStateInfo";
      
      public static const §=0§:String = "SidebarButtonStatePlay";
      
      public static const §#!k§:String = "SidebarButtonStateNone";
      
      public static const §=$8§:String = "SidebarButtonStateNoTutorial";
      
      public static const §[8§:String = "SidebarButtonStatePause";
      
      public static const §@$#§:int = 0;
      
      public static const §^c§:int = 1;
      
      public static const §3"A§:int = 2;
      
      public static const §5#n§:int = 3;
      
      public static const §3b§:int = 4;
      
      public static const §'$7§:int = 5;
      
      public static const §"8§:int = 6;
      
      public static const §?!d§:int = 7;
      
      public static const §,#I§:int = 8;
      
      public static var §>!K§:Array = [];
      
      public static const §0!a§:String = "Friends";
      
      public static const §5"W§:String = "League";
       
      
      private var §^!U§:int;
      
      private var §;"#§:Object;
      
      private var §1!,§:Object;
      
      private var §;!S§:Object;
      
      private var §]!%§:Object;
      
      private var §9#2§:Object;
      
      private var §6#q§:Object;
      
      private var §>"s§:Object;
      
      private var §5"t§:Object;
      
      private var §#"#§:§=@§;
      
      private var §do §:Array;
      
      private var §!u§:MovieClip;
      
      private var §1!4§:MovieClip;
      
      private var § #K§:MovieClip;
      
      private var §3"=§:String;
      
      private var §;r§:§9X§;
      
      private var §6w§:String = "";
      
      private var §?#5§:§2!]§;
      
      private var §,!D§:Array;
      
      private var §^#z§:§2!]§;
      
      private var §9"o§:Boolean;
      
      private var §#X§:String;
      
      private var §%"6§:String;
      
      private var §^'§:Boolean;
      
      private var §^m§:Wallet;
      
      private var §>C§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §="o§:Number;
      
      private var mLevelManager:§6^§;
      
      private var §+#p§:Array;
      
      private var §3"_§:Array;
      
      private var §^^§:Object;
      
      public function §<#u§(param1:§9X§, param2:String, param3:String, param4:§6^§)
      {
         this.§+#p§ = [];
         this.§3"_§ = [];
         super();
         §6#V§.§6"n§ = param3;
         this.§%"6§ = param3;
         this.§;r§ = param1;
         this.§3"=§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§!A§(false,false);
      }
      
      private function init() : void
      {
         this.§!u§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§!u§.tabChildren = false;
         addChild(this.§!u§);
         MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§!u§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         this.§3!f§(false);
         this.§#"#§ = new §=@§(330,180,[],§6#V§,2,15);
         addChild(this.§#"#§.scrollerSprite);
         this.§#"#§.scrollerSprite.x = 180 + 7;
         this.§#"#§.scrollerSprite.rotation = 90;
         this.§!u§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§ a§);
         this.§!u§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§0!u§);
         this.§!u§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§3#D§);
         this.§!u§.mcButtonsContainer.btnLeagueProfile.addEventListener(MouseEvent.CLICK,this.§&"P§);
         this.§!u§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§,!r§);
         this.§!u§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§8!y§);
         this.§!u§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§+#`§);
         this.§!u§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§+!H§);
         this.§!u§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§ !X§);
         this.§!u§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§!u§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§!u§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§!u§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§ #K§ = this.§!u§.mcLeagueLogos as MovieClip;
         this.§ #K§.visible = false;
         this.§!u§.mcButtonsContainer.btnLeagueSettings.addEventListener(MouseEvent.CLICK,this.§>#-§);
         this.§=!4§(false);
         this.§#"#§.scrollerSprite.addEventListener(§!#d§.§^h§,this.§0#_§);
         this.§#"#§.scrollerSprite.addEventListener(§!#d§.§'#=§,this.§&"&§);
         this.§#"#§.scrollerSprite.addEventListener(§!#d§.§9T§,this.§0W§);
         this.§%#,§(new Wallet(this,true,true,false,true));
         this.§1"p§();
         this.§9"o§ = true;
         this.§1!4§ = this.§!u§.mcTitle as MovieClip;
         this.§1!4§.txtTitle.text = "";
         this.§1!4§.visible = false;
         this.§4!$§(GiftInboxPopup.§0n§);
         this.§?!K§(true);
         this.§^q§(§+3§(AngryBirdsBase.singleton.dataModel).§!!`§);
         this.§+"1§();
         §6X§.addCallback("giftsSentToUsers",this.§""Y§);
         §6X§.addCallback("challengeSentToUser",this.§7$#§);
         §6X§.addCallback("bragCompleted",this.§&_§);
         if(§4!q§.§3!]§.active)
         {
            this.§=!>§(§5"W§);
            this.§4"b§(§5"W§,false);
         }
         else
         {
            this.§=!>§(§0!a§);
            this.§4"b§(§0!a§,false);
         }
      }
      
      private function §;#y§() : Boolean
      {
         return this.§;"#§ != null && this.§^!U§ == §@$#§ || this.§>"s§ != null && this.§^!U§ == §"8§ || this.§6#q§ != null && this.§^!U§ == §'$7§ || this.§1!,§ != null && this.§^!U§ == §^c§;
      }
      
      private function §6"I§() : Boolean
      {
         return this.§;!S§ != null && this.§^!U§ == §3"A§ || this.§5"t§ != null && this.§^!U§ == §?!d§ || this.§]!%§ != null && this.§^!U§ == §5#n§ || this.§9#2§ != null && this.§^!U§ == §3b§;
      }
      
      private function §>#-§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§3"9§));
      }
      
      private function §=!4§(param1:Boolean) : void
      {
         this.§!u§.mcButtonsContainer.btnLeagueSettings.visible = param1;
         this.§!u§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§!u§.mcButtonsContainer.btnGift.visible = !param1;
         this.§?!K§(false);
         this.§4!$§(GiftInboxPopup.§0n§);
      }
      
      private function §1"p§() : void
      {
         this.btnTabFriends = this.§!u§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§!u§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§-#3§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§`l§);
      }
      
      protected function §`l§(param1:MouseEvent) : void
      {
         if(this.§>C§ != §5"W§)
         {
            §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         }
         if(this.§]!S§())
         {
            this.§&!e§(§?!d§);
         }
         else if(AngryBirdsBase.singleton.§^!X§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§0$$§ == StateTournamentResults.§#"8§)
            {
               this.§&!e§(§3b§);
            }
            else
            {
               this.§&!e§(§5#n§);
            }
         }
         else
         {
            this.§&!e§(§3"A§);
         }
      }
      
      protected function §-#3§(param1:MouseEvent) : void
      {
         if(this.§>C§ != §0!a§)
         {
            §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         }
         if(this.§]!S§())
         {
            this.§&!e§(§"8§);
         }
         else if(AngryBirdsBase.singleton.§^!X§() == StateTournamentResults.STATE_NAME)
         {
            this.§&!e§(§^c§);
         }
         else
         {
            this.§&!e§(§@$#§);
         }
      }
      
      private function §4"b§(param1:String, param2:Boolean = true) : void
      {
         if(this.§>C§ == param1)
         {
            return;
         }
         this.§>C§ = param1;
         this.§=!>§(param1);
         this.§=!4§(false);
         this.§!u§.mcButtonsContainer.btnAvatar.visible = this.§>C§ == §0!a§;
         this.§!u§.mcButtonsContainer.btnLeagueProfile.visible = this.§>C§ == §5"W§;
         if(this.§>C§ == §0!a§)
         {
            this.§^q§(§+3§(AngryBirdsBase.singleton.dataModel).§!!`§);
         }
         else
         {
            this.§^q§(false);
         }
         if(param2)
         {
            §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§[!3§,[this.§>C§],true);
         }
      }
      
      private function §=!>§(param1:String) : void
      {
         this.§!u§.mcTop.gotoAndStop(param1);
         this.§!u§.mcMiddle.gotoAndStop(param1);
         this.§!u§.mcBottom.gotoAndStop(param1);
      }
      
      private function §""Y§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§6#V§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§#"#§.§!"8§)
            {
               if(_loc4_.§&0§.data && _loc3_ == _loc4_.§&0§.data.userId)
               {
                  if(_loc4_.§&0§ is §;z§)
                  {
                     §;z§(_loc4_.§&0§).setCanSendGift(false,true);
                  }
                  §1#`§.§3!]§.§3!9§(_loc4_.§&0§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §5!%§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§#X§ == param1)
         {
            return;
         }
         §4"d§.log("Changing state");
         this.§#X§ = param1;
         switch(this.§#X§)
         {
            case §4$&§:
               §4"d§.log("Info state");
               this.§^x§();
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§!u§.mcButtonsContainer.btnInfo.enabled = true;
               this.§9"o§ = true;
               break;
            case §#!k§:
            case §[8§:
            case §=$8§:
               §4"d§.log("None state");
               this.§!"O§();
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§!u§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case §=0§:
               §4"d§.log("Play state");
               this.§^x§();
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§!u§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§!u§.mcButtonsContainer.btnInfo.enabled = true;
               this.§9"o§ = false;
         }
         (§>"$§.§<_§ as §8G§).§-#s§(this.§#X§);
      }
      
      public function §+!j§() : void
      {
         if(§#$+§.§=#T§)
         {
            MovieClip(this.§!u§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§!u§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§;#P§,[§#$+§.§=#T§],true);
      }
      
      public function §8g§(param1:String) : void
      {
         this.§!u§.mcButtonsContainer.btnLeagueSettings.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnLeagueSettings.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnLeagueSettings.mouseEnabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnAvatar.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnAvatar.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnLeagueProfile.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnLeagueProfile.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnLeagueProfile.mouseEnabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnInvite.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnInvite.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnGift.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnGift.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnShop.enabled = param1 != §#!k§;
         this.§!u§.mcButtonsContainer.btnShop.alpha = param1 == §#!k§ ? 0.5 : 1;
         this.§!u§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §#!k§;
         this.§^m§.§<!x§(param1 != §#!k§);
      }
      
      private function §3#D§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§7!l§));
      }
      
      private function §&"P§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+" §(§[W§.NORMAL,§<d§.§8"K§));
      }
      
      private function §,!r§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§2!"§));
      }
      
      private function §&"&§(param1:§!#d§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §6X§.§3U§("updateSessionToken",§9"+§.§"C§);
         §6X§.§3U§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName,param1.data.userId,§0"F§.§7#"§(§0"F§.§31§));
         §-#A§.§6$2§().§#!6§(1,"SIDEBAR");
      }
      
      private function §0W§(param1:§!#d§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §6X§.§3U§("updateSessionToken",§9"+§.§"C§);
         §6X§.§3U§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName,§]!m§.§3!]§.§9"<§,param1.data.userId,§0"F§.§7#"§(§0"F§.§0i§));
      }
      
      private function §&_§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§+#p§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§3"_§)
         {
            this.§3"_§.push(param1);
         }
      }
      
      private function §7$#§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§3#Y§ = new §3#Y§();
         _loc2_.§"#c§([param1]);
         if(§]!m§.§3!]§.§7!,§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §]!m§.§3!]§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §-#A§.§6$2§().§#!D§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,param1,§]!m§.§3!]§.§7!,§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §2!]§.§%B§.length)
         {
            if(§2!]§.§%B§[_loc3_].userId == param1)
            {
               §2!]§.§%B§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §2!]§.§&F§.push(param1);
         var _loc4_:int = this.§#"#§.offset + this.§#"#§.§9!D§ / 2;
         this.§#C§(this.§^!U§,null,_loc4_);
      }
      
      private function §0#_§(param1:§!#d§) : void
      {
         §6X§.addCallback("invitationBatchSent",this.§9$-§);
         §6X§.addCallback("invitationBatchCancel",this.§-#F§);
         dispatchEvent(new §!#d§(§!#d§.§2!"§,param1.data as §3J§));
      }
      
      private function §9$-§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §6X§.§5!3§("invitationBatchSent",this.§9$-§);
         §6X§.§5!3§("invitationBatchCancel",this.§-#F§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§#"#§.§9!D§ / 2);
            _loc3_ = this.§#"#§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§;r§.§%!P§().data.length)
            {
               if(this.§;r§.§%!P§().data[_loc4_].userId == param1)
               {
                  this.§;r§.§%!P§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §>!K§.push(param1);
            this.§-m§();
            this.§#"#§.refresh();
            this.§=#'§(_loc3_);
            this.§%"v§();
         }
      }
      
      private function §-#F§() : void
      {
         §6X§.§5!3§("invitationBatchSent",this.§9$-§);
         §6X§.§5!3§("invitationBatchCancel",this.§-#F§);
      }
      
      private function §+#`§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§,!1§));
         this.§?!K§(false);
      }
      
      private function §+!H§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§>! §));
      }
      
      private function § !X§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!#d§(§!#d§.§,#E§));
         this.§+!j§();
      }
      
      private function §8#t§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         if(this.§9"o§)
         {
            §4"d§.log(§!#d§.§=#x§);
            dispatchEvent(new §!#d§(§!#d§.§=#x§));
         }
         else
         {
            §4"d§.log(§!#d§.§[#=§);
            dispatchEvent(new §!#d§(§!#d§.§[#=§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§="o§ = Math.max(param1,330);
         this.§!u§.mcMiddle.height = this.§="o§ - this.§!u§.mcTop.height - this.§!u§.mcBottom.height;
         this.§!u§.mcBottom.y = this.§="o§ - this.§!u§.mcBottom.height;
         this.§!u§.mcButtonsContainer.y = this.§="o§ - this.§!u§.mcButtonsContainer.height + 7;
         this.§#"#§.scrollerSprite.y = 104;
         this.§#"#§.setWidth(this.§="o§ - 255);
         this.§%"v§();
      }
      
      private function § a§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Shop_Selection",§#$+§.§'!o§);
         this.scroll(-this.§#"#§.§9!D§);
      }
      
      private function §0!u§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Shop_Selection",§#$+§.§'!o§);
         this.scroll(this.§#"#§.§9!D§);
      }
      
      private function §8!y§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         dispatchEvent(new §!#d§(§!#d§.§]"<§));
      }
      
      public function §#C§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §@$#§:
               if(!this.§;"#§)
               {
                  this.§;"#§ = new Object();
                  this.§;"#§.title = "Tournament scores";
                  this.§;"#§.data = [];
                  this.§;"#§.standings = [];
               }
               if(param2)
               {
                  this.§;"#§.standings = param2;
                  this.§^x§();
               }
               if(§ #C§)
               {
                  this.§;"#§.data = this.§;"#§.standings.concat(this.§3!P§());
                  this.§;"#§.data = this.§;"#§.data.concat(this.§<$2§());
               }
               else
               {
                  this.§;"#§.data = this.§;"#§.standings.concat(new §"r§(""));
               }
               _loc4_ = this.§4#Z§() == §0!a§;
               break;
            case §^c§:
               if(!this.§1!,§)
               {
                  this.§1!,§ = new Object();
                  this.§1!,§.title = "Previous scores";
               }
               this.§1!,§.standings = param2;
               if(§4!q§.§3!]§.active && (§4!q§.§3!]§.§=$#§ || §4!q§.§3!]§.§;"c§))
               {
                  _loc4_ = this.§4#Z§() == §0!a§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§^x§();
               break;
            case §3"A§:
               if(!this.§;!S§)
               {
                  this.§;!S§ = new Object();
                  this.§;!S§.leagueId = "NONE";
               }
               if(§4!q§.§3!]§.§+"s§())
               {
                  this.§;!S§.leagueId = §4!q§.§3!]§.§+"s§().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§;!S§.standings = param2;
               if(this.§4#Z§() == §5"W§ && this.§^!U§ != §?!d§)
               {
                  _loc4_ = true;
               }
               break;
            case §5#n§:
               if(!this.§]!%§)
               {
                  this.§]!%§ = new Object();
                  this.§]!%§.leagueId = "NONE";
               }
               if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.l)
               {
                  _loc5_ = §4!q§.§3!]§.§;"c§.l;
                  this.§]!%§.leagueId = _loc5_.pli.tn;
               }
               this.§]!%§.standings = param2;
               _loc4_ = this.§4#Z§() == §5"W§;
               this.§^x§();
               break;
            case §3b§:
               if(!this.§9#2§)
               {
                  this.§9#2§ = new Object();
                  this.§9#2§.title = "";
                  this.§9#2§.leagueId = "NONE";
               }
               if(§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l && §4!q§.§3!]§.§=$#§.l.p)
               {
                  _loc6_ = §4!q§.§3!]§.§=$#§.l;
                  this.§9#2§.title = _loc6_.pli.ln;
                  this.§9#2§.leagueId = _loc6_.pli.tn;
               }
               this.§9#2§.standings = param2;
               _loc4_ = Boolean(this.§4#Z§() == §5"W§ && StateTournamentResults.§0$$§ == StateTournamentResults.§#"8§);
               this.§^x§();
               break;
            case §'$7§:
               if(!this.§6#q§)
               {
                  this.§6#q§ = new Object();
                  this.§6#q§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§6#q§.standings = [];
               }
               else
               {
                  this.§6#q§.standings = param2;
                  if(!§ #C§)
                  {
                     this.§6#q§.standings = this.§6#q§.standings.concat(new §"r§(""));
                  }
                  this.§^x§();
               }
               _loc4_ = true;
               break;
            case §"8§:
               if(!this.§>"s§)
               {
                  this.§>"s§ = new Object();
                  this.§>"s§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§+#M§(param3);
                  return;
               }
               if(!§ #C§)
               {
                  param2 = param2.concat(new §"r§(""));
               }
               else
               {
                  if(this.§?#5§.§5!c§)
                  {
                     param2 = param2.concat(this.§-#7§());
                  }
                  param2 = param2.concat(this.§<$2§());
               }
               this.§>"s§.standings = param2;
               _loc4_ = this.§4#Z§() == §0!a§;
               this.§^x§();
               break;
            case §?!d§:
               if(!this.§5"t§)
               {
                  this.§5"t§ = new Object();
                  this.§5"t§.leagueId = "NONE";
                  this.§5"t§.loadingScores = false;
               }
               if(§4!q§.§3!]§.§+"s§())
               {
                  this.§5"t§.leagueId = §4!q§.§3!]§.§+"s§().id;
               }
               if(!param2)
               {
                  this.§5"t§.standings = [];
                  this.§"$0§();
                  this.§5"t§.loadingScores = true;
                  return;
               }
               this.§5"t§.standings = param2;
               this.§5"t§.loadingScores = false;
               _loc4_ = this.§4#Z§() == §5"W§;
               this.§^x§();
               break;
            case §,#I§:
               _loc4_ = true;
               this.§!"O§();
         }
         if(_loc4_)
         {
            this.§&!e§(param1,param3);
         }
      }
      
      public function §&!e§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§[!6§ = null;
         this.§ #K§.visible = false;
         this.§1!4§.visible = false;
         switch(param1)
         {
            case §@$#§:
               this.§4"b§(§0!a§);
               if(this.§;"#§)
               {
                  this.§1!4§.txtTitle.text = this.§;"#§.title;
                  this.§1!4§.visible = true;
                  this.§do § = this.§;"#§.data;
               }
               else
               {
                  this.§do § = [];
               }
               this.§6w§ = "";
               this.§!A§(§4!q§.§3!]§.active,false);
               this.§3!f§(false);
               this.§-m§();
               this.§5!%§(§4$&§);
               this.§!#C§(false);
               break;
            case §^c§:
               this.§4"b§(§0!a§);
               if(this.§1!,§)
               {
                  this.§1!4§.txtTitle.text = this.§1!,§.title;
                  this.§1!4§.visible = true;
                  this.§do § = this.§1!,§.standings;
               }
               else
               {
                  this.§do § = [];
               }
               this.§6w§ = "";
               _loc3_ = §4!q§.§3!]§.active && (§4!q§.§3!]§.§=$#§ || §4!q§.§3!]§.§;"c§);
               this.§!A§(_loc3_,false);
               this.§3!f§(false);
               this.§-m§();
               this.§5!%§(§4$&§);
               this.§!#C§(false);
               break;
            case §3"A§:
               this.§4"b§(§5"W§);
               this.§!#C§(false);
               if(this.§;!S§)
               {
                  this.§ #K§.visible = true;
                  this.§ #K§.gotoAndStop(this.§;!S§.leagueId);
                  this.§do § = this.§;!S§.standings;
                  this.§3!f§(this.§;!S§.standings != null && this.§;!S§.standings.length == 0);
               }
               else
               {
                  this.§do § = [];
                  this.§3!f§(false);
               }
               this.§6w§ = "League";
               this.§!A§(true,true);
               this.§-m§();
               this.§5!%§(§4$&§);
               break;
            case §5#n§:
               this.§4"b§(§5"W§);
               this.§!#C§(false);
               if(this.§]!%§)
               {
                  this.§ #K§.visible = true;
                  this.§ #K§.gotoAndStop(this.§]!%§.leagueId);
                  this.§do § = this.§]!%§.standings;
                  this.§3!f§(this.§]!%§.standings != null && this.§]!%§.standings.length == 0);
               }
               else
               {
                  this.§do § = [];
                  this.§3!f§(true);
               }
               this.§6w§ = "League";
               this.§!A§(true,true);
               this.§-m§();
               this.§5!%§(§4$&§);
               break;
            case §3b§:
               this.§4"b§(§5"W§);
               this.§!#C§(false);
               if(this.§9#2§)
               {
                  this.§ #K§.visible = true;
                  this.§ #K§.gotoAndStop(this.§9#2§.leagueId);
                  this.§do § = this.§9#2§.standings;
                  this.§3!f§(this.§9#2§.standings != null && this.§9#2§.standings.length == 0);
               }
               else
               {
                  this.§do § = [];
                  this.§3!f§(true);
               }
               this.§6w§ = "League";
               this.§!A§(true,true);
               this.§-m§();
               this.§5!%§(§4$&§);
               break;
            case §'$7§:
               this.§4"b§(§0!a§);
               this.§1!4§.txtTitle.text = this.§6#q§.title;
               this.§1!4§.visible = true;
               this.§6w§ = "";
               this.§!A§(false,false);
               this.§do § = this.§6#q§.standings;
               this.§-m§();
               this.§5!%§(§4$&§);
               this.§3!f§(false);
               this.§!#C§(this.§6#q§.standings.length == 0);
               break;
            case §"8§:
               this.§4"b§(§0!a§);
               this.§1!4§.txtTitle.text = this.§>"s§.title;
               this.§1!4§.visible = true;
               this.§6w§ = this.mLevelManager.currentLevel;
               this.§do § = this.§>"s§.standings;
               this.§-m§();
               this.§3!f§(false);
               this.§!#C§(this.§>"s§.standings.length == 0);
               if(param2 == -1)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§>"s§.standings.length)
                  {
                     if(this.§>"s§.standings[_loc4_] is §?i§ && this.§>"s§.standings[_loc4_].userId == this.§%"6§)
                     {
                        param2 = this.§>"s§.standings[_loc4_].rank - 1;
                        break;
                     }
                     _loc4_++;
                  }
               }
               break;
            case §?!d§:
               this.§4"b§(§5"W§);
               if(this.§5"t§)
               {
                  this.§6w§ = this.mLevelManager.currentLevel;
                  this.§ #K§.visible = true;
                  this.§ #K§.gotoAndStop(this.§5"t§.leagueId);
                  this.§do § = this.§5"t§.standings;
                  this.§3!f§(!this.§5"t§.loadingScores && this.§5"t§.standings.length == 0);
                  this.§!#C§(this.§5"t§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§5"t§.standings)
                     {
                        if(_loc5_.isMe)
                        {
                           param2 = _loc5_.rank - 1;
                           break;
                        }
                     }
                  }
               }
               else
               {
                  this.§do § = [];
                  this.§3!f§(false);
                  this.§!#C§(false);
               }
               this.§!A§(true,true);
               this.§-m§();
               break;
            case §,#I§:
               this.§!A§(§4!q§.§3!]§.active,this.§4#Z§() == §5"W§);
               this.§do § = [];
               this.§-m§();
               this.§5!%§(§4$&§);
               this.§3!f§(false);
               this.§!#C§(true);
         }
         this.§=#'§(param2);
         this.§%"v§();
         if(this.§^!U§ != param1)
         {
            this.§^!U§ = param1;
            dispatchEvent(new §!#d§(§!#d§.§3"J§,{"tab":this.§>C§}));
         }
      }
      
      private function §3!f§(param1:Boolean) : void
      {
         if(!§]!m§.§3!]§.§7!,§)
         {
            param1 = false;
         }
         this.§!u§.mcNotInLeague.visible = param1;
         this.§!u§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§!u§.NotInLeagueBG.visible = param1;
         this.§!u§.mcRankingBadgeBg.visible = param1;
      }
      
      private function §=#'§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§do §.length)
            {
               if(this.§do §[_loc5_].userId == this.§%"6§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§#"#§.offset;
         var _loc3_:int = Math.floor(this.§#"#§.§9!D§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§#"#§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§#"#§.scroll(param1);
            this.§%"v§();
         }
      }
      
      private function §%"v§() : void
      {
         var _loc1_:* = this.§#"#§.offset != 0;
         var _loc2_:* = this.§#"#§.offset != this.§#"#§.data.length - this.§#"#§.§9!D§;
         this.§!u§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§!u§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §-y§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§?i§ = null;
         var _loc9_:int = 0;
         if(!this.§?#5§ || !this.§,!D§ || this.§6w§ != param1)
         {
            return {};
         }
         this.§+#p§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§^^§ = new Object();
         this.§^^§.originalRank = 0;
         this.§^^§.rankAfterUpdate = 0;
         this.§^^§.leagueOriginalRank = 0;
         this.§^^§.leagueRankAfterUpdate = 0;
         if(this.§^#z§)
         {
            this.§^^§.leagueOriginalRank = this.§^#z§.§7"9§(this.§%"6§);
            this.§^^§.leagueRankAfterUpdate = this.§^#z§.§-y§(param2,param3,param4,_loc7_);
            this.§#C§(§?!d§,this.§^#z§.data,this.§^^§.leagueRankAfterUpdate);
         }
         this.§^^§.originalRank = this.§?#5§.§7"9§(this.§%"6§);
         this.§^^§.rankAfterUpdate = this.§?#5§.§-y§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§+#p§.push(_loc8_);
            _loc9_ = _loc8_.rank - 1;
            §,"W§.§8!1§(_loc9_.toString());
         }
         this.§#C§(§"8§,this.§,!D§,this.§^^§.rankAfterUpdate);
         return this.§^^§;
      }
      
      public function §4!$§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         if(param1 == 0 || this.§!u§.mcButtonsContainer.btnLeagueSettings.visible)
         {
            this.§!u§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§!u§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§!u§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§!u§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §]#§.§`" §(param1);
            this.§!u§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§!u§.mcButtonsContainer.mcItemCountBg;
            int(_loc3_.width);
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§!u§.mcButtonsContainer.txtInboxItemCount.x + this.§!u§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§!u§.mcWalletContainer;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      public function §`"n§(param1:Boolean) : void
      {
         this.§^m§.§<c§.visible = param1;
      }
      
      private function §-m§() : void
      {
         var _loc4_:§9$6§ = null;
         var _loc5_:Boolean = false;
         var _loc1_:Dictionary = §1#`§.§3!]§.§ #j§();
         var _loc2_:Array = this.§do §.concat();
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§do §[_loc3_];
            _loc5_ = false;
            var _loc8_:int = 0;
            var _loc9_:* = _loc1_;
            while(§§hasnext(_loc9_,_loc8_))
            {
               if(§§nextvalue(_loc8_,_loc9_) == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
                  _loc5_ = true;
               }
            }
            _loc8_ = 0;
            _loc9_ = §>!K§;
            while(§§hasnext(_loc9_,_loc8_))
            {
               if(§§nextvalue(_loc8_,_loc9_) == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§do §.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§#"#§.data = _loc2_;
      }
      
      public function §<$#§() : String
      {
         return "Friendsbar";
      }
      
      private function §?!K§(param1:Boolean) : void
      {
         if(§%h§.§3!]§.§@!3§ && §%h§.§3!]§.§@!3§.§ "U§(§1!_§.§4!1§) && param1)
         {
            this.§!u§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§!u§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§!u§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§!u§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §;!c§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §>!K§.push(_loc2_.id);
         }
         this.§-m§();
         this.§#"#§.refresh();
         this.§%"v§();
      }
      
      public function §+"1§() : void
      {
         var _loc1_:Boolean = §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.length > 0 || §+3§(AngryBirdsBase.singleton.dataModel).§5`§.length > 0;
         this.§!u§.mcButtonsContainer.mcNewTagShop.visible = _loc1_;
         MovieClip(this.§!u§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         this.§!u§.mcButtonsContainer.Tag_Sale_Shop.visible = §+3§(AngryBirdsBase.singleton.dataModel).§2"t§ || §+3§(AngryBirdsBase.singleton.dataModel).§`#B§;
         MovieClip(this.§!u§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         if(this.§^m§)
         {
            this.§^m§.§?#R§();
         }
         var _loc2_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc2_)
         {
            _loc2_.§`#$§.§?#R§();
         }
      }
      
      public function §^q§(param1:Boolean = false) : void
      {
         this.§!u§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§>C§ == §0!a§;
         this.§!u§.mcButtonsContainer.Tag_Sale_Avatar.visible = §+3§(AngryBirdsBase.singleton.dataModel).§["m§ && this.§>C§ == §0!a§;
         MovieClip(this.§!u§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§!u§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§!u§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §!A§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(param2)
         {
            this.§=!>§(this.§>C§);
            this.§=!4§(this.§>C§ == §5"W§);
         }
         else
         {
            this.§=!>§(§0!a§);
            this.§=!4§(false);
         }
      }
      
      public function §4#Z§() : String
      {
         return this.§>C§;
      }
      
      public function §+#M§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§?#5§ = null;
         if(_loc2_)
         {
            this.§?#5§ = this.§;r§.§&"r§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§4#H§(),this.mLevelManager.§4#H§());
            if(this.§?#5§.§-#!§)
            {
               this.§?#5§.addEventListener(§8!P§.§,"m§,this.§#y§);
            }
            else
            {
               this.§#y§(null,param1);
            }
         }
      }
      
      private function §#y§(param1:§8!P§, param2:int = -1) : void
      {
         var _loc4_:§?i§ = null;
         this.§?#5§.removeEventListener(§8!P§.§,"m§,this.§#y§);
         this.§,!D§ = new Array();
         §2!]§.§+S§ = new Vector.<§?i§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?#5§.data.length)
         {
            if(_loc4_ = this.§?#5§.data[_loc3_])
            {
               _loc4_.§0!i§ = this.§?#5§.§5!c§;
               if(_loc4_.§[!Y§)
               {
                  if(§2!]§.§&F§.indexOf(_loc4_.userId) == -1)
                  {
                     §2!]§.§+S§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§+#p§)
                  {
                     var _loc6_:int = 0;
                     var _loc7_:* = this.§+#p§;
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        if((§§nextvalue(_loc6_,_loc7_)).userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§,!D§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§,!D§.length == 0)
         {
            _loc4_ = new §?i§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName,null,0,0,0,1,null,0,null);
            this.§,!D§.push(_loc4_);
            this.§?#5§.§7"d§(_loc4_);
         }
         else if(§0"F§.§7#"§(§0"F§.§0i§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,!D§.length)
            {
               this.§,!D§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         this.§#C§(§"8§,this.§,!D§,param2);
      }
      
      public function §"$0§() : void
      {
         if(this.mLevelManager.§4#H§() && §4!q§.§3!]§.active)
         {
            if(!this.§^#z§ || !this.§^#z§.§-#!§)
            {
               this.§^#z§ = §4!q§.§3!]§.§&"r§(this.mLevelManager.currentLevel,true);
               if(this.§^#z§.§-#!§)
               {
                  this.§^#z§.addEventListener(§8!P§.§,"m§,this.§4#W§);
               }
               else
               {
                  this.§4#W§(null);
               }
            }
         }
      }
      
      private function §4#W§(param1:§8!P§) : void
      {
         this.§^#z§.removeEventListener(§8!P§.§,"m§,this.§4#W§);
         this.§#C§(§?!d§,this.§^#z§.data);
      }
      
      public function §]!S§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§^!X§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §4"X§.STATE_NAME || _loc1_ == §"#B§.STATE_NAME || _loc1_ == §6#A§.STATE_NAME || _loc1_ == §3"%§.STATE_NAME || _loc1_ == §6!'§.STATE_NAME || _loc1_ == §^"A§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §6"c§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§;!S§ && this.§;!S§.standings)
         {
            for each(_loc3_ in this.§;!S§.standings)
            {
               if(_loc3_.isMe)
               {
                  _loc3_.nickName = param1;
                  _loc3_.userName = param1;
                  _loc3_.profilePicture = param2;
                  break;
               }
            }
         }
         if(this.§5"t§ && this.§5"t§.standings)
         {
            for each(_loc3_ in this.§5"t§.standings)
            {
               if(_loc3_.isMe)
               {
                  _loc3_.nickName = param1;
                  _loc3_.userName = param1;
                  _loc3_.profilePicture = param2;
                  break;
               }
            }
         }
         if(this.§]!%§ && this.§]!%§.standings)
         {
            for each(_loc3_ in this.§]!%§.standings)
            {
               if(_loc3_.isMe)
               {
                  _loc3_.nickName = param1;
                  _loc3_.userName = param1;
                  _loc3_.profilePicture = param2;
                  break;
               }
            }
         }
         if(this.§9#2§ && this.§9#2§.standings)
         {
            for each(_loc3_ in this.§9#2§.standings)
            {
               if(_loc3_.isMe)
               {
                  _loc3_.nickName = param1;
                  _loc3_.userName = param1;
                  _loc3_.profilePicture = param2;
                  break;
               }
            }
         }
         this.§&!e§(this.§^!U§);
      }
      
      private function §!#C§(param1:Boolean) : void
      {
         this.§!u§.mcLoadingSpinner.visible = param1;
      }
      
      public function §[!-§() : §2!]§
      {
         if(this.§^!U§ == §?!d§)
         {
            return this.§^#z§;
         }
         return this.§?#5§;
      }
      
      private function §<$2§() : Array
      {
         var _loc4_:§[$,§ = null;
         var _loc1_:Vector.<§[$,§> = §7"m§.§6">§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §2!]§.§<"<§)
            {
               break;
            }
            _loc2_.push(new §3J§(_loc4_.userID,_loc4_.name,_loc4_.§+!Y§()));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §3!P§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §2!]§.§%B§.length && _loc2_ < §2!]§.§=!G§)
         {
            if(§2!]§.§&F§.indexOf(§2!]§.§%B§[_loc3_].userId) == -1)
            {
               _loc1_.push(§2!]§.§%B§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §-#7§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §2!]§.§+S§.length && _loc2_ < §2!]§.§=!G§)
         {
            if(§2!]§.§&F§.indexOf(§2!]§.§+S§[_loc3_].userId) == -1)
            {
               _loc1_.push(§2!]§.§+S§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §="5§() : int
      {
         return this.§^!U§;
      }
      
      public function levelStarted() : void
      {
         this.§+#p§ = new Array();
         this.§3"_§ = new Array();
         this.§^^§ = null;
      }
      
      private function §^x§() : void
      {
         if(!this.§!u§.hasEventListener(MouseEvent.CLICK))
         {
            this.§!u§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§8#t§);
         }
      }
      
      private function §!"O§() : void
      {
         this.§!u§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§8#t§);
      }
      
      public function §="l§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§3"_§)
         {
            for each(_loc2_ in this.§3"_§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §@"V§() : Array
      {
         return this.§+#p§;
      }
      
      public function §@!o§(param1:Boolean) : int
      {
         if(this.§^^§)
         {
            if(param1)
            {
               if(this.§^^§.originalRank > this.§^^§.rankAfterUpdate)
               {
                  return this.§^^§.rankAfterUpdate;
               }
            }
            else
            {
               return this.§^^§.rankAfterUpdate;
            }
         }
         return -1;
      }
   }
}
