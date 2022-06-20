package §`!R§
{
   import § $%§.§5h§;
   import § o§.§%"!§;
   import §!@§.§,!z§;
   import §&"J§.§"!F§;
   import §&"J§.§2#<§;
   import §&"J§.§3!3§;
   import §&"J§.§4"W§;
   import §&"J§.§4"n§;
   import §&"J§.§7>§;
   import §&"J§.§9N§;
   import §&"J§.§`!!§;
   import §&"J§.§`]§;
   import §+">§.§+#J§;
   import §-!_§.GiftInboxPopup;
   import §1#=§.§ <§;
   import §1#=§.§&#e§;
   import §1#=§.§'b§;
   import §1#W§.§!#&§;
   import §3#G§.§,";§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§ "b§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.§#p§;
   import §8"X§.§6#K§;
   import §8"X§.§>!k§;
   import §8"X§.StateTournamentResults;
   import §9"0§.§@#m§;
   import §94§.§"!u§;
   import §94§.StatePlay;
   import §94§.§[j§;
   import §<"p§.§?!T§;
   import §<#m§.§^#o§;
   import §>"c§.§+!_§;
   import §@!n§.§0!L§;
   import §@!n§.§`$<§;
   import §@#§.§`!Q§;
   import §[§.§]"w§;
   import §[0§.§;$-§;
   import §[G§.§4!0§;
   import §[G§.§9#R§;
   import §]#p§.§%!?§;
   import §]#p§.§1#]§;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §&"8§ extends Sprite implements §]"w§
   {
      
      public static var §4!I§:Boolean = false;
      
      public static const § #Y§:String = "SidebarButtonStateInfo";
      
      public static const § y§:String = "SidebarButtonStatePlay";
      
      public static const §4c§:String = "SidebarButtonStateNone";
      
      public static const §`!%§:String = "SidebarButtonStateNoTutorial";
      
      public static const §1b§:String = "SidebarButtonStatePause";
      
      public static const §"#U§:int = 0;
      
      public static const §=E§:int = 1;
      
      public static const §1"K§:int = 2;
      
      public static const §!#4§:int = 3;
      
      public static const § k§:int = 4;
      
      public static const §[#[§:int = 5;
      
      public static const §[$"§:int = 6;
      
      public static const §6D§:int = 7;
      
      public static const §+!q§:int = 8;
      
      public static const §+"o§:int = 9;
      
      private static const §+!r§:int = 40;
      
      private static const §2+§:int = 20;
      
      public static var §<#c§:Array = [];
      
      public static const §^#T§:String = "Friends";
      
      public static const §`#s§:String = "League";
       
      
      private var §;v§:int;
      
      private var §@#O§:Object;
      
      private var §#[§:Object;
      
      private var §!!U§:Object;
      
      private var §!L§:Object;
      
      private var §>"V§:Object;
      
      private var §8#,§:Object;
      
      private var §3#w§:Object;
      
      private var § !!§:Object;
      
      private var § !K§:§ <§;
      
      private var §<!r§:Array;
      
      private var §7"$§:MovieClip;
      
      private var §3>§:MovieClip;
      
      private var §4!7§:MovieClip;
      
      private var §3#?§:String;
      
      private var §4#3§:§9#R§;
      
      private var §";§:String = "";
      
      private var §<s§:§4!0§;
      
      private var §01§:Array;
      
      private var §,#B§:§4!0§;
      
      private var §[$=§:Boolean;
      
      private var §#$=§:String;
      
      private var §[#n§:String;
      
      private var §8#P§:Boolean;
      
      private var §%!A§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §%T§:Number;
      
      private var mLevelManager:§`!Q§;
      
      private var §^"V§:Array;
      
      private var §6>§:Array;
      
      private var §0$0§:Object;
      
      public function §&"8§(param1:§9#R§, param2:String, param3:String, param4:§`!Q§)
      {
         this.§^"V§ = [];
         this.§6>§ = [];
         super();
         §'b§.§4#;§ = param3;
         this.§[#n§ = param3;
         this.§4#3§ = param1;
         this.§3#?§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§0m§(false,false);
      }
      
      private function init() : void
      {
         this.§3>§ = new §+$#§.§["`§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§3>§.tabChildren = false;
         addChild(this.§3>§);
         MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§3>§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         this.§%#4§(false);
         this.§ !K§ = new § <§(330,180,[],§'b§,2,15);
         addChild(this.§ !K§.scrollerSprite);
         this.§ !K§.scrollerSprite.x = 180 + 7;
         this.§ !K§.scrollerSprite.rotation = 90;
         this.§3>§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§2!$§);
         this.§3>§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§4!Y§);
         this.§3>§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§?!Y§);
         this.§3>§.mcButtonsContainer.btnLeagueProfile.addEventListener(MouseEvent.CLICK,this.§;#;§);
         this.§3>§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§;!#§);
         this.§3>§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§&#E§);
         this.§3>§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§6n§);
         this.§3>§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§>#g§);
         this.§3>§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§<#R§);
         this.§3>§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§3>§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§3>§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§3>§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§4!7§ = this.§3>§.mcLeagueLogos as MovieClip;
         this.§4!7§.visible = false;
         this.§3>§.mcButtonsContainer.btnLeagueSettings.addEventListener(MouseEvent.CLICK,this.§'!r§);
         this.§;z§(false);
         this.§ !K§.scrollerSprite.addEventListener(§`$<§.§?$>§,this.§>#p§);
         this.§ !K§.scrollerSprite.addEventListener(§`$<§.§?F§,this.§2g§);
         this.§ !K§.scrollerSprite.addEventListener(§`$<§.§'$2§,this.§ !@§);
         this.§2#!§();
         this.§[$=§ = true;
         this.§7"$§ = this.§3>§.mcTitle as MovieClip;
         this.§7"$§.txtTitle.text = "";
         this.§7"$§.visible = false;
         this.§^7§(GiftInboxPopup.§,"O§);
         this.§+h§(true);
         this.§`;§(§`]§(AngryBirdsBase.singleton.dataModel).§?#P§);
         this.§`'§();
         § "8§.addCallback("giftsSentToUsers",this.§?!q§);
         § "8§.addCallback("challengeSentToUser",this.§2"'§);
         § "8§.addCallback("bragCompleted",this.§-"E§);
         if(§;$-§.§ "D§.active)
         {
            this.§&@§(§`#s§);
            this.§+#0§(§`#s§,false);
         }
         else
         {
            this.§&@§(§^#T§);
            this.§+#0§(§^#T§,false);
         }
      }
      
      private function §^"^§() : Boolean
      {
         return this.§@#O§ != null && this.§;v§ == §"#U§ || this.§3#w§ != null && this.§;v§ == §[$"§ || this.§8#,§ != null && this.§;v§ == §[#[§ || this.§#[§ != null && this.§;v§ == §=E§;
      }
      
      private function §-8§() : Boolean
      {
         return this.§!!U§ != null && this.§;v§ == §1"K§ || this.§ !!§ != null && this.§;v§ == §6D§ || this.§!L§ != null && this.§;v§ == §!#4§ || this.§>"V§ != null && this.§;v§ == § k§;
      }
      
      private function §'!r§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§`q§));
      }
      
      private function §;z§(param1:Boolean) : void
      {
         this.§3>§.mcButtonsContainer.btnLeagueSettings.visible = param1;
         this.§3>§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§3>§.mcButtonsContainer.btnGift.visible = !param1;
         this.§+h§(false);
         this.§^7§(GiftInboxPopup.§,"O§);
      }
      
      private function §2#!§() : void
      {
         this.btnTabFriends = this.§3>§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§3>§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§1#G§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§1!S§);
      }
      
      protected function §1!S§(param1:MouseEvent) : void
      {
         if(this.§%!A§ != §`#s§)
         {
            §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         }
         if(this.§]!§())
         {
            this.§"$9§(§6D§);
         }
         else if(AngryBirdsBase.singleton.§="!§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§>#K§ == StateTournamentResults.§2!?§)
            {
               this.§"$9§(§ k§);
            }
            else
            {
               this.§"$9§(§!#4§);
            }
         }
         else
         {
            this.§"$9§(§1"K§);
         }
      }
      
      protected function §1#G§(param1:MouseEvent) : void
      {
         if(this.§%!A§ != §^#T§)
         {
            §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         }
         if(this.§]!§())
         {
            this.§"$9§(§[$"§);
         }
         else if(AngryBirdsBase.singleton.§="!§() == StateTournamentResults.STATE_NAME)
         {
            this.§"$9§(§=E§);
         }
         else
         {
            this.§"$9§(§"#U§);
         }
      }
      
      private function §+#0§(param1:String, param2:Boolean = true) : void
      {
         if(this.§%!A§ == param1)
         {
            return;
         }
         this.§%!A§ = param1;
         this.§&@§(param1);
         this.§;z§(false);
         this.§3>§.mcButtonsContainer.btnAvatar.visible = this.§%!A§ == §^#T§;
         this.§3>§.mcButtonsContainer.btnLeagueProfile.visible = this.§%!A§ == §`#s§;
         if(this.§%!A§ == §^#T§)
         {
            this.§`;§(§`]§(AngryBirdsBase.singleton.dataModel).§?#P§);
         }
         else
         {
            this.§`;§(false);
         }
         if(param2)
         {
            §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§9";§,[this.§%!A§],true);
         }
      }
      
      private function §&@§(param1:String) : void
      {
         this.§3>§.mcTop.gotoAndStop(param1);
         this.§3>§.mcMiddle.gotoAndStop(param1);
         this.§3>§.mcBottom.gotoAndStop(param1);
      }
      
      private function §?!q§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§'b§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§ !K§.§=!6§)
            {
               if(_loc4_.§>!0§.data && _loc3_ == _loc4_.§>!0§.data.userId)
               {
                  if(_loc4_.§>!0§ is §&#e§)
                  {
                     §&#e§(_loc4_.§>!0§).setCanSendGift(false,true);
                  }
                  §"!F§.§ "D§.§<$$§(_loc4_.§>!0§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §#y§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§#$=§ == param1)
         {
            return;
         }
         §?!T§.log("Changing state");
         this.§#$=§ = param1;
         switch(this.§#$=§)
         {
            case § #Y§:
               §?!T§.log("Info state");
               this.§9#o§();
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§3>§.mcButtonsContainer.btnInfo.enabled = true;
               this.§[$=§ = true;
               break;
            case §4c§:
            case §1b§:
            case §`!%§:
               §?!T§.log("None state");
               this.§"#&§();
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§3>§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case § y§:
               §?!T§.log("Play state");
               this.§9#o§();
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§3>§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§3>§.mcButtonsContainer.btnInfo.enabled = true;
               this.§[$=§ = false;
         }
         (§!#A§.§>q§ as §-#+§).§=$8§(this.§#$=§);
      }
      
      public function §7!r§() : void
      {
         if(§!#&§.§`"a§)
         {
            MovieClip(this.§3>§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§3>§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§4"A§,[§!#&§.§`"a§],true);
      }
      
      public function §-!r§(param1:String) : void
      {
         this.§3>§.mcButtonsContainer.btnLeagueSettings.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnLeagueSettings.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnLeagueSettings.mouseEnabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnAvatar.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnAvatar.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnLeagueProfile.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnLeagueProfile.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnLeagueProfile.mouseEnabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnInvite.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnInvite.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnGift.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnGift.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnShop.enabled = param1 != §4c§;
         this.§3>§.mcButtonsContainer.btnShop.alpha = param1 == §4c§ ? 0.5 : 1;
         this.§3>§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §4c§;
      }
      
      private function §?!Y§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§"#8§));
      }
      
      private function §;#;§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+#J§(§%"!§.NORMAL,§^#o§.§#!K§));
      }
      
      private function §;!#§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§ V§));
      }
      
      private function §2g§(param1:§`$<§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         § "8§.§ "§("updateSessionToken",§5h§.§0#,§);
         § "8§.§ "§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName,param1.data.userId,§9N§.§^"?§(§9N§.§ "^§));
         §?!=§.§3!q§().§ ##§(1,"SIDEBAR");
      }
      
      private function § !@§(param1:§`$<§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         § "8§.§ "§("updateSessionToken",§5h§.§0#,§);
         § "8§.§ "§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName,§-!t§.§ "D§.§2"N§,param1.data.userId,§9N§.§^"?§(§9N§.§>^§));
      }
      
      private function §-"E§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§^"V§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§6>§)
         {
            this.§6>§.push(param1);
         }
      }
      
      private function §2"'§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§,";§ = new §,";§();
         _loc2_.§3q§([param1]);
         if(§-!t§.§ "D§.§;"_§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §-!t§.§ "D§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §?!=§.§3!q§().§!#K§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,param1,§-!t§.§ "D§.§;"_§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §4!0§.§7!s§.length)
         {
            if(§4!0§.§7!s§[_loc3_].userId == param1)
            {
               §4!0§.§7!s§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §4!0§.§9! §.push(param1);
         var _loc4_:int = this.§ !K§.offset + this.§ !K§.§0#?§ / 2;
         this.§<f§(this.§;v§,null,_loc4_);
      }
      
      private function §>#p§(param1:§`$<§) : void
      {
         § "8§.addCallback("invitationBatchSent",this.§"q§);
         § "8§.addCallback("invitationBatchCancel",this.§,t§);
         dispatchEvent(new §`$<§(§`$<§.§ V§,param1.data as §7>§));
      }
      
      private function §"q§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         § "8§.§+#R§("invitationBatchSent",this.§"q§);
         § "8§.§+#R§("invitationBatchCancel",this.§,t§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§ !K§.§0#?§ / 2);
            _loc3_ = this.§ !K§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§4#3§.§&#_§().data.length)
            {
               if(this.§4#3§.§&#_§().data[_loc4_].userId == param1)
               {
                  this.§4#3§.§&#_§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §<#c§.push(param1);
            this.§?p§();
            this.§ !K§.refresh();
            this.§,"G§(_loc3_);
            this.§,#g§();
         }
      }
      
      private function §,t§() : void
      {
         § "8§.§+#R§("invitationBatchSent",this.§"q§);
         § "8§.§+#R§("invitationBatchCancel",this.§,t§);
      }
      
      private function §6n§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§use §));
         this.§+h§(false);
      }
      
      private function §>#g§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§?n§));
      }
      
      private function §<#R§(param1:MouseEvent) : void
      {
         dispatchEvent(new §`$<§(§`$<§.§4#G§));
         this.§7!r§();
      }
      
      private function §;"9§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         if(this.§[$=§)
         {
            §?!T§.log(§`$<§.§@"^§);
            dispatchEvent(new §`$<§(§`$<§.§@"^§));
         }
         else
         {
            §?!T§.log(§`$<§.§;!@§);
            dispatchEvent(new §`$<§(§`$<§.§;!@§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§%T§ = Math.max(param1,330);
         this.§3>§.mcMiddle.height = this.§%T§ - this.§3>§.mcTop.height - this.§3>§.mcBottom.height;
         this.§3>§.mcBottom.y = this.§%T§ - this.§3>§.mcBottom.height;
         this.§3>§.mcButtonsContainer.y = this.§%T§ - this.§3>§.mcButtonsContainer.height + 7;
         this.§ !K§.scrollerSprite.y = 104;
         this.§ !K§.setWidth(this.§%T§ - 255);
         this.§,#g§();
      }
      
      private function §2!$§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Shop_Selection",§!#&§.§6#h§);
         this.scroll(-this.§ !K§.§0#?§);
      }
      
      private function §4!Y§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Shop_Selection",§!#&§.§6#h§);
         this.scroll(this.§ !K§.§0#?§);
      }
      
      private function §&#E§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         dispatchEvent(new §`$<§(§`$<§.§3"e§));
      }
      
      public function §<f§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §"#U§:
               if(!this.§@#O§)
               {
                  this.§@#O§ = new Object();
                  this.§@#O§.title = "Tournament scores";
                  this.§@#O§.data = [];
                  this.§@#O§.standings = [];
               }
               if(param2)
               {
                  this.§@#O§.standings = param2;
                  this.§9#o§();
               }
               if(§4!I§)
               {
                  this.§@#O§.data = this.§@#O§.standings.concat(this.§[$#§());
                  this.§@#O§.data = this.§@#O§.data.concat(this.§^#b§());
               }
               else
               {
                  this.§@#O§.data = this.§@#O§.standings.concat(new §`!!§(""));
               }
               _loc4_ = this.§&!§() == §^#T§;
               break;
            case §=E§:
               if(!this.§#[§)
               {
                  this.§#[§ = new Object();
                  this.§#[§.title = "Previous scores";
               }
               this.§#[§.standings = param2;
               if(§;$-§.§ "D§.active && (§;$-§.§ "D§.§&,§ || §;$-§.§ "D§.§=#s§))
               {
                  _loc4_ = this.§&!§() == §^#T§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§9#o§();
               break;
            case §1"K§:
               if(!this.§!!U§)
               {
                  this.§!!U§ = new Object();
                  this.§!!U§.leagueId = "NONE";
               }
               if(§;$-§.§ "D§.§^"Z§())
               {
                  this.§!!U§.leagueId = §;$-§.§ "D§.§^"Z§().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§!!U§.standings = param2;
               if(this.§&!§() == §`#s§ && this.§;v§ != §6D§)
               {
                  _loc4_ = true;
               }
               break;
            case §!#4§:
               if(!this.§!L§)
               {
                  this.§!L§ = new Object();
                  this.§!L§.leagueId = "NONE";
               }
               if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.l)
               {
                  _loc5_ = §;$-§.§ "D§.§=#s§.l;
                  this.§!L§.leagueId = _loc5_.pli.tn;
               }
               this.§!L§.standings = param2;
               _loc4_ = this.§&!§() == §`#s§;
               this.§9#o§();
               break;
            case § k§:
               if(!this.§>"V§)
               {
                  this.§>"V§ = new Object();
                  this.§>"V§.title = "";
                  this.§>"V§.leagueId = "NONE";
               }
               if(§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l && §;$-§.§ "D§.§&,§.l.p)
               {
                  _loc6_ = §;$-§.§ "D§.§&,§.l;
                  this.§>"V§.title = _loc6_.pli.ln;
                  this.§>"V§.leagueId = _loc6_.pli.tn;
               }
               this.§>"V§.standings = param2;
               _loc4_ = Boolean(this.§&!§() == §`#s§ && StateTournamentResults.§>#K§ == StateTournamentResults.§2!?§);
               this.§9#o§();
               break;
            case §[#[§:
               if(!this.§8#,§)
               {
                  this.§8#,§ = new Object();
                  this.§8#,§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§8#,§.standings = [];
               }
               else
               {
                  this.§8#,§.standings = param2;
                  if(!§4!I§)
                  {
                     this.§8#,§.standings = this.§8#,§.standings.concat(new §`!!§(""));
                  }
                  this.§9#o§();
               }
               _loc4_ = true;
               break;
            case §[$"§:
               if(!this.§3#w§)
               {
                  this.§3#w§ = new Object();
                  this.§3#w§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§'!v§(param3);
                  return;
               }
               if(!§4!I§)
               {
                  param2 = param2.concat(new §`!!§(""));
               }
               else
               {
                  if(this.§<s§.§7#A§)
                  {
                     param2 = param2.concat(this.§9#S§());
                  }
                  param2 = param2.concat(this.§^#b§());
               }
               this.§3#w§.standings = param2;
               _loc4_ = this.§&!§() == §^#T§;
               this.§9#o§();
               break;
            case §6D§:
               if(!this.§ !!§)
               {
                  this.§ !!§ = new Object();
                  this.§ !!§.leagueId = "NONE";
                  this.§ !!§.loadingScores = false;
               }
               if(§;$-§.§ "D§.§^"Z§())
               {
                  this.§ !!§.leagueId = §;$-§.§ "D§.§^"Z§().id;
               }
               if(!param2)
               {
                  this.§ !!§.standings = [];
                  this.§4L§();
                  this.§ !!§.loadingScores = true;
                  return;
               }
               this.§ !!§.standings = param2;
               this.§ !!§.loadingScores = false;
               _loc4_ = this.§&!§() == §`#s§;
               this.§9#o§();
               break;
            case §+!q§:
            case §+"o§:
               if(this.§,#B§)
               {
                  this.§,#B§.removeEventListener(§0!L§.§@>§,this.§,!a§);
                  this.§,#B§ = null;
               }
               if(this.§<s§)
               {
                  this.§<s§.removeEventListener(§0!L§.§@>§,this.§>M§);
                  this.§<s§ = null;
               }
               _loc4_ = true;
               this.§"#&§();
         }
         if(_loc4_)
         {
            this.§"$9§(param1,param3);
         }
      }
      
      public function §"$9§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§2#<§ = null;
         this.§4!7§.visible = false;
         this.§7"$§.visible = false;
         switch(param1)
         {
            case §"#U§:
               this.§+#0§(§^#T§);
               if(this.§@#O§)
               {
                  this.§7"$§.txtTitle.text = this.§@#O§.title;
                  this.§7"$§.visible = true;
                  this.§7"$§.y = §+!r§;
                  this.§<!r§ = this.§@#O§.data;
               }
               else
               {
                  this.§<!r§ = [];
               }
               this.§";§ = "";
               this.§0m§(§;$-§.§ "D§.active,false);
               this.§%#4§(false);
               this.§?p§();
               this.§#y§(§ #Y§);
               this.§#"R§(false);
               break;
            case §=E§:
               this.§+#0§(§^#T§);
               if(this.§#[§)
               {
                  this.§7"$§.txtTitle.text = this.§#[§.title;
                  this.§7"$§.visible = true;
                  this.§7"$§.y = §+!r§;
                  this.§<!r§ = this.§#[§.standings;
               }
               else
               {
                  this.§<!r§ = [];
               }
               this.§";§ = "";
               _loc3_ = §;$-§.§ "D§.active && (§;$-§.§ "D§.§&,§ || §;$-§.§ "D§.§=#s§);
               this.§0m§(_loc3_,false);
               this.§%#4§(false);
               this.§?p§();
               this.§#y§(§ #Y§);
               this.§#"R§(false);
               break;
            case §1"K§:
               this.§+#0§(§`#s§);
               this.§#"R§(false);
               if(this.§!!U§)
               {
                  this.§4!7§.visible = true;
                  this.§4!7§.gotoAndStop(this.§!!U§.leagueId);
                  this.§<!r§ = this.§!!U§.standings;
                  this.§%#4§(this.§!!U§.standings != null && this.§!!U§.standings.length == 0);
               }
               else
               {
                  this.§<!r§ = [];
                  this.§%#4§(false);
               }
               this.§";§ = "League";
               this.§0m§(true,true);
               this.§?p§();
               this.§#y§(§ #Y§);
               break;
            case §!#4§:
               this.§+#0§(§`#s§);
               this.§#"R§(false);
               if(this.§!L§)
               {
                  this.§4!7§.visible = true;
                  this.§4!7§.gotoAndStop(this.§!L§.leagueId);
                  this.§<!r§ = this.§!L§.standings;
                  this.§%#4§(this.§!L§.standings != null && this.§!L§.standings.length == 0);
               }
               else
               {
                  this.§<!r§ = [];
                  this.§%#4§(true);
               }
               this.§";§ = "League";
               this.§0m§(true,true);
               this.§?p§();
               this.§#y§(§ #Y§);
               break;
            case § k§:
               this.§+#0§(§`#s§);
               this.§#"R§(false);
               if(this.§>"V§)
               {
                  this.§4!7§.visible = true;
                  this.§4!7§.gotoAndStop(this.§>"V§.leagueId);
                  this.§<!r§ = this.§>"V§.standings;
                  this.§%#4§(this.§>"V§.standings != null && this.§>"V§.standings.length == 0);
               }
               else
               {
                  this.§<!r§ = [];
                  this.§%#4§(true);
               }
               this.§";§ = "League";
               this.§0m§(true,true);
               this.§?p§();
               this.§#y§(§ #Y§);
               break;
            case §[#[§:
               this.§+#0§(§^#T§);
               this.§7"$§.txtTitle.text = this.§8#,§.title;
               this.§7"$§.visible = true;
               this.§7"$§.y = §2+§;
               this.§";§ = "";
               this.§0m§(false,false);
               this.§<!r§ = this.§8#,§.standings;
               this.§?p§();
               this.§#y§(§ #Y§);
               this.§%#4§(false);
               this.§#"R§(this.§8#,§.standings.length == 0);
               break;
            case §[$"§:
               this.§+#0§(§^#T§);
               if(this.§3#w§)
               {
                  this.§7"$§.txtTitle.text = this.§3#w§.title;
                  this.§7"$§.visible = true;
                  if(this.§<s§.§7#A§)
                  {
                     this.§7"$§.y = §+!r§;
                  }
                  else
                  {
                     this.§7"$§.y = §2+§;
                  }
                  this.§";§ = this.mLevelManager.currentLevel;
                  this.§<!r§ = this.§3#w§.standings;
                  this.§?p§();
                  this.§%#4§(false);
                  this.§#"R§(this.§3#w§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§3#w§.standings.length)
                     {
                        if(this.§3#w§.standings[_loc4_] is §4"n§ && this.§3#w§.standings[_loc4_].userId == this.§[#n§)
                        {
                           param2 = this.§3#w§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§<!r§ = [];
                  this.§%#4§(false);
                  this.§#"R§(false);
               }
               break;
            case §6D§:
               this.§+#0§(§`#s§);
               if(this.§ !!§)
               {
                  this.§";§ = this.mLevelManager.currentLevel;
                  this.§4!7§.visible = true;
                  this.§4!7§.gotoAndStop(this.§ !!§.leagueId);
                  this.§<!r§ = this.§ !!§.standings;
                  this.§%#4§(!this.§ !!§.loadingScores && this.§ !!§.standings.length == 0);
                  this.§#"R§(this.§ !!§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§ !!§.standings)
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
                  this.§<!r§ = [];
                  this.§%#4§(false);
                  this.§#"R§(false);
               }
               this.§0m§(true,true);
               this.§?p§();
               break;
            case §+!q§:
               this.§0m§(§;$-§.§ "D§.active,this.§&!§() == §`#s§);
               this.§<!r§ = [];
               this.§?p§();
               this.§#y§(§ #Y§);
               this.§%#4§(false);
               this.§#"R§(true);
               break;
            case §+"o§:
               this.§+#0§(§^#T§);
               this.§0m§(false,false);
               this.§<!r§ = [];
               this.§?p§();
               this.§#y§(§ #Y§);
               this.§%#4§(false);
               this.§#"R§(true);
         }
         this.§,"G§(param2);
         this.§,#g§();
         if(this.§;v§ != param1)
         {
            this.§;v§ = param1;
            dispatchEvent(new §`$<§(§`$<§.§^"v§,{"tab":this.§%!A§}));
         }
      }
      
      private function §%#4§(param1:Boolean) : void
      {
         if(!§-!t§.§ "D§.§;"_§)
         {
            param1 = false;
         }
         this.§3>§.mcNotInLeague.visible = param1;
         this.§3>§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§3>§.NotInLeagueBG.visible = param1;
         this.§3>§.mcRankingBadgeBg.visible = param1;
         if(param1)
         {
            if(§;$-§.§ "D§.§^"Z§())
            {
               this.§3>§.mcNotInLeague.LeagueName.text = §;$-§.§ "D§.§^"Z§().name;
               this.§3>§.mcNotInLeague.LeaguePrize.text = §;$-§.§ "D§.§^"Z§().reward.toString();
            }
         }
      }
      
      private function §,"G§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<!r§.length)
            {
               if(this.§<!r§[_loc5_].userId == this.§[#n§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§ !K§.offset;
         var _loc3_:int = Math.floor(this.§ !K§.§0#?§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§ !K§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§ !K§.scroll(param1);
            this.§,#g§();
         }
      }
      
      private function §,#g§() : void
      {
         var _loc1_:* = this.§ !K§.offset != 0;
         var _loc2_:* = this.§ !K§.offset != this.§ !K§.data.length - this.§ !K§.§0#?§;
         this.§3>§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§3>§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §1J§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§4"n§ = null;
         var _loc9_:int = 0;
         if(!this.§<s§ || !this.§01§ || this.§";§ != param1)
         {
            return {};
         }
         this.§^"V§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§0$0§ = new Object();
         this.§0$0§.originalRank = 0;
         this.§0$0§.rankAfterUpdate = 0;
         this.§0$0§.leagueOriginalRank = 0;
         this.§0$0§.leagueRankAfterUpdate = 0;
         if(this.§,#B§)
         {
            this.§0$0§.leagueOriginalRank = this.§,#B§.§;#%§(this.§[#n§);
            this.§0$0§.leagueRankAfterUpdate = this.§,#B§.§1J§(param2,param3,param4,_loc7_);
            this.§<f§(§6D§,this.§,#B§.data,this.§0$0§.leagueRankAfterUpdate);
         }
         this.§0$0§.originalRank = this.§<s§.§;#%§(this.§[#n§);
         this.§0$0§.rankAfterUpdate = this.§<s§.§1J§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§^"V§.push(_loc8_);
            _loc9_ = _loc8_.rank - 1;
            §`"5§.§@!]§(_loc9_.toString());
         }
         this.§<f§(§[$"§,this.§01§,this.§0$0§.rankAfterUpdate);
         return this.§0$0§;
      }
      
      public function §^7§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0 || this.§3>§.mcButtonsContainer.btnLeagueSettings.visible)
         {
            this.§3>§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§3>§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§3>§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§3>§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = § "b§.§-j§(param1);
            this.§3>§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§3>§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§3>§.mcButtonsContainer.txtInboxItemCount.x + this.§3>§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §?p§() : void
      {
         var _loc4_:§3!3§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc1_:Dictionary = §"!F§.§ "D§.§>"Z§();
         var _loc2_:Array = this.§<!r§.concat();
         var _loc3_:int = this.§<!r§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§<!r§[_loc3_];
            _loc5_ = false;
            for each(_loc6_ in _loc1_)
            {
               if(_loc6_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
                  _loc5_ = true;
               }
            }
            for each(_loc7_ in §<#c§)
            {
               if(_loc7_ == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§<!r§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§ !K§.data = _loc2_;
      }
      
      public function §-"K§() : String
      {
         return "Friendsbar";
      }
      
      private function §+h§(param1:Boolean) : void
      {
         if(§4"W§.§ "D§.§^$!§ && §4"W§.§ "D§.§^$!§.§!o§(§@#m§.§70§) && param1)
         {
            this.§3>§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§3>§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§3>§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§3>§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §9"E§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §<#c§.push(_loc2_.id);
         }
         this.§?p§();
         this.§ !K§.refresh();
         this.§,#g§();
      }
      
      public function §`'§() : void
      {
         var _loc1_:Boolean = §`]§(AngryBirdsBase.singleton.dataModel).§^#h§.length > 0 || §`]§(AngryBirdsBase.singleton.dataModel).§!"z§.length > 0;
         this.§3>§.mcButtonsContainer.mcNewTagShop.visible = _loc1_;
         MovieClip(this.§3>§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         var _loc2_:§`]§ = §`]§(AngryBirdsBase.singleton.dataModel);
         this.§3>§.mcButtonsContainer.Tag_Sale_Shop.visible = _loc2_.§9q§ || _loc2_.§7!Z§ || _loc2_.§@!$§;
         MovieClip(this.§3>§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         var _loc3_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc3_)
         {
            _loc3_.§2",§.§7$1§();
         }
      }
      
      public function §`;§(param1:Boolean = false) : void
      {
         this.§3>§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§%!A§ == §^#T§;
         this.§3>§.mcButtonsContainer.Tag_Sale_Avatar.visible = §`]§(AngryBirdsBase.singleton.dataModel).§,j§ && this.§%!A§ == §^#T§;
         MovieClip(this.§3>§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§3>§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§3>§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §0m§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(param2)
         {
            this.§&@§(this.§%!A§);
            this.§;z§(this.§%!A§ == §`#s§);
         }
         else
         {
            this.§&@§(§^#T§);
            this.§;z§(false);
         }
      }
      
      public function §&!§() : String
      {
         return this.§%!A§;
      }
      
      public function §'!v§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§<s§ = null;
         if(_loc2_)
         {
            this.§<s§ = this.§4#3§.§#"h§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§-"9§(),this.mLevelManager.§-"9§());
            if(this.§<s§.§"$1§)
            {
               this.§<s§.addEventListener(§0!L§.§@>§,this.§>M§);
            }
            else
            {
               this.§>M§(null,param1);
            }
         }
      }
      
      private function §>M§(param1:§0!L§, param2:int = -1) : void
      {
         var _loc4_:§4"n§ = null;
         var _loc5_:Object = null;
         this.§<s§.removeEventListener(§0!L§.§@>§,this.§>M§);
         this.§01§ = new Array();
         §4!0§.§>"t§ = new Vector.<§4"n§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<s§.data.length)
         {
            if(_loc4_ = this.§<s§.data[_loc3_])
            {
               _loc4_.§8!-§ = this.§<s§.§7#A§;
               if(_loc4_.§9!r§)
               {
                  if(§4!0§.§9! §.indexOf(_loc4_.userId) == -1)
                  {
                     §4!0§.§>"t§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§^"V§)
                  {
                     for each(_loc5_ in this.§^"V§)
                     {
                        if(_loc5_.userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§01§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§01§.length == 0)
         {
            _loc4_ = new §4"n§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName,null,0,0,0,1,null,0,null);
            this.§01§.push(_loc4_);
            this.§<s§.§@Y§(_loc4_);
         }
         else if(§9N§.§^"?§(§9N§.§>^§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§01§.length)
            {
               this.§01§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         this.§<f§(§[$"§,this.§01§,param2);
      }
      
      public function §4L§() : void
      {
         if(this.mLevelManager.§-"9§() && §;$-§.§ "D§.active)
         {
            if(!this.§,#B§ || !this.§,#B§.§"$1§)
            {
               this.§,#B§ = §;$-§.§ "D§.§#"h§(this.mLevelManager.currentLevel,true);
               if(this.§,#B§.§"$1§)
               {
                  this.§,#B§.addEventListener(§0!L§.§@>§,this.§,!a§);
               }
               else
               {
                  this.§,!a§(null);
               }
            }
         }
      }
      
      private function §,!a§(param1:§0!L§) : void
      {
         this.§,#B§.removeEventListener(§0!L§.§@>§,this.§,!a§);
         this.§<f§(§6D§,this.§,#B§.data);
      }
      
      public function §]!§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§="!§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §6#K§.STATE_NAME || _loc1_ == §+!_§.STATE_NAME || _loc1_ == §#p§.STATE_NAME || _loc1_ == §"!u§.STATE_NAME || _loc1_ == §[j§.STATE_NAME || _loc1_ == §>!k§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §'z§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§!!U§ && this.§!!U§.standings)
         {
            for each(_loc3_ in this.§!!U§.standings)
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
         if(this.§ !!§ && this.§ !!§.standings)
         {
            for each(_loc3_ in this.§ !!§.standings)
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
         if(this.§!L§ && this.§!L§.standings)
         {
            for each(_loc3_ in this.§!L§.standings)
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
         if(this.§>"V§ && this.§>"V§.standings)
         {
            for each(_loc3_ in this.§>"V§.standings)
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
         this.§"$9§(this.§;v§);
      }
      
      private function §#"R§(param1:Boolean) : void
      {
         this.§3>§.mcLoadingSpinner.visible = param1;
      }
      
      public function §!"w§() : §4!0§
      {
         if(this.§;v§ == §6D§)
         {
            return this.§,#B§;
         }
         return this.§<s§;
      }
      
      private function §^#b§() : Array
      {
         var _loc4_:§1#]§ = null;
         var _loc1_:Vector.<§1#]§> = §%!?§.§?!x§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §4!0§.§?#C§)
            {
               break;
            }
            _loc2_.push(new §7>§(_loc4_.userID,_loc4_.name,_loc4_.§#S§()));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §[$#§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §4!0§.§7!s§.length && _loc2_ < §4!0§.§^"B§)
         {
            if(§4!0§.§9! §.indexOf(§4!0§.§7!s§[_loc3_].userId) == -1)
            {
               _loc1_.push(§4!0§.§7!s§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §9#S§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §4!0§.§>"t§.length && _loc2_ < §4!0§.§^"B§)
         {
            if(§4!0§.§9! §.indexOf(§4!0§.§>"t§[_loc3_].userId) == -1)
            {
               _loc1_.push(§4!0§.§>"t§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §6'§() : int
      {
         return this.§;v§;
      }
      
      public function levelStarted() : void
      {
         this.§^"V§ = new Array();
         this.§6>§ = new Array();
         this.§0$0§ = null;
      }
      
      private function §9#o§() : void
      {
         if(!this.§3>§.hasEventListener(MouseEvent.CLICK))
         {
            this.§3>§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§;"9§);
         }
      }
      
      private function §"#&§() : void
      {
         this.§3>§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§;"9§);
      }
      
      public function §!"f§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§6>§)
         {
            for each(_loc2_ in this.§6>§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §`#X§() : Array
      {
         return this.§^"V§;
      }
      
      public function §##T§(param1:Boolean) : int
      {
         if(this.§0$0§)
         {
            if(!param1)
            {
               return this.§0$0§.rankAfterUpdate;
            }
            if(this.§0$0§.originalRank > this.§0$0§.rankAfterUpdate)
            {
               return this.§0$0§.rankAfterUpdate;
            }
         }
         return -1;
      }
   }
}
