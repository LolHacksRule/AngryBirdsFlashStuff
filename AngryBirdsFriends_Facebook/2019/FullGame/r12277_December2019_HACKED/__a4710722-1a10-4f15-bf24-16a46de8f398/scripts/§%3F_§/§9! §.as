package §?_§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §#!G§.§-#]§;
   import §#!G§.§?$,§;
   import §#"3§.§4!h§;
   import §'q§.GiftInboxPopup;
   import §+!n§.§+!p§;
   import §+#X§.FeatureRemovalWarningBirdomatic;
   import §-"S§.§>#G§;
   import §0"M§.§>$%§;
   import §1!1§.§<#M§;
   import §2E§.§'@§;
   import §2E§.§6#T§;
   import §2E§.§]!P§;
   import §3#q§.§+#%§;
   import §3#q§.§8#'§;
   import §3#q§.§@!t§;
   import §3#t§.§51§;
   import §3#t§.§>!H§;
   import §4#$§.§5"L§;
   import §4$A§.§=$5§;
   import §7"1§.§="A§;
   import §8!G§.§<$9§;
   import §8#^§.§ !w§;
   import §8#^§.§-B§;
   import §9!6§.§## §;
   import §>#Y§.§!",§;
   import §>#Y§.§!#?§;
   import §>#Y§.§!$$§;
   import §>#Y§.§!+§;
   import §>#Y§.§'#z§;
   import §>#Y§.§,#b§;
   import §>#Y§.§1N§;
   import §>#Y§.§6"k§;
   import §>#Y§.§]!H§;
   import §?o§.§?"m§;
   import §@!_§.§ !G§;
   import §[#v§.§>#P§;
   import §[#v§.§?"R§;
   import §[#v§.StateTournamentResults;
   import §[#v§.§]#<§;
   import §]!4§.§=#c§;
   import §]M§.§=!a§;
   import §^!b§.§5"c§;
   import §^#?§.§#!T§;
   import §^#?§.§2R§;
   import §^#?§.§?#,§;
   import §^1§.§%"`§;
   import §^1§.§-§;
   import §^1§.StatePlay;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §9! § extends Sprite implements §=$5§
   {
      
      public static var §=!?§:Boolean = false;
      
      public static const §4$D§:String = "SidebarButtonStateInfo";
      
      public static const § "O§:String = "SidebarButtonStatePlay";
      
      public static const §@v§:String = "SidebarButtonStateNone";
      
      public static const §4!-§:String = "SidebarButtonStateNoTutorial";
      
      public static const §["l§:String = "SidebarButtonStatePause";
      
      public static const §?<§:int = 0;
      
      public static const §6$@§:int = 1;
      
      public static const §`"x§:int = 2;
      
      public static const §>$>§:int = 3;
      
      public static const §=$=§:int = 4;
      
      public static const §[Q§:int = 5;
      
      public static const § c§:int = 6;
      
      public static const §-x§:int = 7;
      
      public static const §9!o§:int = 8;
      
      public static const §5#O§:int = 9;
      
      public static const §[@§:int = 10;
      
      public static const §8$-§:int = 11;
      
      private static const §#!"§:int = 40;
      
      private static const §#>§:int = 20;
      
      public static var §`!H§:Array = [];
      
      public static const §8#@§:String = "Friends";
      
      public static const §"!"§:String = "League";
       
      
      private var §3&§:int;
      
      private var §^$%§:Object;
      
      private var §'"E§:Object;
      
      private var §1"D§:Object;
      
      private var §'#P§:Object;
      
      private var §!!m§:Object;
      
      private var §%!k§:Object;
      
      private var §2"1§:Object;
      
      private var § #>§:Object;
      
      private var §>$§:§@!t§;
      
      private var §8$!§:Array;
      
      private var §7$D§:MovieClip;
      
      private var §2"!§:MovieClip;
      
      private var §^"z§:MovieClip;
      
      private var §1$$§:String;
      
      private var §3"U§:§>!H§;
      
      private var §&!W§:String = "";
      
      private var §^!X§:§51§;
      
      private var §9!%§:Array;
      
      private var §%_§:§51§;
      
      private var §6";§:Boolean;
      
      private var §=!S§:String;
      
      private var §'H§:String;
      
      private var §%!u§:Boolean;
      
      private var §%!;§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §^# §:Number;
      
      private var mLevelManager:§?"m§;
      
      private var §^"k§:Array;
      
      private var §+!?§:Array;
      
      private var §&!Y§:Object;
      
      public function §9! §(param1:§>!H§, param2:String, param3:String, param4:§?"m§)
      {
         this.§^"k§ = [];
         this.§+!?§ = [];
         super();
         §+#%§.§!!f§ = param3;
         this.§'H§ = param3;
         this.§3"U§ = param1;
         this.§1$$§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§ p§(false,false);
         this.§#"!§(§8#@§);
      }
      
      private function init() : void
      {
         this.§2"!§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§2"!§.tabChildren = false;
         addChild(this.§2"!§);
         MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         MovieClip(this.§2"!§.mcOverlappingTournaments).visible = false;
         this.§!!z§(false);
         this.§>$§ = new §@!t§(330,180,[],§+#%§,2,15);
         addChild(this.§>$§.scrollerSprite);
         this.§>$§.scrollerSprite.x = 180 + 7;
         this.§>$§.scrollerSprite.rotation = 90;
         this.§2"!§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§+y§);
         this.§2"!§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§`B§);
         this.§2"!§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§%§);
         this.§2"!§.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.§!#_§);
         this.§2"!§.mcButtonsContainer.btnShopLargeSale.addEventListener(MouseEvent.CLICK,this.§!#_§);
         this.§2"!§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§%"O§);
         this.§2"!§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§&#2§);
         this.§2"!§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§!#_§);
         this.§2"!§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§4#e§);
         this.§2"!§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§"p§);
         this.§2"!§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§2"!§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§2"!§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§2"!§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§^"z§ = this.§2"!§.LeagueInfo as MovieClip;
         this.§^"z§.visible = false;
         this.§^"z§.addEventListener(MouseEvent.CLICK,this.§1!v§);
         this.§^"z§.buttonMode = true;
         this.§^"z§.useHandCursor = true;
         this.§^"z§.mouseChildren = false;
         this.§!d§(false);
         this.§>$§.scrollerSprite.addEventListener(§-B§.§+!l§,this.§=!!§);
         this.§>$§.scrollerSprite.addEventListener(§-B§.§'#%§,this.§8#8§);
         this.§>$§.scrollerSprite.addEventListener(§-B§.§!# §,this.§`"c§);
         this.§%#i§();
         this.§6";§ = true;
         this.§7$D§ = this.§2"!§.mcTitle as MovieClip;
         this.§7$D§.txtTitle.text = "";
         this.§7$D§.visible = false;
         this.§,&§(GiftInboxPopup.§6B§);
         this.§^#P§(true);
         this.§?!3§(§,#b§(AngryBirdsBase.singleton.dataModel).§`!6§);
         MovieClip(this.§2"!§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.§2"!§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.§!p§();
         §=#c§.addCallback("giftsSentToUsers",this.§4"?§);
         §=#c§.addCallback("challengeSentToUser",this.§3#=§);
         §=#c§.addCallback("bragCompleted",this.§?"p§);
         if(§?#,§.§3"1§.active)
         {
            this.§'"Y§(§"!"§);
            this.§#"!§(§"!"§,false);
         }
         else
         {
            this.§'"Y§(§8#@§);
            this.§#"!§(§8#@§,false);
         }
      }
      
      private function §9!3§() : Boolean
      {
         return this.§1"D§ != null && this.§3&§ == §`"x§ || this.§ #>§ != null && this.§3&§ == §9!o§ || this.§'#P§ != null && this.§3&§ == §>$>§ || this.§!!m§ != null && this.§3&§ == §=$=§;
      }
      
      private function §1!v§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§3#g§));
      }
      
      private function §!d§(param1:Boolean) : void
      {
         this.§2"!§.mcButtonsContainer.btnAvatar.visible = !param1;
         this.§2"!§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§2"!§.mcButtonsContainer.btnGift.visible = !param1;
         this.§2"!§.mcButtonsContainer.btnShop.visible = !param1;
         if(param1)
         {
            this.§2"!§.mcButtonsContainer.btnShopLarge.visible = !this.§9!'§();
            this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible = this.§9!'§();
         }
         else
         {
            this.§2"!§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible = false;
         }
         this.§^#P§(false);
         this.§,&§(GiftInboxPopup.§6B§);
      }
      
      private function §%#i§() : void
      {
         this.btnTabFriends = this.§2"!§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§2"!§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§25§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§>"Y§);
      }
      
      protected function §>"Y§(param1:MouseEvent) : void
      {
         if(this.§%!;§ != §"!"§)
         {
            §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         }
         if(this.§0!-§())
         {
            this.§ !A§(§9!o§);
         }
         else if(AngryBirdsBase.singleton.§1"Z§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§4!&§ == StateTournamentResults.§9!@§)
            {
               this.§ !A§(§=$=§);
            }
            else
            {
               this.§ !A§(§>$>§);
            }
         }
         else
         {
            this.§ !A§(§`"x§);
         }
      }
      
      protected function §25§(param1:MouseEvent) : void
      {
         if(this.§%!;§ != §8#@§)
         {
            §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         }
         if(this.§0!-§())
         {
            this.§ !A§(§ c§);
         }
         else if(AngryBirdsBase.singleton.§1"Z§() == StateTournamentResults.STATE_NAME)
         {
            this.§ !A§(§6$@§);
         }
         else
         {
            this.§ !A§(§?<§);
         }
      }
      
      private function §#"!§(param1:String, param2:Boolean = true) : void
      {
         if(this.§%!;§ == param1)
         {
            return;
         }
         this.§%!;§ = param1;
         this.§'"Y§(param1);
         this.§!d§(this.§%!;§ == §"!"§);
         if(this.§%!;§ == §8#@§)
         {
            this.§?!3§(§,#b§(AngryBirdsBase.singleton.dataModel).§`!6§);
         }
         else
         {
            this.§?!3§(false);
         }
         if(param2)
         {
            §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§ #w§,[this.§%!;§],true);
         }
         this.§!p§();
      }
      
      private function §'"Y§(param1:String) : void
      {
         this.§2"!§.mcTop.gotoAndStop(param1);
         this.§2"!§.mcMiddle.gotoAndStop(param1);
         this.§2"!§.mcBottom.gotoAndStop(param1);
      }
      
      private function §4"?§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§+#%§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§>$§.§ !8§)
            {
               if(_loc4_.§"#,§.data && _loc3_ == _loc4_.§"#,§.data.userId)
               {
                  if(_loc4_.§"#,§ is §8#'§)
                  {
                     §8#'§(_loc4_.§"#,§).setCanSendGift(false,true);
                  }
                  §6"k§.§3"1§.§`"5§(_loc4_.§"#,§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §]!q§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§=!S§ == param1)
         {
            return;
         }
         §4!h§.log("Changing state");
         this.§=!S§ = param1;
         switch(this.§=!S§)
         {
            case §4$D§:
               §4!h§.log("Info state");
               this.§]#l§();
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§2"!§.mcButtonsContainer.btnInfo.enabled = true;
               this.§6";§ = true;
               break;
            case §@v§:
            case §["l§:
            case §4!-§:
               §4!h§.log("None state");
               this.§ !v§();
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§2"!§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case § "O§:
               §4!h§.log("Play state");
               this.§]#l§();
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§2"!§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§2"!§.mcButtonsContainer.btnInfo.enabled = true;
               this.§6";§ = false;
         }
         (§+!p§.§;"-§ as §^"a§).§5o§(this.§=!S§);
      }
      
      public function §6!b§() : void
      {
         if(§4$4§.§%#u§)
         {
            MovieClip(this.§2"!§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§2"!§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§0"z§,[§4$4§.§%#u§],true);
      }
      
      public function §!##§(param1:String) : void
      {
         this.§2"!§.mcButtonsContainer.btnAvatar.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnAvatar.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShopLarge.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShopLarge.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnShopLarge.mouseEnabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShopLargeSale.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShopLargeSale.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnShopLargeSale.mouseEnabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnInvite.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnInvite.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnGift.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnGift.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShop.enabled = param1 != §@v§;
         this.§2"!§.mcButtonsContainer.btnShop.alpha = param1 == §@v§ ? 0.5 : 1;
         this.§2"!§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §@v§;
      }
      
      private function §%§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§1!=§));
         AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
      }
      
      private function §%"O§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§9#2§));
      }
      
      private function §8#8§(param1:§-B§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §=#c§.§<!t§("updateSessionToken",§="A§.§<!9§);
         §=#c§.§<!t§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName,param1.data.userId,§!#?§.§]!2§(§!#?§.§<y§));
         §]!P§.§1!7§().§1o§(1,"SIDEBAR");
      }
      
      private function §`"c§(param1:§-B§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §=#c§.§<!t§("updateSessionToken",§="A§.§<!9§);
         §=#c§.§<!t§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName,§5"L§.§3"1§.§1!>§,param1.data.userId,§!#?§.§]!2§(§!#?§.§1#E§));
      }
      
      private function §?"p§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§^"k§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§+!?§)
         {
            this.§+!?§.push(param1);
         }
      }
      
      private function §3#=§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§>$%§ = new §>$%§();
         _loc2_.§3#?§([param1]);
         if(§5"L§.§3"1§.§54§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §5"L§.§3"1§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §]!P§.§1!7§().§#!a§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,param1,§5"L§.§3"1§.§54§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §51§.§%[§.length)
         {
            if(§51§.§%[§[_loc3_].userId == param1)
            {
               §51§.§%[§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §51§.§8!a§.push(param1);
         var _loc4_:int = this.§>$§.offset + this.§>$§.§-"7§ / 2;
         this.§7!Z§(this.§3&§,null,_loc4_);
      }
      
      private function §=!!§(param1:§-B§) : void
      {
         §=#c§.addCallback("invitationBatchSent",this.§%$C§);
         §=#c§.addCallback("invitationBatchCancel",this.§[^§);
         dispatchEvent(new §-B§(§-B§.§9#2§,param1.data as §]!H§));
      }
      
      private function §%$C§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §=#c§.§`$ §("invitationBatchSent",this.§%$C§);
         §=#c§.§`$ §("invitationBatchCancel",this.§[^§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§>$§.§-"7§ / 2);
            _loc3_ = this.§>$§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§3"U§.§@"S§().data.length)
            {
               if(this.§3"U§.§@"S§().data[_loc4_].userId == param1)
               {
                  this.§3"U§.§@"S§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §`!H§.push(param1);
            this.§[e§();
            this.§>$§.refresh();
            this.§2g§(_loc3_);
            this.§-"A§();
         }
      }
      
      private function §[^§() : void
      {
         §=#c§.§`$ §("invitationBatchSent",this.§%$C§);
         §=#c§.§`$ §("invitationBatchCancel",this.§[^§);
      }
      
      private function §!#_§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§,#"§));
         this.§^#P§(false);
      }
      
      private function §4#e§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§%!>§));
      }
      
      private function §"p§(param1:MouseEvent) : void
      {
         dispatchEvent(new §-B§(§-B§.§&,§));
         this.§6!b§();
      }
      
      private function §[8§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         if(this.§6";§)
         {
            §4!h§.log(§-B§.§+n§);
            dispatchEvent(new §-B§(§-B§.§+n§));
         }
         else
         {
            §4!h§.log(§-B§.§2#R§);
            dispatchEvent(new §-B§(§-B§.§2#R§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§^# § = Math.max(param1,330);
         this.§2"!§.mcMiddle.height = this.§^# § - this.§2"!§.mcTop.height - this.§2"!§.mcBottom.height;
         this.§2"!§.mcBottom.y = this.§^# § - this.§2"!§.mcBottom.height;
         this.§2"!§.mcButtonsContainer.y = this.§^# § - this.§2"!§.mcButtonsContainer.height + 7;
         this.§>$§.scrollerSprite.y = 104;
         this.§>$§.setWidth(this.§^# § - 255);
         this.§-"A§();
      }
      
      private function §+y§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Shop_Selection",§4$4§.§1#l§);
         this.scroll(-this.§>$§.§-"7§);
      }
      
      private function §`B§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Shop_Selection",§4$4§.§1#l§);
         this.scroll(this.§>$§.§-"7§);
      }
      
      private function §&#2§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         dispatchEvent(new §-B§(§-B§.§]";§));
      }
      
      public function §7!Z§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §?<§:
               if(!this.§^$%§)
               {
                  this.§^$%§ = new Object();
                  this.§^$%§.title = "Tournament scores";
                  this.§^$%§.data = [];
                  this.§^$%§.standings = [];
               }
               if(param2)
               {
                  this.§^$%§.standings = param2;
                  this.§]#l§();
               }
               if(§=!?§)
               {
                  this.§^$%§.data = this.§^$%§.standings.concat(this.§#l§());
                  this.§^$%§.data = this.§^$%§.data.concat(this.§-!O§());
               }
               else
               {
                  this.§^$%§.data = this.§^$%§.standings.concat(new §!+§(""));
               }
               _loc4_ = this.§5!T§() == §8#@§;
               break;
            case §6$@§:
               if(!this.§'"E§)
               {
                  this.§'"E§ = new Object();
                  this.§'"E§.title = "Previous scores";
               }
               this.§'"E§.standings = param2;
               if(§?#,§.§3"1§.active && (§?#,§.§3"1§.§7$?§ || §?#,§.§3"1§.§4"a§))
               {
                  _loc4_ = this.§5!T§() == §8#@§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§]#l§();
               break;
            case §`"x§:
               if(!this.§1"D§)
               {
                  this.§1"D§ = new Object();
                  this.§1"D§.leagueId = "NONE";
               }
               if(§?#,§.§3"1§.currentLeague())
               {
                  this.§1"D§.leagueId = §?#,§.§3"1§.currentLeague().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§1"D§.standings = param2;
               if(this.§5!T§() == §"!"§ && this.§3&§ != §9!o§)
               {
                  _loc4_ = true;
                  break;
               }
               break;
            case §>$>§:
               if(!this.§'#P§)
               {
                  this.§'#P§ = new Object();
                  this.§'#P§.leagueId = "NONE";
               }
               if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.l)
               {
                  _loc5_ = §?#,§.§3"1§.§4"a§.l;
                  this.§'#P§.leagueId = _loc5_.pli.tn;
               }
               this.§'#P§.standings = param2;
               _loc4_ = this.§5!T§() == §"!"§;
               this.§]#l§();
               break;
            case §=$=§:
               if(!this.§!!m§)
               {
                  this.§!!m§ = new Object();
                  this.§!!m§.title = "";
                  this.§!!m§.leagueId = "NONE";
               }
               if(§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l && §?#,§.§3"1§.§7$?§.l.p)
               {
                  _loc6_ = §?#,§.§3"1§.§7$?§.l;
                  this.§!!m§.title = _loc6_.pli.ln;
                  this.§!!m§.leagueId = _loc6_.pli.tn;
               }
               this.§!!m§.standings = param2;
               _loc4_ = Boolean(this.§5!T§() == §"!"§ && StateTournamentResults.§4!&§ == StateTournamentResults.§9!@§);
               this.§]#l§();
               break;
            case §[Q§:
               if(!this.§%!k§)
               {
                  this.§%!k§ = new Object();
                  this.§%!k§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§%!k§.standings = [];
               }
               else
               {
                  this.§%!k§.standings = param2;
                  if(!§=!?§)
                  {
                     this.§%!k§.standings = this.§%!k§.standings.concat(new §!+§(""));
                  }
                  this.§]#l§();
               }
               _loc4_ = true;
               break;
            case § c§:
            case §-x§:
               if(!this.§2"1§)
               {
                  this.§2"1§ = new Object();
                  this.§2"1§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§`$'§(param3);
                  return;
               }
               if(!§=!?§)
               {
                  param2 = param2.concat(new §!+§(""));
               }
               else
               {
                  if(this.§^!X§.§`#U§)
                  {
                     param2 = param2.concat(this.§-#J§());
                  }
                  param2 = param2.concat(this.§-!O§());
               }
               this.§2"1§.standings = param2;
               _loc4_ = this.§5!T§() == §8#@§;
               this.§]#l§();
               break;
            case §9!o§:
               if(!this.§ #>§)
               {
                  this.§ #>§ = new Object();
                  this.§ #>§.leagueId = "NONE";
                  this.§ #>§.loadingScores = false;
               }
               if(§?#,§.§3"1§.currentLeague())
               {
                  this.§ #>§.leagueId = §?#,§.§3"1§.currentLeague().id;
               }
               if(!param2)
               {
                  this.§ #>§.standings = [];
                  this.§&!F§();
                  this.§ #>§.loadingScores = true;
                  return;
               }
               this.§ #>§.standings = param2;
               this.§ #>§.loadingScores = false;
               _loc4_ = this.§5!T§() == §"!"§;
               this.§]#l§();
               break;
            case §5#O§:
            case §[@§:
               if(this.§%_§)
               {
                  this.§%_§.removeEventListener(§ !w§.§'#y§,this.§^!Y§);
                  this.§%_§ = null;
               }
               if(this.§^!X§)
               {
                  this.§^!X§.removeEventListener(§ !w§.§'#y§,this.§+R§);
                  this.§^!X§ = null;
               }
               _loc4_ = true;
               this.§ !v§();
               break;
            case §8$-§:
               _loc4_ = true;
               this.§]#l§();
         }
         this.§2"!§.mcOverlappingTournaments.visible = param1 == §8$-§;
         if(_loc4_)
         {
            this.§ !A§(param1,param3);
         }
      }
      
      public function § !A§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§'#z§ = null;
         this.§^"z§.visible = false;
         this.§7$D§.visible = false;
         switch(param1)
         {
            case §?<§:
               this.§#"!§(§8#@§);
               if(this.§^$%§)
               {
                  this.§7$D§.txtTitle.text = this.§^$%§.title;
                  this.§7$D§.visible = true;
                  this.§7$D§.y = §#!"§;
                  this.§8$!§ = this.§^$%§.data;
               }
               else
               {
                  this.§8$!§ = [];
               }
               this.§&!W§ = "";
               this.§ p§(§?#,§.§3"1§.active,false);
               this.§!!z§(false);
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§`#g§(false);
               break;
            case §6$@§:
               this.§#"!§(§8#@§);
               if(this.§'"E§)
               {
                  this.§7$D§.txtTitle.text = this.§'"E§.title;
                  this.§7$D§.visible = true;
                  this.§7$D§.y = §#!"§;
                  this.§8$!§ = this.§'"E§.standings;
               }
               else
               {
                  this.§8$!§ = [];
               }
               this.§&!W§ = "";
               _loc3_ = §?#,§.§3"1§.active && (§?#,§.§3"1§.§7$?§ || §?#,§.§3"1§.§4"a§);
               this.§ p§(_loc3_,false);
               this.§!!z§(false);
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§`#g§(false);
               break;
            case §`"x§:
               this.§#"!§(§"!"§);
               this.§`#g§(false);
               if(this.§1"D§)
               {
                  this.§^"z§.visible = true;
                  this.§0"u§(this.§1"D§.leagueId);
                  this.§8$!§ = this.§1"D§.standings;
                  this.§!!z§(this.§1"D§.standings != null && this.§1"D§.standings.length == 0);
               }
               else
               {
                  this.§8$!§ = [];
                  this.§!!z§(false);
                  this.§0"u§(null);
               }
               this.§&!W§ = "League";
               this.§ p§(true,true);
               this.§[e§();
               this.§]!q§(§4$D§);
               break;
            case §>$>§:
               this.§#"!§(§"!"§);
               this.§`#g§(false);
               if(this.§'#P§)
               {
                  this.§^"z§.visible = true;
                  this.§0"u§(this.§'#P§.leagueId,true);
                  this.§8$!§ = this.§'#P§.standings;
                  this.§!!z§(this.§'#P§.standings != null && this.§'#P§.standings.length == 0);
               }
               else
               {
                  this.§8$!§ = [];
                  this.§!!z§(true);
                  this.§0"u§(null);
               }
               this.§&!W§ = "League";
               this.§ p§(true,true);
               this.§[e§();
               this.§]!q§(§4$D§);
               break;
            case §=$=§:
               this.§#"!§(§"!"§);
               this.§`#g§(false);
               if(this.§!!m§)
               {
                  this.§^"z§.visible = true;
                  this.§0"u§(this.§!!m§.leagueId,true);
                  this.§8$!§ = this.§!!m§.standings;
                  this.§!!z§(this.§!!m§.standings != null && this.§!!m§.standings.length == 0);
               }
               else
               {
                  this.§8$!§ = [];
                  this.§!!z§(true);
                  this.§0"u§(null);
               }
               this.§&!W§ = "League";
               this.§ p§(true,true);
               this.§[e§();
               this.§]!q§(§4$D§);
               break;
            case §[Q§:
               this.§#"!§(§8#@§);
               this.§7$D§.txtTitle.text = this.§%!k§.title;
               this.§7$D§.visible = true;
               this.§7$D§.y = §#>§;
               this.§&!W§ = "";
               this.§ p§(false,false);
               this.§8$!§ = this.§%!k§.standings;
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§!!z§(false);
               this.§`#g§(this.§%!k§.standings.length == 0);
               break;
            case § c§:
            case §-x§:
               if(param1 == § c§)
               {
                  this.§ p§(true,this.§5!T§() == §"!"§);
               }
               else
               {
                  this.§ p§(false,false);
               }
               this.§#"!§(§8#@§);
               if(this.§2"1§)
               {
                  this.§7$D§.txtTitle.text = this.§2"1§.title;
                  this.§7$D§.visible = true;
                  if(this.§^!X§.§`#U§)
                  {
                     this.§7$D§.y = §#!"§;
                  }
                  else
                  {
                     this.§7$D§.y = §#>§;
                  }
                  this.§&!W§ = this.mLevelManager.currentLevel;
                  this.§8$!§ = this.§2"1§.standings;
                  this.§[e§();
                  this.§!!z§(false);
                  this.§`#g§(this.§2"1§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§2"1§.standings.length)
                     {
                        if(this.§2"1§.standings[_loc4_] is §!$$§ && this.§2"1§.standings[_loc4_].userId == this.§'H§)
                        {
                           param2 = this.§2"1§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§8$!§ = [];
                  this.§!!z§(false);
                  this.§`#g§(false);
               }
               break;
            case §9!o§:
               this.§#"!§(§"!"§);
               if(this.§ #>§)
               {
                  this.§&!W§ = this.mLevelManager.currentLevel;
                  this.§^"z§.visible = true;
                  this.§0"u§(this.§ #>§.leagueId);
                  this.§8$!§ = this.§ #>§.standings;
                  this.§!!z§(!this.§ #>§.loadingScores && this.§ #>§.standings.length == 0);
                  this.§`#g§(this.§ #>§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§ #>§.standings)
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
                  this.§8$!§ = [];
                  this.§!!z§(false);
                  this.§`#g§(false);
                  this.§0"u§(null);
               }
               this.§ p§(true,true);
               this.§[e§();
               break;
            case §5#O§:
               this.§ p§(false,this.§5!T§() == §"!"§);
               this.§8$!§ = [];
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§!!z§(false);
               this.§`#g§(true);
               this.§0"u§(null);
               break;
            case §[@§:
               this.§#"!§(§8#@§);
               this.§ p§(false,false);
               this.§8$!§ = [];
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§!!z§(false);
               this.§`#g§(true);
               break;
            case §8$-§:
               this.§#"!§(§8#@§);
               this.§ p§(false,false);
               this.§7$D§.visible = false;
               this.§&!W§ = "";
               this.§8$!§ = [];
               this.§[e§();
               this.§]!q§(§4$D§);
               this.§!!z§(false);
               this.§`#g§(false);
         }
         this.§2g§(param2);
         this.§-"A§();
         if(this.§3&§ != param1)
         {
            this.§3&§ = param1;
            dispatchEvent(new §-B§(§-B§.§5!C§,{"tab":this.§%!;§}));
         }
      }
      
      private function §!!z§(param1:Boolean) : void
      {
         this.§2"!§.mcNotInLeague.visible = param1;
         this.§2"!§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§2"!§.NotInLeagueBG.visible = param1;
         this.§2"!§.mcRankingBadgeBg.visible = param1;
         this.§2"!§.mcRankingBadgeBg.gotoAndStop(1);
         if(param1)
         {
            if(§?#,§.§3"1§.currentLeague())
            {
               if(§=!a§.§3"1§.§?#4§() == §5"c§.§?"n§)
               {
                  this.§2"!§.mcNotInLeague.LeaguePrize.text = "" + §?#,§.§3"1§.currentLeague().reward * 2;
                  this.§2"!§.mcRankingBadgeBg.gotoAndStop(2);
               }
               else
               {
                  this.§2"!§.mcNotInLeague.LeaguePrize.text = §?#,§.§3"1§.currentLeague().reward.toString();
               }
            }
         }
      }
      
      private function §2g§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§8$!§.length)
            {
               if(this.§8$!§[_loc5_].userId == this.§'H§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§>$§.offset;
         var _loc3_:int = Math.floor(this.§>$§.§-"7§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§>$§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§>$§.scroll(param1);
            this.§-"A§();
         }
      }
      
      private function §-"A§() : void
      {
         var _loc1_:* = this.§>$§.offset != 0;
         var _loc2_:* = this.§>$§.offset != this.§>$§.data.length - this.§>$§.§-"7§;
         this.§2"!§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§2"!§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §>N§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§!$$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(!this.§^!X§ || !this.§9!%§ || this.§&!W§ != param1)
         {
            return {};
         }
         this.§^"k§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§&!Y§ = new Object();
         this.§&!Y§.originalRank = 0;
         this.§&!Y§.rankAfterUpdate = 0;
         this.§&!Y§.leagueOriginalRank = 0;
         this.§&!Y§.leagueRankAfterUpdate = 0;
         if(this.§%_§)
         {
            this.§&!Y§.leagueOriginalRank = this.§%_§.§]S§(this.§'H§);
            this.§&!Y§.leagueRankAfterUpdate = this.§%_§.§>N§(param2,param3,param4,_loc7_);
            this.§7!Z§(§9!o§,this.§%_§.data,this.§&!Y§.leagueRankAfterUpdate);
         }
         this.§&!Y§.originalRank = this.§^!X§.§]S§(this.§'H§);
         this.§&!Y§.rankAfterUpdate = this.§^!X§.§>N§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§^"k§.push(_loc8_);
            _loc10_ = _loc8_.rank - 1;
            §'@§.§,#u§(_loc10_.toString());
         }
         _loc9_ = !!param5 ? int(§ c§) : int(§-x§);
         this.§7!Z§(_loc9_,this.§9!%§,this.§&!Y§.rankAfterUpdate);
         return this.§&!Y§;
      }
      
      public function §,&§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         if(param1 == 0 || this.§2"!§.mcButtonsContainer.btnShopLarge.visible || this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible)
         {
            this.§2"!§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§2"!§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§2"!§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§2"!§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §6#T§.§1$E§(param1);
            this.§2"!§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§2"!§.mcButtonsContainer.mcItemCountBg;
            int(_loc3_.width);
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§2"!§.mcButtonsContainer.txtInboxItemCount.x + this.§2"!§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §[e§() : void
      {
         var _loc4_:§1N§ = null;
         var _loc5_:Boolean = false;
         var _loc1_:Dictionary = §6"k§.§3"1§.§0!o§();
         var _loc2_:Array = this.§8$!§.concat();
         var _loc3_:int = this.§8$!§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8$!§[_loc3_];
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
            _loc9_ = §`!H§;
            while(§§hasnext(_loc9_,_loc8_))
            {
               if(§§nextvalue(_loc8_,_loc9_) == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§8$!§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§>$§.data = _loc2_;
      }
      
      public function §9M§() : String
      {
         return "Friendsbar";
      }
      
      private function §^#P§(param1:Boolean) : void
      {
         if(§!",§.§3"1§.§%$7§ && §!",§.§3"1§.§%$7§.§1_§(§<$9§.§&!y§) && param1)
         {
            this.§2"!§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§2"!§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§2"!§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§2"!§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §9"a§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §`!H§.push(_loc2_.id);
         }
         this.§[e§();
         this.§>$§.refresh();
         this.§-"A§();
      }
      
      public function §!p§() : void
      {
         var _loc1_:Boolean = §,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.length > 0 || §,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.length > 0;
         this.§2"!§.mcButtonsContainer.mcNewTagShop.visible = _loc1_ && !this.§2"!§.mcButtonsContainer.btnShopLarge.visible && !this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible;
         this.§2"!§.mcButtonsContainer.mcNewTagShopLarge.visible = _loc1_ && (this.§2"!§.mcButtonsContainer.btnShopLarge.visible || this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible);
         this.§2"!§.mcButtonsContainer.Tag_Sale_Shop.visible = this.§9!'§() && !this.§2"!§.mcButtonsContainer.btnShopLarge.visible && !this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible;
         if(this.§9!'§() && (this.§2"!§.mcButtonsContainer.btnShopLarge.visible || this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible))
         {
            this.§2"!§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§2"!§.mcButtonsContainer.btnShopLargeSale.visible = true;
         }
         var _loc2_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc2_)
         {
            _loc2_.§4$8§.§]"R§();
         }
      }
      
      private function §9!'§() : Boolean
      {
         var _loc1_:§,#b§ = §,#b§(AngryBirdsBase.singleton.dataModel);
         return _loc1_.§9]§ || _loc1_.§#"J§ || _loc1_.§1@§;
      }
      
      public function §?!3§(param1:Boolean = false) : void
      {
         this.§2"!§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§%!;§ == §8#@§;
         this.§2"!§.mcButtonsContainer.Tag_Sale_Avatar.visible = §,#b§(AngryBirdsBase.singleton.dataModel).§5!a§ && this.§%!;§ == §8#@§;
         MovieClip(this.§2"!§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§2"!§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function § p§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(!param1)
         {
            this.§'"Y§(§8#@§);
         }
         else if(param2)
         {
            this.§'"Y§(this.§%!;§);
            this.§!d§(this.§%!;§ == §"!"§);
         }
         else
         {
            this.§'"Y§(§8#@§);
            this.§!d§(false);
         }
      }
      
      public function §5!T§() : String
      {
         return this.§%!;§;
      }
      
      public function §`$'§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§^!X§ = null;
         if(_loc2_)
         {
            this.§^!X§ = this.§3"U§.§?"x§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§0R§(),this.mLevelManager.§0R§());
            if(this.§^!X§.§#!?§)
            {
               this.§^!X§.addEventListener(§ !w§.§'#y§,this.§+R§);
            }
            else
            {
               this.§+R§(null,param1);
            }
         }
      }
      
      private function §+R§(param1:§ !w§, param2:int = -1) : void
      {
         var _loc4_:§!$$§ = null;
         this.§^!X§.removeEventListener(§ !w§.§'#y§,this.§+R§);
         this.§9!%§ = new Array();
         §51§.§@"-§ = new Vector.<§!$$§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!X§.data.length)
         {
            if(_loc4_ = this.§^!X§.data[_loc3_])
            {
               _loc4_.§'n§ = this.§^!X§.§`#U§;
               if(_loc4_.§^"%§)
               {
                  if(§51§.§8!a§.indexOf(_loc4_.userId) == -1)
                  {
                     §51§.§@"-§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§^"k§)
                  {
                     var _loc6_:int = 0;
                     var _loc7_:* = this.§^"k§;
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        if((§§nextvalue(_loc6_,_loc7_)).userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§9!%§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§9!%§.length == 0)
         {
            _loc4_ = new §!$$§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName,null,0,0,0,1,null,0,null);
            this.§9!%§.push(_loc4_);
            this.§^!X§.§=#"§(_loc4_);
         }
         else if(§!#?§.§]!2§(§!#?§.§1#E§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9!%§.length)
            {
               this.§9!%§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         if(this.mLevelManager.§0R§())
         {
            this.§7!Z§(§ c§,this.§9!%§,param2);
         }
         else
         {
            this.§7!Z§(§-x§,this.§9!%§,param2);
         }
      }
      
      public function §&!F§() : void
      {
         if(this.mLevelManager.§0R§() && §?#,§.§3"1§.active)
         {
            if(!this.§%_§ || !this.§%_§.§#!?§)
            {
               this.§%_§ = §?#,§.§3"1§.§?"x§(this.mLevelManager.currentLevel,true);
               if(this.§%_§.§#!?§)
               {
                  this.§%_§.addEventListener(§ !w§.§'#y§,this.§^!Y§);
               }
               else
               {
                  this.§^!Y§(null);
               }
            }
         }
      }
      
      private function §^!Y§(param1:§ !w§) : void
      {
         this.§%_§.removeEventListener(§ !w§.§'#y§,this.§^!Y§);
         this.§7!Z§(§9!o§,this.§%_§.data);
      }
      
      public function §0!-§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§1"Z§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §?"R§.STATE_NAME || _loc1_ == §>#P§.STATE_NAME || _loc1_ == §-§.STATE_NAME || _loc1_ == §%"`§.STATE_NAME || _loc1_ == §]#<§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §&!e§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§1"D§ && this.§1"D§.standings)
         {
            for each(_loc3_ in this.§1"D§.standings)
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
         if(this.§ #>§ && this.§ #>§.standings)
         {
            for each(_loc3_ in this.§ #>§.standings)
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
         if(this.§'#P§ && this.§'#P§.standings)
         {
            for each(_loc3_ in this.§'#P§.standings)
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
         if(this.§!!m§ && this.§!!m§.standings)
         {
            for each(_loc3_ in this.§!!m§.standings)
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
         this.§ !A§(this.§3&§);
      }
      
      private function §`#g§(param1:Boolean) : void
      {
         this.§2"!§.mcLoadingSpinner.visible = param1;
      }
      
      public function §^!4§() : §51§
      {
         if(this.§3&§ == §9!o§)
         {
            return this.§%_§;
         }
         return this.§^!X§;
      }
      
      private function §-!O§() : Array
      {
         var _loc4_:§?$,§ = null;
         var _loc1_:Vector.<§?$,§> = §-#]§.§0$%§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §51§.§ #-§)
            {
               break;
            }
            _loc2_.push(new §]!H§(_loc4_.userID,_loc4_.name));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §#l§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §51§.§%[§.length && _loc2_ < §51§.§,$E§)
         {
            if(§51§.§8!a§.indexOf(§51§.§%[§[_loc3_].userId) == -1)
            {
               _loc1_.push(§51§.§%[§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §-#J§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §51§.§@"-§.length && _loc2_ < §51§.§,$E§)
         {
            if(§51§.§8!a§.indexOf(§51§.§@"-§[_loc3_].userId) == -1)
            {
               _loc1_.push(§51§.§@"-§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §5$>§() : int
      {
         return this.§3&§;
      }
      
      public function levelStarted() : void
      {
         this.§^"k§ = new Array();
         this.§+!?§ = new Array();
         this.§&!Y§ = null;
      }
      
      private function §]#l§() : void
      {
         if(!this.§2"!§.hasEventListener(MouseEvent.CLICK))
         {
            this.§2"!§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§[8§);
         }
      }
      
      private function § !v§() : void
      {
         this.§2"!§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§[8§);
      }
      
      public function § $!§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§+!?§)
         {
            for each(_loc2_ in this.§+!?§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § "M§() : Array
      {
         return this.§^"k§;
      }
      
      public function §&!6§(param1:Boolean) : int
      {
         if(this.§&!Y§)
         {
            if(param1)
            {
               if(this.§&!Y§.originalRank > this.§&!Y§.rankAfterUpdate)
               {
                  return this.§&!Y§.rankAfterUpdate;
               }
            }
            else
            {
               return this.§&!Y§.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function §0"u§(param1:String, param2:Boolean = false) : void
      {
         var ld:§2R§ = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:§2R§ = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:§2R§ = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         var leagueID:String = param1;
         var showOnlyLeagueIcon:Boolean = param2;
         if(leagueID == null)
         {
            this.§^"z§.LeagueProgBar.visible = false;
            this.§^"z§.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = §?#,§.§3"1§.§4"4§();
         this.§^"z§.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.§^"z§.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.§^"z§.visible = playerLeagueProfile != null;
            this.§^"z§.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in §#!T§.§]#%§)
         {
            this.§^"z§.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.§^"z§.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = §?#,§.§3"1§.currentLeague();
            if(currentLeague)
            {
               nextLeague = §#!T§.§8p§(currentLeague.id);
               currentLeagueRatingMin = currentLeague.§+9§;
               currentLeagueRatingMax = nextLeague.§+9§;
            }
            if(currentLeague.name == §#!T§.§]"h§())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = §?#,§.§3"1§.§-#x§();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - §#!T§.§##§ >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / §#!T§.§##§);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += §#!T§.§##§ * playerRankStarAmount;
               currentLeagueRatingMax += §#!T§.§##§ * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.§^"z§.LeagueProgBar.StarIcon.visible = true;
                  this.§^"z§.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.§^"z§.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.§^"z§.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.§^"z§.height);
            this.§^"z§.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.§^"z§.LeagueProgBar.ProgText01.visible = true;
               this.§^"z§.LeagueProgBar.ProgText02.visible = false;
               this.§^"z§.LeagueProgBar.ProgText03.visible = false;
               this.§^"z§.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.§^"z§.LeagueProgBar.ProgText01.visible = false;
               this.§^"z§.LeagueProgBar.ProgText02.visible = true;
               this.§^"z§.LeagueProgBar.ProgText03.visible = false;
               this.§^"z§.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.§^"z§.LeagueProgBar.ProgText01.visible = false;
               this.§^"z§.LeagueProgBar.ProgText02.visible = false;
               this.§^"z§.LeagueProgBar.ProgText03.visible = true;
               this.§^"z§.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.§^"z§.visible = false;
            fn = function(param1:§<#M§):void
            {
               §?#,§.§3"1§.removeEventListener(§<#M§.§ "2§,fn);
               §0"u§(leagueID);
            };
            §?#,§.§3"1§.addEventListener(§<#M§.§ "2§,fn);
         }
      }
   }
}
