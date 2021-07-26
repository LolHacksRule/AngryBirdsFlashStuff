package §^"G§
{
   import §!!L§.§'"H§;
   import §!!L§.§6$1§;
   import §!!L§.StateTournamentResults;
   import §!!L§.§]!p§;
   import §!L§.§`#u§;
   import §"#X§.§8#g§;
   import §"#X§.static;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#"4§.§>0§;
   import §#$?§.§7!b§;
   import §'"b§.§ #F§;
   import §'n§.§+"g§;
   import §+W§.§;">§;
   import §+W§.§<§;
   import §+W§.§@#K§;
   import §,#,§.§-n§;
   import §,#,§.§0!u§;
   import §,#,§.§4!g§;
   import §,#,§.§4!y§;
   import §,#,§.§=#o§;
   import §,#,§.§@§;
   import §,#,§.§[!V§;
   import §,#,§.§]§;
   import §,#,§.§^#<§;
   import §-$'§.§4$A§;
   import §2!Y§.§4!h§;
   import §2!Y§.§="z§;
   import §3"V§.§ b§;
   import §4S§.§1!Y§;
   import §6"p§.§^"t§;
   import §7"&§.§1k§;
   import §7"X§.§2"R§;
   import §7"X§.§6#A§;
   import §7#$§.§8$%§;
   import §=#`§.GiftInboxPopup;
   import §>#q§.§^!"§;
   import §?#z§.§]$?§;
   import §?<§.§ "A§;
   import §]"U§.§>#T§;
   import §]#'§.§3$-§;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §]§.§+!F§;
   import §]§.§>"d§;
   import §]§.StatePlay;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §2+§ extends Sprite implements §1k§
   {
      
      public static var §%8§:Boolean = false;
      
      public static const § <§:String = "SidebarButtonStateInfo";
      
      public static const §0"l§:String = "SidebarButtonStatePlay";
      
      public static const §3#u§:String = "SidebarButtonStateNone";
      
      public static const §,$5§:String = "SidebarButtonStateNoTutorial";
      
      public static const §!5§:String = "SidebarButtonStatePause";
      
      public static const §>C§:int = 0;
      
      public static const §9"^§:int = 1;
      
      public static const §@#&§:int = 2;
      
      public static const §]#R§:int = 3;
      
      public static const §0#V§:int = 4;
      
      public static const §7!g§:int = 5;
      
      public static const §<j§:int = 6;
      
      public static const § "s§:int = 7;
      
      public static const §,!]§:int = 8;
      
      public static const §#!3§:int = 9;
      
      public static const §1#O§:int = 10;
      
      public static const §,"P§:int = 11;
      
      private static const §+"T§:int = 40;
      
      private static const §,"y§:int = 20;
      
      public static var §4"S§:Array = [];
      
      public static const §-",§:String = "Friends";
      
      public static const §3#-§:String = "League";
       
      
      private var §8$6§:int;
      
      private var §!#V§:Object;
      
      private var §3"S§:Object;
      
      private var §[N§:Object;
      
      private var §+!i§:Object;
      
      private var §6!c§:Object;
      
      private var §4#8§:Object;
      
      private var §=#J§:Object;
      
      private var §4"L§:Object;
      
      private var §>o§:§;">§;
      
      private var §![§:Array;
      
      private var §8#w§:MovieClip;
      
      private var §'"+§:MovieClip;
      
      private var §1!7§:MovieClip;
      
      private var §!#s§:String;
      
      private var §"![§:§="z§;
      
      private var §!;§:String = "";
      
      private var §6O§:§4!h§;
      
      private var §>#R§:Array;
      
      private var §%$;§:§4!h§;
      
      private var §&"v§:Boolean;
      
      private var §;"^§:String;
      
      private var §5"U§:String;
      
      private var §%$6§:Boolean;
      
      private var §##+§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §'"E§:Number;
      
      private var mLevelManager:§8$%§;
      
      private var §+"o§:Array;
      
      private var §@"k§:Array;
      
      private var §!!"§:Object;
      
      public function §2+§(param1:§="z§, param2:String, param3:String, param4:§8$%§)
      {
         this.§+"o§ = [];
         this.§@"k§ = [];
         super();
         §<#8§.§#f§ = param3;
         this.§5"U§ = param3;
         this.§"![§ = param1;
         this.§!#s§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§["A§(false,false);
         this.§#![§(§-",§);
      }
      
      private function init() : void
      {
         this.§'"+§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§'"+§.tabChildren = false;
         addChild(this.§'"+§);
         MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         MovieClip(this.§'"+§.mcOverlappingTournaments).visible = false;
         this.§]!T§(false);
         this.§>o§ = new §;">§(330,180,[],§<#8§,2,15);
         addChild(this.§>o§.scrollerSprite);
         this.§>o§.scrollerSprite.x = 180 + 7;
         this.§>o§.scrollerSprite.rotation = 90;
         this.§'"+§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§4"0§);
         this.§'"+§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§5#G§);
         this.§'"+§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§@t§);
         this.§'"+§.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.§?"d§);
         this.§'"+§.mcButtonsContainer.btnShopLargeSale.addEventListener(MouseEvent.CLICK,this.§?"d§);
         this.§'"+§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§0#f§);
         this.§'"+§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§+"t§);
         this.§'"+§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§?"d§);
         this.§'"+§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§`§);
         this.§'"+§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§ !-§);
         this.§'"+§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§'"+§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§'"+§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§'"+§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§1!7§ = this.§'"+§.LeagueInfo as MovieClip;
         this.§1!7§.visible = false;
         this.§1!7§.addEventListener(MouseEvent.CLICK,this.§5$1§);
         this.§1!7§.buttonMode = true;
         this.§1!7§.useHandCursor = true;
         this.§1!7§.mouseChildren = false;
         this.§7#;§(false);
         this.§>o§.scrollerSprite.addEventListener(§2"R§.§#"p§,this.§<#y§);
         this.§>o§.scrollerSprite.addEventListener(§2"R§.§!#b§,this.§@a§);
         this.§>o§.scrollerSprite.addEventListener(§2"R§.§'"F§,this.§&"F§);
         this.§8!N§();
         this.§&"v§ = true;
         this.§8#w§ = this.§'"+§.mcTitle as MovieClip;
         this.§8#w§.txtTitle.text = "";
         this.§8#w§.visible = false;
         this.§'[§(GiftInboxPopup.§+#G§);
         this.§0!c§(true);
         this.§6! §(§=#o§(AngryBirdsBase.singleton.dataModel).§64§);
         MovieClip(this.§'"+§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.§'"+§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.§8!4§();
         §7!b§.addCallback("giftsSentToUsers",this.§4"y§);
         §7!b§.addCallback("challengeSentToUser",this.§=#W§);
         §7!b§.addCallback("bragCompleted",this.§8#e§);
         if(§4"s§.§+!,§.active)
         {
            this.§6!+§(§3#-§);
            this.§#![§(§3#-§,false);
         }
         else
         {
            this.§6!+§(§-",§);
            this.§#![§(§-",§,false);
         }
      }
      
      private function §3#T§() : Boolean
      {
         return this.§[N§ != null && this.§8$6§ == §@#&§ || this.§4"L§ != null && this.§8$6§ == §,!]§ || this.§+!i§ != null && this.§8$6§ == §]#R§ || this.§6!c§ != null && this.§8$6§ == §0#V§;
      }
      
      private function §5$1§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§?#R§));
      }
      
      private function §7#;§(param1:Boolean) : void
      {
         this.§'"+§.mcButtonsContainer.btnAvatar.visible = !param1;
         this.§'"+§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§'"+§.mcButtonsContainer.btnGift.visible = !param1;
         this.§'"+§.mcButtonsContainer.btnShop.visible = !param1;
         if(param1)
         {
            this.§'"+§.mcButtonsContainer.btnShopLarge.visible = !this.§-T§();
            this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible = this.§-T§();
         }
         else
         {
            this.§'"+§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible = false;
         }
         this.§0!c§(false);
         this.§'[§(GiftInboxPopup.§+#G§);
      }
      
      private function §8!N§() : void
      {
         this.btnTabFriends = this.§'"+§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§'"+§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§[b§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§=#u§);
      }
      
      protected function §=#u§(param1:MouseEvent) : void
      {
         if(this.§##+§ != §3#-§)
         {
            § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         }
         if(this.§["O§())
         {
            this.§`##§(§,!]§);
         }
         else if(AngryBirdsBase.singleton.§%#7§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§+G§ == StateTournamentResults.§9`§)
            {
               this.§`##§(§0#V§);
            }
            else
            {
               this.§`##§(§]#R§);
            }
         }
         else
         {
            this.§`##§(§@#&§);
         }
      }
      
      protected function §[b§(param1:MouseEvent) : void
      {
         if(this.§##+§ != §-",§)
         {
            § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         }
         if(this.§["O§())
         {
            this.§`##§(§<j§);
         }
         else if(AngryBirdsBase.singleton.§%#7§() == StateTournamentResults.STATE_NAME)
         {
            this.§`##§(§9"^§);
         }
         else
         {
            this.§`##§(§>C§);
         }
      }
      
      private function §#![§(param1:String, param2:Boolean = true) : void
      {
         if(this.§##+§ == param1)
         {
            return;
         }
         this.§##+§ = param1;
         this.§6!+§(param1);
         this.§7#;§(this.§##+§ == §3#-§);
         if(this.§##+§ == §-",§)
         {
            this.§6! §(§=#o§(AngryBirdsBase.singleton.dataModel).§64§);
         }
         else
         {
            this.§6! §(false);
         }
         if(param2)
         {
            §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§8#O§,[this.§##+§],true);
         }
         this.§8!4§();
      }
      
      private function §6!+§(param1:String) : void
      {
         this.§'"+§.mcTop.gotoAndStop(param1);
         this.§'"+§.mcMiddle.gotoAndStop(param1);
         this.§'"+§.mcBottom.gotoAndStop(param1);
      }
      
      private function §4"y§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§<#8§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§>o§.§1#4§)
            {
               if(_loc4_.§!!y§.data && _loc3_ == _loc4_.§!!y§.data.userId)
               {
                  if(_loc4_.§!!y§ is §@#K§)
                  {
                     §@#K§(_loc4_.§!!y§).setCanSendGift(false,true);
                  }
                  §4!g§.§+!,§.§?" §(_loc4_.§!!y§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §,"2§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§;"^§ == param1)
         {
            return;
         }
         §^"t§.log("Changing state");
         this.§;"^§ = param1;
         switch(this.§;"^§)
         {
            case § <§:
               §^"t§.log("Info state");
               this.§0"T§();
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§'"+§.mcButtonsContainer.btnInfo.enabled = true;
               this.§&"v§ = true;
               break;
            case §3#u§:
            case §!5§:
            case §,$5§:
               §^"t§.log("None state");
               this.§9#M§();
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§'"+§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case §0"l§:
               §^"t§.log("Play state");
               this.§0"T§();
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§'"+§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§'"+§.mcButtonsContainer.btnInfo.enabled = true;
               this.§&"v§ = false;
         }
         (§]$?§.§;u§ as §@z§).§]"V§(this.§;"^§);
      }
      
      public function §?#q§() : void
      {
         if(§ b§.§[$+§)
         {
            MovieClip(this.§'"+§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§'"+§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§2"7§,[§ b§.§[$+§],true);
      }
      
      public function §catch§(param1:String) : void
      {
         this.§'"+§.mcButtonsContainer.btnAvatar.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnAvatar.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShopLarge.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShopLarge.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnShopLarge.mouseEnabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShopLargeSale.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShopLargeSale.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnShopLargeSale.mouseEnabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnInvite.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnInvite.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnGift.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnGift.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShop.enabled = param1 != §3#u§;
         this.§'"+§.mcButtonsContainer.btnShop.alpha = param1 == §3#u§ ? 0.5 : 1;
         this.§'"+§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §3#u§;
      }
      
      private function §@t§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§=!]§));
      }
      
      private function §0#f§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§##<§));
      }
      
      private function §@a§(param1:§2"R§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §7!b§.§7@§("updateSessionToken",§1!Y§.§?!j§);
         §7!b§.§7@§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName,param1.data.userId,§@#5§.§=D§(§@#5§.§^$'§));
         §3";§.§#"'§().§`2§(1,"SIDEBAR");
      }
      
      private function §&"F§(param1:§2"R§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §7!b§.§7@§("updateSessionToken",§1!Y§.§?!j§);
         §7!b§.§7@§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName,§7!$§.§+!,§.§!#g§,param1.data.userId,§@#5§.§=D§(§@#5§.§;##§));
      }
      
      private function §8#e§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§+"o§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§@"k§)
         {
            this.§@"k§.push(param1);
         }
      }
      
      private function §=#W§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§4$A§ = new §4$A§();
         _loc2_.§[#k§([param1]);
         if(§7!$§.§+!,§.§@!v§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §7!$§.§+!,§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §3";§.§#"'§().§##?§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,param1,§7!$§.§+!,§.§@!v§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §4!h§.§3#^§.length)
         {
            if(§4!h§.§3#^§[_loc3_].userId == param1)
            {
               §4!h§.§3#^§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §4!h§.§6M§.push(param1);
         var _loc4_:int = this.§>o§.offset + this.§>o§.§["j§ / 2;
         this.§0"F§(this.§8$6§,null,_loc4_);
      }
      
      private function §<#y§(param1:§2"R§) : void
      {
         §7!b§.addCallback("invitationBatchSent",this.§@"8§);
         §7!b§.addCallback("invitationBatchCancel",this.§]"P§);
         dispatchEvent(new §2"R§(§2"R§.§##<§,param1.data as §-n§));
      }
      
      private function §@"8§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §7!b§.§&#&§("invitationBatchSent",this.§@"8§);
         §7!b§.§&#&§("invitationBatchCancel",this.§]"P§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§>o§.§["j§ / 2);
            _loc3_ = this.§>o§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§"![§.§!#S§().data.length)
            {
               if(this.§"![§.§!#S§().data[_loc4_].userId == param1)
               {
                  this.§"![§.§!#S§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §4"S§.push(param1);
            this.§"!8§();
            this.§>o§.refresh();
            this.§9!P§(_loc3_);
            this.§?#p§();
         }
      }
      
      private function §]"P§() : void
      {
         §7!b§.§&#&§("invitationBatchSent",this.§@"8§);
         §7!b§.§&#&§("invitationBatchCancel",this.§]"P§);
      }
      
      private function §?"d§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§&!1§));
         this.§0!c§(false);
      }
      
      private function §`§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§+§));
      }
      
      private function § !-§(param1:MouseEvent) : void
      {
         dispatchEvent(new §2"R§(§2"R§.§ !<§));
         this.§?#q§();
      }
      
      private function §!z§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         if(this.§&"v§)
         {
            §^"t§.log(§2"R§.§6"R§);
            dispatchEvent(new §2"R§(§2"R§.§6"R§));
         }
         else
         {
            §^"t§.log(§2"R§.§>$ §);
            dispatchEvent(new §2"R§(§2"R§.§>$ §));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§'"E§ = Math.max(param1,330);
         this.§'"+§.mcMiddle.height = this.§'"E§ - this.§'"+§.mcTop.height - this.§'"+§.mcBottom.height;
         this.§'"+§.mcBottom.y = this.§'"E§ - this.§'"+§.mcBottom.height;
         this.§'"+§.mcButtonsContainer.y = this.§'"E§ - this.§'"+§.mcButtonsContainer.height + 7;
         this.§>o§.scrollerSprite.y = 104;
         this.§>o§.setWidth(this.§'"E§ - 255);
         this.§?#p§();
      }
      
      private function §4"0§(param1:MouseEvent) : void
      {
         § b§.playSound("Shop_Selection",§ b§.§;$5§);
         this.scroll(-this.§>o§.§["j§);
      }
      
      private function §5#G§(param1:MouseEvent) : void
      {
         § b§.playSound("Shop_Selection",§ b§.§;$5§);
         this.scroll(this.§>o§.§["j§);
      }
      
      private function §+"t§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         dispatchEvent(new §2"R§(§2"R§.§0#Q§));
      }
      
      public function §0"F§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §>C§:
               if(!this.§!#V§)
               {
                  this.§!#V§ = new Object();
                  this.§!#V§.title = "Tournament scores";
                  this.§!#V§.data = [];
                  this.§!#V§.standings = [];
               }
               if(param2)
               {
                  this.§!#V§.standings = param2;
                  this.§0"T§();
               }
               if(§%8§)
               {
                  this.§!#V§.data = this.§!#V§.standings.concat(this.§4"2§());
                  this.§!#V§.data = this.§!#V§.data.concat(this.§2"1§());
               }
               else
               {
                  this.§!#V§.data = this.§!#V§.standings.concat(new §4!y§(""));
               }
               _loc4_ = this.§="m§() == §-",§;
               break;
            case §9"^§:
               if(!this.§3"S§)
               {
                  this.§3"S§ = new Object();
                  this.§3"S§.title = "Previous scores";
               }
               this.§3"S§.standings = param2;
               if(§4"s§.§+!,§.active && (§4"s§.§+!,§.§]$ § || §4"s§.§+!,§.§=!j§))
               {
                  _loc4_ = this.§="m§() == §-",§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§0"T§();
               break;
            case §@#&§:
               if(!this.§[N§)
               {
                  this.§[N§ = new Object();
                  this.§[N§.leagueId = "NONE";
               }
               if(§4"s§.§+!,§.currentLeague())
               {
                  this.§[N§.leagueId = §4"s§.§+!,§.currentLeague().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§[N§.standings = param2;
               if(this.§="m§() == §3#-§ && this.§8$6§ != §,!]§)
               {
                  _loc4_ = true;
               }
               break;
            case §]#R§:
               if(!this.§+!i§)
               {
                  this.§+!i§ = new Object();
                  this.§+!i§.leagueId = "NONE";
               }
               if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.l)
               {
                  _loc5_ = §4"s§.§+!,§.§=!j§.l;
                  this.§+!i§.leagueId = _loc5_.pli.tn;
               }
               this.§+!i§.standings = param2;
               _loc4_ = this.§="m§() == §3#-§;
               this.§0"T§();
               break;
            case §0#V§:
               if(!this.§6!c§)
               {
                  this.§6!c§ = new Object();
                  this.§6!c§.title = "";
                  this.§6!c§.leagueId = "NONE";
               }
               if(§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l && §4"s§.§+!,§.§]$ §.l.p)
               {
                  _loc6_ = §4"s§.§+!,§.§]$ §.l;
                  this.§6!c§.title = _loc6_.pli.ln;
                  this.§6!c§.leagueId = _loc6_.pli.tn;
               }
               this.§6!c§.standings = param2;
               _loc4_ = Boolean(this.§="m§() == §3#-§ && StateTournamentResults.§+G§ == StateTournamentResults.§9`§);
               this.§0"T§();
               break;
            case §7!g§:
               if(!this.§4#8§)
               {
                  this.§4#8§ = new Object();
                  this.§4#8§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§4#8§.standings = [];
               }
               else
               {
                  this.§4#8§.standings = param2;
                  if(!§%8§)
                  {
                     this.§4#8§.standings = this.§4#8§.standings.concat(new §4!y§(""));
                  }
                  this.§0"T§();
               }
               _loc4_ = true;
               break;
            case §<j§:
            case § "s§:
               if(!this.§=#J§)
               {
                  this.§=#J§ = new Object();
                  this.§=#J§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§-"t§(param3);
                  return;
               }
               if(!§%8§)
               {
                  param2 = param2.concat(new §4!y§(""));
               }
               else
               {
                  if(this.§6O§.§7T§)
                  {
                     param2 = param2.concat(this.§'"h§());
                  }
                  param2 = param2.concat(this.§2"1§());
               }
               this.§=#J§.standings = param2;
               _loc4_ = this.§="m§() == §-",§;
               this.§0"T§();
               break;
            case §,!]§:
               if(!this.§4"L§)
               {
                  this.§4"L§ = new Object();
                  this.§4"L§.leagueId = "NONE";
                  this.§4"L§.loadingScores = false;
               }
               if(§4"s§.§+!,§.currentLeague())
               {
                  this.§4"L§.leagueId = §4"s§.§+!,§.currentLeague().id;
               }
               if(!param2)
               {
                  this.§4"L§.standings = [];
                  this.§8"!§();
                  this.§4"L§.loadingScores = true;
                  return;
               }
               this.§4"L§.standings = param2;
               this.§4"L§.loadingScores = false;
               _loc4_ = this.§="m§() == §3#-§;
               this.§0"T§();
               break;
            case §#!3§:
            case §1#O§:
               if(this.§%$;§)
               {
                  this.§%$;§.removeEventListener(§6#A§.§4$&§,this.§]$8§);
                  this.§%$;§ = null;
               }
               if(this.§6O§)
               {
                  this.§6O§.removeEventListener(§6#A§.§4$&§,this.§ [§);
                  this.§6O§ = null;
               }
               _loc4_ = true;
               this.§9#M§();
               break;
            case §,"P§:
               _loc4_ = true;
               this.§0"T§();
         }
         this.§'"+§.mcOverlappingTournaments.visible = param1 == §,"P§;
         if(_loc4_)
         {
            this.§`##§(param1,param3);
         }
      }
      
      public function §`##§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§^#<§ = null;
         this.§1!7§.visible = false;
         this.§8#w§.visible = false;
         switch(param1)
         {
            case §>C§:
               this.§#![§(§-",§);
               if(this.§!#V§)
               {
                  this.§8#w§.txtTitle.text = this.§!#V§.title;
                  this.§8#w§.visible = true;
                  this.§8#w§.y = §+"T§;
                  this.§![§ = this.§!#V§.data;
               }
               else
               {
                  this.§![§ = [];
               }
               this.§!;§ = "";
               this.§["A§(§4"s§.§+!,§.active,false);
               this.§]!T§(false);
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§`"E§(false);
               break;
            case §9"^§:
               this.§#![§(§-",§);
               if(this.§3"S§)
               {
                  this.§8#w§.txtTitle.text = this.§3"S§.title;
                  this.§8#w§.visible = true;
                  this.§8#w§.y = §+"T§;
                  this.§![§ = this.§3"S§.standings;
               }
               else
               {
                  this.§![§ = [];
               }
               this.§!;§ = "";
               _loc3_ = §4"s§.§+!,§.active && (§4"s§.§+!,§.§]$ § || §4"s§.§+!,§.§=!j§);
               this.§["A§(_loc3_,false);
               this.§]!T§(false);
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§`"E§(false);
               break;
            case §@#&§:
               this.§#![§(§3#-§);
               this.§`"E§(false);
               if(this.§[N§)
               {
                  this.§1!7§.visible = true;
                  this.§[R§(this.§[N§.leagueId);
                  this.§![§ = this.§[N§.standings;
                  this.§]!T§(this.§[N§.standings != null && this.§[N§.standings.length == 0);
               }
               else
               {
                  this.§![§ = [];
                  this.§]!T§(false);
                  this.§[R§(null);
               }
               this.§!;§ = "League";
               this.§["A§(true,true);
               this.§"!8§();
               this.§,"2§(§ <§);
               break;
            case §]#R§:
               this.§#![§(§3#-§);
               this.§`"E§(false);
               if(this.§+!i§)
               {
                  this.§1!7§.visible = true;
                  this.§[R§(this.§+!i§.leagueId,true);
                  this.§![§ = this.§+!i§.standings;
                  this.§]!T§(this.§+!i§.standings != null && this.§+!i§.standings.length == 0);
               }
               else
               {
                  this.§![§ = [];
                  this.§]!T§(true);
                  this.§[R§(null);
               }
               this.§!;§ = "League";
               this.§["A§(true,true);
               this.§"!8§();
               this.§,"2§(§ <§);
               break;
            case §0#V§:
               this.§#![§(§3#-§);
               this.§`"E§(false);
               if(this.§6!c§)
               {
                  this.§1!7§.visible = true;
                  this.§[R§(this.§6!c§.leagueId,true);
                  this.§![§ = this.§6!c§.standings;
                  this.§]!T§(this.§6!c§.standings != null && this.§6!c§.standings.length == 0);
               }
               else
               {
                  this.§![§ = [];
                  this.§]!T§(true);
                  this.§[R§(null);
               }
               this.§!;§ = "League";
               this.§["A§(true,true);
               this.§"!8§();
               this.§,"2§(§ <§);
               break;
            case §7!g§:
               this.§#![§(§-",§);
               this.§8#w§.txtTitle.text = this.§4#8§.title;
               this.§8#w§.visible = true;
               this.§8#w§.y = §,"y§;
               this.§!;§ = "";
               this.§["A§(false,false);
               this.§![§ = this.§4#8§.standings;
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§]!T§(false);
               this.§`"E§(this.§4#8§.standings.length == 0);
               break;
            case §<j§:
            case § "s§:
               if(param1 == §<j§)
               {
                  this.§["A§(true,this.§="m§() == §3#-§);
               }
               else
               {
                  this.§["A§(false,false);
               }
               this.§#![§(§-",§);
               if(this.§=#J§)
               {
                  this.§8#w§.txtTitle.text = this.§=#J§.title;
                  this.§8#w§.visible = true;
                  if(this.§6O§.§7T§)
                  {
                     this.§8#w§.y = §+"T§;
                  }
                  else
                  {
                     this.§8#w§.y = §,"y§;
                  }
                  this.§!;§ = this.mLevelManager.currentLevel;
                  this.§![§ = this.§=#J§.standings;
                  this.§"!8§();
                  this.§]!T§(false);
                  this.§`"E§(this.§=#J§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§=#J§.standings.length)
                     {
                        if(this.§=#J§.standings[_loc4_] is §[!V§ && this.§=#J§.standings[_loc4_].userId == this.§5"U§)
                        {
                           param2 = this.§=#J§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§![§ = [];
                  this.§]!T§(false);
                  this.§`"E§(false);
               }
               break;
            case §,!]§:
               this.§#![§(§3#-§);
               if(this.§4"L§)
               {
                  this.§!;§ = this.mLevelManager.currentLevel;
                  this.§1!7§.visible = true;
                  this.§[R§(this.§4"L§.leagueId);
                  this.§![§ = this.§4"L§.standings;
                  this.§]!T§(!this.§4"L§.loadingScores && this.§4"L§.standings.length == 0);
                  this.§`"E§(this.§4"L§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§4"L§.standings)
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
                  this.§![§ = [];
                  this.§]!T§(false);
                  this.§`"E§(false);
                  this.§[R§(null);
               }
               this.§["A§(true,true);
               this.§"!8§();
               break;
            case §#!3§:
               this.§["A§(false,this.§="m§() == §3#-§);
               this.§![§ = [];
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§]!T§(false);
               this.§`"E§(true);
               this.§[R§(null);
               break;
            case §1#O§:
               this.§#![§(§-",§);
               this.§["A§(false,false);
               this.§![§ = [];
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§]!T§(false);
               this.§`"E§(true);
               break;
            case §,"P§:
               this.§#![§(§-",§);
               this.§["A§(false,false);
               this.§8#w§.visible = false;
               this.§!;§ = "";
               this.§![§ = [];
               this.§"!8§();
               this.§,"2§(§ <§);
               this.§]!T§(false);
               this.§`"E§(false);
         }
         this.§9!P§(param2);
         this.§?#p§();
         if(this.§8$6§ != param1)
         {
            this.§8$6§ = param1;
            dispatchEvent(new §2"R§(§2"R§.§%#<§,{"tab":this.§##+§}));
         }
      }
      
      private function §]!T§(param1:Boolean) : void
      {
         this.§'"+§.mcNotInLeague.visible = param1;
         this.§'"+§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§'"+§.NotInLeagueBG.visible = param1;
         this.§'"+§.mcRankingBadgeBg.visible = param1;
         this.§'"+§.mcRankingBadgeBg.gotoAndStop(1);
         if(param1)
         {
            if(§4"s§.§+!,§.currentLeague())
            {
               if(§ #F§.§+!,§.§^"Q§() == § "A§.§in §)
               {
                  this.§'"+§.mcNotInLeague.LeaguePrize.text = "" + §4"s§.§+!,§.currentLeague().reward * 2;
                  this.§'"+§.mcRankingBadgeBg.gotoAndStop(2);
               }
               else
               {
                  this.§'"+§.mcNotInLeague.LeaguePrize.text = §4"s§.§+!,§.currentLeague().reward.toString();
               }
            }
         }
      }
      
      private function §9!P§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§![§.length)
            {
               if(this.§![§[_loc5_].userId == this.§5"U§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§>o§.offset;
         var _loc3_:int = Math.floor(this.§>o§.§["j§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§>o§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§>o§.scroll(param1);
            this.§?#p§();
         }
      }
      
      private function §?#p§() : void
      {
         var _loc1_:* = this.§>o§.offset != 0;
         var _loc2_:* = this.§>o§.offset != this.§>o§.data.length - this.§>o§.§["j§;
         this.§'"+§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§'"+§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §%S§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§[!V§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(!this.§6O§ || !this.§>#R§ || this.§!;§ != param1)
         {
            return {};
         }
         this.§+"o§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§!!"§ = new Object();
         this.§!!"§.originalRank = 0;
         this.§!!"§.rankAfterUpdate = 0;
         this.§!!"§.leagueOriginalRank = 0;
         this.§!!"§.leagueRankAfterUpdate = 0;
         if(this.§%$;§)
         {
            this.§!!"§.leagueOriginalRank = this.§%$;§.§8"d§(this.§5"U§);
            this.§!!"§.leagueRankAfterUpdate = this.§%$;§.§%S§(param2,param3,param4,_loc7_);
            this.§0"F§(§,!]§,this.§%$;§.data,this.§!!"§.leagueRankAfterUpdate);
         }
         this.§!!"§.originalRank = this.§6O§.§8"d§(this.§5"U§);
         this.§!!"§.rankAfterUpdate = this.§6O§.§%S§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§+"o§.push(_loc8_);
            _loc10_ = _loc8_.rank - 1;
            §<"G§.§%#"§(_loc10_.toString());
         }
         _loc9_ = !!param5 ? int(§<j§) : int(§ "s§);
         this.§0"F§(_loc9_,this.§>#R§,this.§!!"§.rankAfterUpdate);
         return this.§!!"§;
      }
      
      public function §'[§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0 || this.§'"+§.mcButtonsContainer.btnShopLarge.visible || this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible)
         {
            this.§'"+§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§'"+§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§'"+§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§'"+§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §>0§.§9#9§(param1);
            this.§'"+§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§'"+§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§'"+§.mcButtonsContainer.txtInboxItemCount.x + this.§'"+§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §"!8§() : void
      {
         var _loc4_:§0!u§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc1_:Dictionary = §4!g§.§+!,§.§;"q§();
         var _loc2_:Array = this.§![§.concat();
         var _loc3_:int = this.§![§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§![§[_loc3_];
            _loc5_ = false;
            for each(_loc6_ in _loc1_)
            {
               if(_loc6_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
                  _loc5_ = true;
               }
            }
            for each(_loc7_ in §4"S§)
            {
               if(_loc7_ == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§![§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§>o§.data = _loc2_;
      }
      
      public function §6#n§() : String
      {
         return "Friendsbar";
      }
      
      private function §0!c§(param1:Boolean) : void
      {
         if(§]#0§.§+!,§.§'!u§ && §]#0§.§+!,§.§'!u§.§-#>§(§>#T§.§8"[§) && param1)
         {
            this.§'"+§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§'"+§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§'"+§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§'"+§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §=#Y§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §4"S§.push(_loc2_.id);
         }
         this.§"!8§();
         this.§>o§.refresh();
         this.§?#p§();
      }
      
      public function §8!4§() : void
      {
         var _loc1_:Boolean = §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.length > 0 || §=#o§(AngryBirdsBase.singleton.dataModel).§45§.length > 0;
         this.§'"+§.mcButtonsContainer.mcNewTagShop.visible = _loc1_ && !this.§'"+§.mcButtonsContainer.btnShopLarge.visible && !this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible;
         this.§'"+§.mcButtonsContainer.mcNewTagShopLarge.visible = _loc1_ && (this.§'"+§.mcButtonsContainer.btnShopLarge.visible || this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible);
         this.§'"+§.mcButtonsContainer.Tag_Sale_Shop.visible = this.§-T§() && !this.§'"+§.mcButtonsContainer.btnShopLarge.visible && !this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible;
         if(this.§-T§() && (this.§'"+§.mcButtonsContainer.btnShopLarge.visible || this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible))
         {
            this.§'"+§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§'"+§.mcButtonsContainer.btnShopLargeSale.visible = true;
         }
         var _loc2_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc2_)
         {
            _loc2_.§[!a§.§;!r§();
         }
      }
      
      private function §-T§() : Boolean
      {
         var _loc1_:§=#o§ = §=#o§(AngryBirdsBase.singleton.dataModel);
         return _loc1_.§[!§ || _loc1_.§`![§ || _loc1_.§^^§;
      }
      
      public function §6! §(param1:Boolean = false) : void
      {
         this.§'"+§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§##+§ == §-",§;
         this.§'"+§.mcButtonsContainer.Tag_Sale_Avatar.visible = §=#o§(AngryBirdsBase.singleton.dataModel).§&5§ && this.§##+§ == §-",§;
         MovieClip(this.§'"+§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§'"+§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §["A§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(!param1)
         {
            this.§6!+§(§-",§);
         }
         else if(param2)
         {
            this.§6!+§(this.§##+§);
            this.§7#;§(this.§##+§ == §3#-§);
         }
         else
         {
            this.§6!+§(§-",§);
            this.§7#;§(false);
         }
      }
      
      public function §="m§() : String
      {
         return this.§##+§;
      }
      
      public function §-"t§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§6O§ = null;
         if(_loc2_)
         {
            this.§6O§ = this.§"![§.§&#@§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§4$,§(),this.mLevelManager.§4$,§());
            if(this.§6O§.§9$$§)
            {
               this.§6O§.addEventListener(§6#A§.§4$&§,this.§ [§);
            }
            else
            {
               this.§ [§(null,param1);
            }
         }
      }
      
      private function § [§(param1:§6#A§, param2:int = -1) : void
      {
         var _loc4_:§[!V§ = null;
         var _loc5_:Object = null;
         this.§6O§.removeEventListener(§6#A§.§4$&§,this.§ [§);
         this.§>#R§ = new Array();
         §4!h§.§>y§ = new Vector.<§[!V§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§6O§.data.length)
         {
            if(_loc4_ = this.§6O§.data[_loc3_])
            {
               _loc4_.§+!d§ = this.§6O§.§7T§;
               if(_loc4_.§#!§)
               {
                  if(§4!h§.§6M§.indexOf(_loc4_.userId) == -1)
                  {
                     §4!h§.§>y§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§+"o§)
                  {
                     for each(_loc5_ in this.§+"o§)
                     {
                        if(_loc5_.userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§>#R§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§>#R§.length == 0)
         {
            _loc4_ = new §[!V§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName,null,0,0,0,1,null,0,null);
            this.§>#R§.push(_loc4_);
            this.§6O§.§,"Z§(_loc4_);
         }
         else if(§@#5§.§=D§(§@#5§.§;##§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§>#R§.length)
            {
               this.§>#R§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         if(this.mLevelManager.§4$,§())
         {
            this.§0"F§(§<j§,this.§>#R§,param2);
         }
         else
         {
            this.§0"F§(§ "s§,this.§>#R§,param2);
         }
      }
      
      public function §8"!§() : void
      {
         if(this.mLevelManager.§4$,§() && §4"s§.§+!,§.active)
         {
            if(!this.§%$;§ || !this.§%$;§.§9$$§)
            {
               this.§%$;§ = §4"s§.§+!,§.§&#@§(this.mLevelManager.currentLevel,true);
               if(this.§%$;§.§9$$§)
               {
                  this.§%$;§.addEventListener(§6#A§.§4$&§,this.§]$8§);
               }
               else
               {
                  this.§]$8§(null);
               }
            }
         }
      }
      
      private function §]$8§(param1:§6#A§) : void
      {
         this.§%$;§.removeEventListener(§6#A§.§4$&§,this.§]$8§);
         this.§0"F§(§,!]§,this.§%$;§.data);
      }
      
      public function §["O§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§%#7§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §'"H§.STATE_NAME || _loc1_ == §]!p§.STATE_NAME || _loc1_ == §+!F§.STATE_NAME || _loc1_ == §>"d§.STATE_NAME || _loc1_ == §6$1§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §##§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§[N§ && this.§[N§.standings)
         {
            for each(_loc3_ in this.§[N§.standings)
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
         if(this.§4"L§ && this.§4"L§.standings)
         {
            for each(_loc3_ in this.§4"L§.standings)
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
         if(this.§+!i§ && this.§+!i§.standings)
         {
            for each(_loc3_ in this.§+!i§.standings)
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
         if(this.§6!c§ && this.§6!c§.standings)
         {
            for each(_loc3_ in this.§6!c§.standings)
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
         this.§`##§(this.§8$6§);
      }
      
      private function §`"E§(param1:Boolean) : void
      {
         this.§'"+§.mcLoadingSpinner.visible = param1;
      }
      
      public function §6#>§() : §4!h§
      {
         if(this.§8$6§ == §,!]§)
         {
            return this.§%$;§;
         }
         return this.§6O§;
      }
      
      private function §2"1§() : Array
      {
         var _loc4_:static = null;
         var _loc1_:Vector.<static> = §8#g§.§5!9§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §4!h§.§=@§)
            {
               break;
            }
            _loc2_.push(new §-n§(_loc4_.userID,_loc4_.name));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §4"2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §4!h§.§3#^§.length && _loc2_ < §4!h§.§+>§)
         {
            if(§4!h§.§6M§.indexOf(§4!h§.§3#^§[_loc3_].userId) == -1)
            {
               _loc1_.push(§4!h§.§3#^§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §'"h§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §4!h§.§>y§.length && _loc2_ < §4!h§.§+>§)
         {
            if(§4!h§.§6M§.indexOf(§4!h§.§>y§[_loc3_].userId) == -1)
            {
               _loc1_.push(§4!h§.§>y§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function § $'§() : int
      {
         return this.§8$6§;
      }
      
      public function levelStarted() : void
      {
         this.§+"o§ = new Array();
         this.§@"k§ = new Array();
         this.§!!"§ = null;
      }
      
      private function §0"T§() : void
      {
         if(!this.§'"+§.hasEventListener(MouseEvent.CLICK))
         {
            this.§'"+§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§!z§);
         }
      }
      
      private function §9#M§() : void
      {
         this.§'"+§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§!z§);
      }
      
      public function § E§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§@"k§)
         {
            for each(_loc2_ in this.§@"k§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §1#]§() : Array
      {
         return this.§+"o§;
      }
      
      public function §"#9§(param1:Boolean) : int
      {
         if(this.§!!"§)
         {
            if(!param1)
            {
               return this.§!!"§.rankAfterUpdate;
            }
            if(this.§!!"§.originalRank > this.§!!"§.rankAfterUpdate)
            {
               return this.§!!"§.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function §[R§(param1:String, param2:Boolean = false) : void
      {
         var ld:§3$-§ = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:§3$-§ = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:§3$-§ = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         var leagueID:String = param1;
         var showOnlyLeagueIcon:Boolean = param2;
         if(leagueID == null)
         {
            this.§1!7§.LeagueProgBar.visible = false;
            this.§1!7§.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = §4"s§.§+!,§.§+S§();
         this.§1!7§.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.§1!7§.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.§1!7§.visible = playerLeagueProfile != null;
            this.§1!7§.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in §6#P§.§]$+§)
         {
            this.§1!7§.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.§1!7§.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = §4"s§.§+!,§.currentLeague();
            if(currentLeague)
            {
               nextLeague = §6#P§.§"M§(currentLeague.id);
               currentLeagueRatingMin = currentLeague.§"$A§;
               currentLeagueRatingMax = nextLeague.§"$A§;
            }
            if(currentLeague.name == §6#P§.§<!a§())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = §4"s§.§+!,§.§>!7§();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - §6#P§.§>$0§ >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / §6#P§.§>$0§);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += §6#P§.§>$0§ * playerRankStarAmount;
               currentLeagueRatingMax += §6#P§.§>$0§ * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.§1!7§.LeagueProgBar.StarIcon.visible = true;
                  this.§1!7§.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.§1!7§.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.§1!7§.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.§1!7§.height);
            this.§1!7§.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.§1!7§.LeagueProgBar.ProgText01.visible = true;
               this.§1!7§.LeagueProgBar.ProgText02.visible = false;
               this.§1!7§.LeagueProgBar.ProgText03.visible = false;
               this.§1!7§.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.§1!7§.LeagueProgBar.ProgText01.visible = false;
               this.§1!7§.LeagueProgBar.ProgText02.visible = true;
               this.§1!7§.LeagueProgBar.ProgText03.visible = false;
               this.§1!7§.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.§1!7§.LeagueProgBar.ProgText01.visible = false;
               this.§1!7§.LeagueProgBar.ProgText02.visible = false;
               this.§1!7§.LeagueProgBar.ProgText03.visible = true;
               this.§1!7§.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.§1!7§.visible = false;
            fn = function(param1:§+"g§):void
            {
               §4"s§.§+!,§.removeEventListener(§+"g§.§7#i§,fn);
               §[R§(leagueID);
            };
            §4"s§.§+!,§.addEventListener(§+"g§.§7#i§,fn);
         }
      }
   }
}
