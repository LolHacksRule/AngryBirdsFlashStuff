package §1"l§
{
   import § §.§[$3§;
   import §!#C§.§ "q§;
   import §!#C§.§ $?§;
   import §!#C§.§#"E§;
   import §!#C§.§0#;§;
   import §!#C§.§1%§;
   import §!#C§.§4!Q§;
   import §!#C§.§5H§;
   import §!#C§.§;!$§;
   import §!#C§.§;s§;
   import §"",§.§4#Q§;
   import §"c§.§3!d§;
   import §##Z§.§"#Q§;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §&!_§.§4!H§;
   import §,"v§.§;#A§;
   import §0"B§.§##G§;
   import §0"B§.§6$5§;
   import §1#v§.§;!Y§;
   import §1L§.§0#=§;
   import §2";§.§!"m§;
   import §2";§.§9§;
   import §2";§.StatePlay;
   import §3+§.§#D§;
   import §3+§.§7#+§;
   import §3+§.StateTournamentResults;
   import §3+§.§`o§;
   import §7"G§.§8$?§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §;"W§.GiftInboxPopup;
   import §<!r§.§'##§;
   import §=§.§"o§;
   import §=§.§0V§;
   import §=§.§5$9§;
   import §=E§.§0"9§;
   import §=E§.§<T§;
   import §?!]§.§2#_§;
   import §?!]§.§6#k§;
   import §[!o§.§4!F§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`""§ extends Sprite implements §%!#§
   {
      
      public static var §'!'§:Boolean = false;
      
      public static const §"!V§:String = "SidebarButtonStateInfo";
      
      public static const §@?§:String = "SidebarButtonStatePlay";
      
      public static const §+#X§:String = "SidebarButtonStateNone";
      
      public static const §2$?§:String = "SidebarButtonStateNoTutorial";
      
      public static const §8#p§:String = "SidebarButtonStatePause";
      
      public static const §[!-§:int = 0;
      
      public static const §7#Z§:int = 1;
      
      public static const §`!S§:int = 2;
      
      public static const §##k§:int = 3;
      
      public static const §;M§:int = 4;
      
      public static const §&!&§:int = 5;
      
      public static const §>#D§:int = 6;
      
      public static const §`"y§:int = 7;
      
      public static const §`"j§:int = 8;
      
      public static const §2"5§:int = 9;
      
      public static const §"!D§:int = 10;
      
      public static const §8$,§:int = 11;
      
      private static const §&"E§:int = 40;
      
      private static const §;"S§:int = 20;
      
      public static var §!s§:Array = [];
      
      public static const §"q§:String = "Friends";
      
      public static const §]"e§:String = "League";
       
      
      private var §`O§:int;
      
      private var §%D§:Object;
      
      private var §+#r§:Object;
      
      private var §]"F§:Object;
      
      private var §'$3§:Object;
      
      private var §;>§:Object;
      
      private var §?!;§:Object;
      
      private var §-!q§:Object;
      
      private var §3!5§:Object;
      
      private var §^#@§:§"o§;
      
      private var § "`§:Array;
      
      private var §1!%§:MovieClip;
      
      private var native:MovieClip;
      
      private var §2!G§:MovieClip;
      
      private var §0#`§:String;
      
      private var §?"v§:§6$5§;
      
      private var §0",§:String = "";
      
      private var §4"2§:§##G§;
      
      private var §4!5§:Array;
      
      private var §[!E§:§##G§;
      
      private var §6!y§:Boolean;
      
      private var §]$#§:String;
      
      private var §1#h§:String;
      
      private var §,!Y§:Boolean;
      
      private var §1"V§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §2!C§:Number;
      
      private var mLevelManager:§;#A§;
      
      private var §5!a§:Array;
      
      private var §[" §:Array;
      
      private var § ![§:Object;
      
      public function §`""§(param1:§6$5§, param2:String, param3:String, param4:§;#A§)
      {
         this.§5!a§ = [];
         this.§[" § = [];
         super();
         §5$9§.§3"P§ = param3;
         this.§1#h§ = param3;
         this.§?"v§ = param1;
         this.§0#`§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§2!Y§(false,false);
         this.§>"&§(§"q§);
      }
      
      private function init() : void
      {
         this.native = new §6$A§.§1!m§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.native.tabChildren = false;
         addChild(this.native);
         MovieClip(this.native.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.native.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         MovieClip(this.native.mcOverlappingTournaments).visible = false;
         this.§-#Y§(false);
         this.§^#@§ = new §"o§(330,180,[],§5$9§,2,15);
         addChild(this.§^#@§.scrollerSprite);
         this.§^#@§.scrollerSprite.x = 180 + 7;
         this.§^#@§.scrollerSprite.rotation = 90;
         this.native.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§>!H§);
         this.native.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§4!a§);
         this.native.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§@!d§);
         this.native.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.§]"o§);
         this.native.mcButtonsContainer.btnShopLargeSale.addEventListener(MouseEvent.CLICK,this.§]"o§);
         this.native.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§;!g§);
         this.native.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§<$%§);
         this.native.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§]"o§);
         this.native.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§%$5§);
         this.native.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§3R§);
         this.native.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.native.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.native.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.native.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§2!G§ = this.native.LeagueInfo as MovieClip;
         this.§2!G§.visible = false;
         this.§2!G§.addEventListener(MouseEvent.CLICK,this.§=!6§);
         this.§2!G§.buttonMode = true;
         this.§2!G§.useHandCursor = true;
         this.§2!G§.mouseChildren = false;
         this.§<m§(false);
         this.§^#@§.scrollerSprite.addEventListener(§6#k§.§^"$§,this.§&">§);
         this.§^#@§.scrollerSprite.addEventListener(§6#k§.§=#n§,this.§'!B§);
         this.§^#@§.scrollerSprite.addEventListener(§6#k§.§4!x§,this.§,!a§);
         this.§+e§();
         this.§6!y§ = true;
         this.§1!%§ = this.native.mcTitle as MovieClip;
         this.§1!%§.txtTitle.text = "";
         this.§1!%§.visible = false;
         this.§&"Z§(GiftInboxPopup.§1Z§);
         this.§[k§(true);
         this.§6$&§(§4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§);
         MovieClip(this.native.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.native.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.§,"l§();
         § !+§.addCallback("giftsSentToUsers",this.§3C§);
         § !+§.addCallback("challengeSentToUser",this.§3#F§);
         § !+§.addCallback("bragCompleted",this.§0">§);
         if(§<$2§.§`"H§.active)
         {
            this.§4"X§(§]"e§);
            this.§>"&§(§]"e§,false);
         }
         else
         {
            this.§4"X§(§"q§);
            this.§>"&§(§"q§,false);
         }
      }
      
      private function §0##§() : Boolean
      {
         return this.§]"F§ != null && this.§`O§ == §`!S§ || this.§3!5§ != null && this.§`O§ == §`"j§ || this.§'$3§ != null && this.§`O§ == §##k§ || this.§;>§ != null && this.§`O§ == §;M§;
      }
      
      private function §=!6§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§[!O§));
      }
      
      private function §<m§(param1:Boolean) : void
      {
         this.native.mcButtonsContainer.btnAvatar.visible = !param1;
         this.native.mcButtonsContainer.btnInvite.visible = !param1;
         this.native.mcButtonsContainer.btnGift.visible = !param1;
         this.native.mcButtonsContainer.btnShop.visible = !param1;
         if(param1)
         {
            this.native.mcButtonsContainer.btnShopLarge.visible = !this.§,$6§();
            this.native.mcButtonsContainer.btnShopLargeSale.visible = this.§,$6§();
         }
         else
         {
            this.native.mcButtonsContainer.btnShopLarge.visible = false;
            this.native.mcButtonsContainer.btnShopLargeSale.visible = false;
         }
         this.§[k§(false);
         this.§&"Z§(GiftInboxPopup.§1Z§);
      }
      
      private function §+e§() : void
      {
         this.btnTabFriends = this.native.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.native.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§7"H§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§-"l§);
      }
      
      protected function §-"l§(param1:MouseEvent) : void
      {
         if(this.§1"V§ != §]"e§)
         {
            §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         }
         if(this.§,#-§())
         {
            this.§'u§(§`"j§);
         }
         else if(AngryBirdsBase.singleton.§'!&§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§2!x§ == StateTournamentResults.§="M§)
            {
               this.§'u§(§;M§);
            }
            else
            {
               this.§'u§(§##k§);
            }
         }
         else
         {
            this.§'u§(§`!S§);
         }
      }
      
      protected function §7"H§(param1:MouseEvent) : void
      {
         if(this.§1"V§ != §"q§)
         {
            §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         }
         if(this.§,#-§())
         {
            this.§'u§(§>#D§);
         }
         else if(AngryBirdsBase.singleton.§'!&§() == StateTournamentResults.STATE_NAME)
         {
            this.§'u§(§7#Z§);
         }
         else
         {
            this.§'u§(§[!-§);
         }
      }
      
      private function §>"&§(param1:String, param2:Boolean = true) : void
      {
         if(this.§1"V§ == param1)
         {
            return;
         }
         this.§1"V§ = param1;
         this.§4"X§(param1);
         this.§<m§(this.§1"V§ == §]"e§);
         if(this.§1"V§ == §"q§)
         {
            this.§6$&§(§4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§);
         }
         else
         {
            this.§6$&§(false);
         }
         if(param2)
         {
            §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§'"=§,[this.§1"V§],true);
         }
         this.§,"l§();
      }
      
      private function §4"X§(param1:String) : void
      {
         this.native.mcTop.gotoAndStop(param1);
         this.native.mcMiddle.gotoAndStop(param1);
         this.native.mcBottom.gotoAndStop(param1);
      }
      
      private function §3C§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§5$9§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§^#@§.§#!&§)
            {
               if(_loc4_.§'#Z§.data && _loc3_ == _loc4_.§'#Z§.data.userId)
               {
                  if(_loc4_.§'#Z§ is §0V§)
                  {
                     §0V§(_loc4_.§'#Z§).setCanSendGift(false,true);
                  }
                  §1%§.§`"H§.§ #x§(_loc4_.§'#Z§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §,!2§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§]$#§ == param1)
         {
            return;
         }
         §;!Y§.log("Changing state");
         this.§]$#§ = param1;
         switch(this.§]$#§)
         {
            case §"!V§:
               §;!Y§.log("Info state");
               this.§]&§();
               MovieClip(this.native.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.native.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).visible = false;
               this.native.mcButtonsContainer.btnInfo.enabled = true;
               this.§6!y§ = true;
               break;
            case §+#X§:
            case §8#p§:
            case §2$?§:
               §;!Y§.log("None state");
               this.§6S§();
               MovieClip(this.native.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.native.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case §@?§:
               §;!Y§.log("Play state");
               this.§]&§();
               MovieClip(this.native.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.native.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.native.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.native.mcButtonsContainer.btnInfo.enabled = true;
               this.§6!y§ = false;
         }
         (§7n§.§-$<§ as § #v§).§[#t§(this.§]$#§);
      }
      
      public function §'t§() : void
      {
         if(§3Z§.§&"A§)
         {
            MovieClip(this.native.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.native.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§]-§,[§3Z§.§&"A§],true);
      }
      
      public function §const§(param1:String) : void
      {
         this.native.mcButtonsContainer.btnAvatar.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnAvatar.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShopLarge.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShopLarge.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnShopLarge.mouseEnabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShopLargeSale.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShopLargeSale.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnShopLargeSale.mouseEnabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnInvite.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnInvite.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnGift.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnGift.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnGift.mouseEnabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShop.enabled = param1 != §+#X§;
         this.native.mcButtonsContainer.btnShop.alpha = param1 == §+#X§ ? 0.5 : 1;
         this.native.mcButtonsContainer.btnShop.mouseEnabled = param1 != §+#X§;
      }
      
      private function §@!d§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§4i§));
      }
      
      private function §;!g§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§"N§));
      }
      
      private function §'!B§(param1:§6#k§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         § !+§.§>$%§("updateSessionToken",§0#=§.§+#!§);
         § !+§.§>$%§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName,param1.data.userId,§5H§.§^"M§(§5H§.§'=§));
         §!!K§.§%#S§().§&!r§(1,"SIDEBAR");
      }
      
      private function §,!a§(param1:§6#k§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         § !+§.§>$%§("updateSessionToken",§0#=§.§+#!§);
         § !+§.§>$%§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName,§'##§.§`"H§.§=k§,param1.data.userId,§5H§.§^"M§(§5H§.§,"5§));
      }
      
      private function §0">§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§5!a§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§[" §)
         {
            this.§[" §.push(param1);
         }
      }
      
      private function §3#F§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§8$?§ = new §8$?§();
         _loc2_.§2#x§([param1]);
         if(§'##§.§`"H§.§;#Q§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §'##§.§`"H§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §!!K§.§%#S§().§ "y§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,param1,§'##§.§`"H§.§;#Q§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §##G§.§@!-§.length)
         {
            if(§##G§.§@!-§[_loc3_].userId == param1)
            {
               §##G§.§@!-§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §##G§.§##F§.push(param1);
         var _loc4_:int = this.§^#@§.offset + this.§^#@§.§=#V§ / 2;
         this.§^D§(this.§`O§,null,_loc4_);
      }
      
      private function §&">§(param1:§6#k§) : void
      {
         § !+§.addCallback("invitationBatchSent",this.§'#s§);
         § !+§.addCallback("invitationBatchCancel",this.§79§);
         dispatchEvent(new §6#k§(§6#k§.§"N§,param1.data as §#"E§));
      }
      
      private function §'#s§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         § !+§.§?!§("invitationBatchSent",this.§'#s§);
         § !+§.§?!§("invitationBatchCancel",this.§79§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§^#@§.§=#V§ / 2);
            _loc3_ = this.§^#@§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§?"v§.§"X§().data.length)
            {
               if(this.§?"v§.§"X§().data[_loc4_].userId == param1)
               {
                  this.§?"v§.§"X§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §!s§.push(param1);
            this.§ >§();
            this.§^#@§.refresh();
            this.§45§(_loc3_);
            this.§[!P§();
         }
      }
      
      private function §79§() : void
      {
         § !+§.§?!§("invitationBatchSent",this.§'#s§);
         § !+§.§?!§("invitationBatchCancel",this.§79§);
      }
      
      private function §]"o§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§<"c§));
         this.§[k§(false);
      }
      
      private function §%$5§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§;[§));
      }
      
      private function §3R§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6#k§(§6#k§.§3>§));
         this.§'t§();
      }
      
      private function §"$,§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         if(this.§6!y§)
         {
            §;!Y§.log(§6#k§.§%!;§);
            dispatchEvent(new §6#k§(§6#k§.§%!;§));
         }
         else
         {
            §;!Y§.log(§6#k§.§#"H§);
            dispatchEvent(new §6#k§(§6#k§.§#"H§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§2!C§ = Math.max(param1,330);
         this.native.mcMiddle.height = this.§2!C§ - this.native.mcTop.height - this.native.mcBottom.height;
         this.native.mcBottom.y = this.§2!C§ - this.native.mcBottom.height;
         this.native.mcButtonsContainer.y = this.§2!C§ - this.native.mcButtonsContainer.height + 7;
         this.§^#@§.scrollerSprite.y = 104;
         this.§^#@§.setWidth(this.§2!C§ - 255);
         this.§[!P§();
      }
      
      private function §>!H§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Shop_Selection",§3Z§.§[!F§);
         this.scroll(-this.§^#@§.§=#V§);
      }
      
      private function §4!a§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Shop_Selection",§3Z§.§[!F§);
         this.scroll(this.§^#@§.§=#V§);
      }
      
      private function §<$%§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         dispatchEvent(new §6#k§(§6#k§.§[$"§));
      }
      
      public function §^D§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §[!-§:
               if(!this.§%D§)
               {
                  this.§%D§ = new Object();
                  this.§%D§.title = "Tournament scores";
                  this.§%D§.data = [];
                  this.§%D§.standings = [];
               }
               if(param2)
               {
                  this.§%D§.standings = param2;
                  this.§]&§();
               }
               if(§'!'§)
               {
                  this.§%D§.data = this.§%D§.standings.concat(this.§,"j§());
                  this.§%D§.data = this.§%D§.data.concat(this.§5",§());
               }
               else
               {
                  this.§%D§.data = this.§%D§.standings.concat(new § "q§(""));
               }
               _loc4_ = this.§;#Y§() == §"q§;
               break;
            case §7#Z§:
               if(!this.§+#r§)
               {
                  this.§+#r§ = new Object();
                  this.§+#r§.title = "Previous scores";
               }
               this.§+#r§.standings = param2;
               if(§<$2§.§`"H§.active && (§<$2§.§`"H§.§>!L§ || §<$2§.§`"H§.§&$B§))
               {
                  _loc4_ = this.§;#Y§() == §"q§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§]&§();
               break;
            case §`!S§:
               if(!this.§]"F§)
               {
                  this.§]"F§ = new Object();
                  this.§]"F§.leagueId = "NONE";
               }
               if(§<$2§.§`"H§.currentLeague())
               {
                  this.§]"F§.leagueId = §<$2§.§`"H§.currentLeague().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§]"F§.standings = param2;
               if(this.§;#Y§() == §]"e§ && this.§`O§ != §`"j§)
               {
                  _loc4_ = true;
               }
               break;
            case §##k§:
               if(!this.§'$3§)
               {
                  this.§'$3§ = new Object();
                  this.§'$3§.leagueId = "NONE";
               }
               if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.l)
               {
                  _loc5_ = §<$2§.§`"H§.§&$B§.l;
                  this.§'$3§.leagueId = _loc5_.pli.tn;
               }
               this.§'$3§.standings = param2;
               _loc4_ = this.§;#Y§() == §]"e§;
               this.§]&§();
               break;
            case §;M§:
               if(!this.§;>§)
               {
                  this.§;>§ = new Object();
                  this.§;>§.title = "";
                  this.§;>§.leagueId = "NONE";
               }
               if(§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l && §<$2§.§`"H§.§>!L§.l.p)
               {
                  _loc6_ = §<$2§.§`"H§.§>!L§.l;
                  this.§;>§.title = _loc6_.pli.ln;
                  this.§;>§.leagueId = _loc6_.pli.tn;
               }
               this.§;>§.standings = param2;
               _loc4_ = Boolean(this.§;#Y§() == §]"e§ && StateTournamentResults.§2!x§ == StateTournamentResults.§="M§);
               this.§]&§();
               break;
            case §&!&§:
               if(!this.§?!;§)
               {
                  this.§?!;§ = new Object();
                  this.§?!;§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§?!;§.standings = [];
               }
               else
               {
                  this.§?!;§.standings = param2;
                  if(!§'!'§)
                  {
                     this.§?!;§.standings = this.§?!;§.standings.concat(new § "q§(""));
                  }
                  this.§]&§();
               }
               _loc4_ = true;
               break;
            case §>#D§:
            case §`"y§:
               if(!this.§-!q§)
               {
                  this.§-!q§ = new Object();
                  this.§-!q§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§@!>§(param3);
                  return;
               }
               if(!§'!'§)
               {
                  param2 = param2.concat(new § "q§(""));
               }
               else
               {
                  if(this.§4"2§.§^!H§)
                  {
                     param2 = param2.concat(this.§8"`§());
                  }
                  param2 = param2.concat(this.§5",§());
               }
               this.§-!q§.standings = param2;
               _loc4_ = this.§;#Y§() == §"q§;
               this.§]&§();
               break;
            case §`"j§:
               if(!this.§3!5§)
               {
                  this.§3!5§ = new Object();
                  this.§3!5§.leagueId = "NONE";
                  this.§3!5§.loadingScores = false;
               }
               if(§<$2§.§`"H§.currentLeague())
               {
                  this.§3!5§.leagueId = §<$2§.§`"H§.currentLeague().id;
               }
               if(!param2)
               {
                  this.§3!5§.standings = [];
                  this.§!"P§();
                  this.§3!5§.loadingScores = true;
                  return;
               }
               this.§3!5§.standings = param2;
               this.§3!5§.loadingScores = false;
               _loc4_ = this.§;#Y§() == §]"e§;
               this.§]&§();
               break;
            case §2"5§:
            case §"!D§:
               if(this.§[!E§)
               {
                  this.§[!E§.removeEventListener(§2#_§.§]"I§,this.§0"'§);
                  this.§[!E§ = null;
               }
               if(this.§4"2§)
               {
                  this.§4"2§.removeEventListener(§2#_§.§]"I§,this.§#?§);
                  this.§4"2§ = null;
               }
               _loc4_ = true;
               this.§6S§();
               break;
            case §8$,§:
               _loc4_ = true;
               this.§]&§();
         }
         this.native.mcOverlappingTournaments.visible = param1 == §8$,§;
         if(_loc4_)
         {
            this.§'u§(param1,param3);
         }
      }
      
      public function §'u§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§;s§ = null;
         this.§2!G§.visible = false;
         this.§1!%§.visible = false;
         switch(param1)
         {
            case §[!-§:
               this.§>"&§(§"q§);
               if(this.§%D§)
               {
                  this.§1!%§.txtTitle.text = this.§%D§.title;
                  this.§1!%§.visible = true;
                  this.§1!%§.y = §&"E§;
                  this.§ "`§ = this.§%D§.data;
               }
               else
               {
                  this.§ "`§ = [];
               }
               this.§0",§ = "";
               this.§2!Y§(§<$2§.§`"H§.active,false);
               this.§-#Y§(false);
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§]!7§(false);
               break;
            case §7#Z§:
               this.§>"&§(§"q§);
               if(this.§+#r§)
               {
                  this.§1!%§.txtTitle.text = this.§+#r§.title;
                  this.§1!%§.visible = true;
                  this.§1!%§.y = §&"E§;
                  this.§ "`§ = this.§+#r§.standings;
               }
               else
               {
                  this.§ "`§ = [];
               }
               this.§0",§ = "";
               _loc3_ = §<$2§.§`"H§.active && (§<$2§.§`"H§.§>!L§ || §<$2§.§`"H§.§&$B§);
               this.§2!Y§(_loc3_,false);
               this.§-#Y§(false);
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§]!7§(false);
               break;
            case §`!S§:
               this.§>"&§(§]"e§);
               this.§]!7§(false);
               if(this.§]"F§)
               {
                  this.§2!G§.visible = true;
                  this.§&""§(this.§]"F§.leagueId);
                  this.§ "`§ = this.§]"F§.standings;
                  this.§-#Y§(this.§]"F§.standings != null && this.§]"F§.standings.length == 0);
               }
               else
               {
                  this.§ "`§ = [];
                  this.§-#Y§(false);
                  this.§&""§(null);
               }
               this.§0",§ = "League";
               this.§2!Y§(true,true);
               this.§ >§();
               this.§,!2§(§"!V§);
               break;
            case §##k§:
               this.§>"&§(§]"e§);
               this.§]!7§(false);
               if(this.§'$3§)
               {
                  this.§2!G§.visible = true;
                  this.§&""§(this.§'$3§.leagueId,true);
                  this.§ "`§ = this.§'$3§.standings;
                  this.§-#Y§(this.§'$3§.standings != null && this.§'$3§.standings.length == 0);
               }
               else
               {
                  this.§ "`§ = [];
                  this.§-#Y§(true);
                  this.§&""§(null);
               }
               this.§0",§ = "League";
               this.§2!Y§(true,true);
               this.§ >§();
               this.§,!2§(§"!V§);
               break;
            case §;M§:
               this.§>"&§(§]"e§);
               this.§]!7§(false);
               if(this.§;>§)
               {
                  this.§2!G§.visible = true;
                  this.§&""§(this.§;>§.leagueId,true);
                  this.§ "`§ = this.§;>§.standings;
                  this.§-#Y§(this.§;>§.standings != null && this.§;>§.standings.length == 0);
               }
               else
               {
                  this.§ "`§ = [];
                  this.§-#Y§(true);
                  this.§&""§(null);
               }
               this.§0",§ = "League";
               this.§2!Y§(true,true);
               this.§ >§();
               this.§,!2§(§"!V§);
               break;
            case §&!&§:
               this.§>"&§(§"q§);
               this.§1!%§.txtTitle.text = this.§?!;§.title;
               this.§1!%§.visible = true;
               this.§1!%§.y = §;"S§;
               this.§0",§ = "";
               this.§2!Y§(false,false);
               this.§ "`§ = this.§?!;§.standings;
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§-#Y§(false);
               this.§]!7§(this.§?!;§.standings.length == 0);
               break;
            case §>#D§:
            case §`"y§:
               if(param1 == §>#D§)
               {
                  this.§2!Y§(true,this.§;#Y§() == §]"e§);
               }
               else
               {
                  this.§2!Y§(false,false);
               }
               this.§>"&§(§"q§);
               if(this.§-!q§)
               {
                  this.§1!%§.txtTitle.text = this.§-!q§.title;
                  this.§1!%§.visible = true;
                  if(this.§4"2§.§^!H§)
                  {
                     this.§1!%§.y = §&"E§;
                  }
                  else
                  {
                     this.§1!%§.y = §;"S§;
                  }
                  this.§0",§ = this.mLevelManager.currentLevel;
                  this.§ "`§ = this.§-!q§.standings;
                  this.§ >§();
                  this.§-#Y§(false);
                  this.§]!7§(this.§-!q§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§-!q§.standings.length)
                     {
                        if(this.§-!q§.standings[_loc4_] is §;!$§ && this.§-!q§.standings[_loc4_].userId == this.§1#h§)
                        {
                           param2 = this.§-!q§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§ "`§ = [];
                  this.§-#Y§(false);
                  this.§]!7§(false);
               }
               break;
            case §`"j§:
               this.§>"&§(§]"e§);
               if(this.§3!5§)
               {
                  this.§0",§ = this.mLevelManager.currentLevel;
                  this.§2!G§.visible = true;
                  this.§&""§(this.§3!5§.leagueId);
                  this.§ "`§ = this.§3!5§.standings;
                  this.§-#Y§(!this.§3!5§.loadingScores && this.§3!5§.standings.length == 0);
                  this.§]!7§(this.§3!5§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§3!5§.standings)
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
                  this.§ "`§ = [];
                  this.§-#Y§(false);
                  this.§]!7§(false);
                  this.§&""§(null);
               }
               this.§2!Y§(true,true);
               this.§ >§();
               break;
            case §2"5§:
               this.§2!Y§(false,this.§;#Y§() == §]"e§);
               this.§ "`§ = [];
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§-#Y§(false);
               this.§]!7§(true);
               this.§&""§(null);
               break;
            case §"!D§:
               this.§>"&§(§"q§);
               this.§2!Y§(false,false);
               this.§ "`§ = [];
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§-#Y§(false);
               this.§]!7§(true);
               break;
            case §8$,§:
               this.§>"&§(§"q§);
               this.§2!Y§(false,false);
               this.§1!%§.visible = false;
               this.§0",§ = "";
               this.§ "`§ = [];
               this.§ >§();
               this.§,!2§(§"!V§);
               this.§-#Y§(false);
               this.§]!7§(false);
         }
         this.§45§(param2);
         this.§[!P§();
         if(this.§`O§ != param1)
         {
            this.§`O§ = param1;
            dispatchEvent(new §6#k§(§6#k§.§!!&§,{"tab":this.§1"V§}));
         }
      }
      
      private function §-#Y§(param1:Boolean) : void
      {
         this.native.mcNotInLeague.visible = param1;
         this.native.NotInLeagueBirdCoinIcon.visible = param1;
         this.native.NotInLeagueBG.visible = param1;
         this.native.mcRankingBadgeBg.visible = param1;
         this.native.mcRankingBadgeBg.gotoAndStop(1);
         if(param1)
         {
            if(§<$2§.§`"H§.currentLeague())
            {
               if(§7"L§.§`"H§.§0!a§() == §4!F§.§0#V§)
               {
                  this.native.mcNotInLeague.LeaguePrize.text = "" + §<$2§.§`"H§.currentLeague().reward * 2;
                  this.native.mcRankingBadgeBg.gotoAndStop(2);
               }
               else
               {
                  this.native.mcNotInLeague.LeaguePrize.text = §<$2§.§`"H§.currentLeague().reward.toString();
               }
            }
         }
      }
      
      private function §45§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ "`§.length)
            {
               if(this.§ "`§[_loc5_].userId == this.§1#h§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§^#@§.offset;
         var _loc3_:int = Math.floor(this.§^#@§.§=#V§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§^#@§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§^#@§.scroll(param1);
            this.§[!P§();
         }
      }
      
      private function §[!P§() : void
      {
         var _loc1_:* = this.§^#@§.offset != 0;
         var _loc2_:* = this.§^#@§.offset != this.§^#@§.data.length - this.§^#@§.§=#V§;
         this.native.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.native.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §1#I§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§;!$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(!this.§4"2§ || !this.§4!5§ || this.§0",§ != param1)
         {
            return {};
         }
         this.§5!a§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§ ![§ = new Object();
         this.§ ![§.originalRank = 0;
         this.§ ![§.rankAfterUpdate = 0;
         this.§ ![§.leagueOriginalRank = 0;
         this.§ ![§.leagueRankAfterUpdate = 0;
         if(this.§[!E§)
         {
            this.§ ![§.leagueOriginalRank = this.§[!E§.§#"Q§(this.§1#h§);
            this.§ ![§.leagueRankAfterUpdate = this.§[!E§.§1#I§(param2,param3,param4,_loc7_);
            this.§^D§(§`"j§,this.§[!E§.data,this.§ ![§.leagueRankAfterUpdate);
         }
         this.§ ![§.originalRank = this.§4"2§.§#"Q§(this.§1#h§);
         this.§ ![§.rankAfterUpdate = this.§4"2§.§1#I§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§5!a§.push(_loc8_);
            _loc10_ = _loc8_.rank - 1;
            §0I§.§<#d§(_loc10_.toString());
         }
         _loc9_ = !!param5 ? int(§>#D§) : int(§`"y§);
         this.§^D§(_loc9_,this.§4!5§,this.§ ![§.rankAfterUpdate);
         return this.§ ![§;
      }
      
      public function §&"Z§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0 || this.native.mcButtonsContainer.btnShopLarge.visible || this.native.mcButtonsContainer.btnShopLargeSale.visible)
         {
            this.native.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.native.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.native.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.native.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §4!H§.§9!-§(param1);
            this.native.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.native.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.native.mcButtonsContainer.txtInboxItemCount.x + this.native.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function § >§() : void
      {
         var _loc4_:§0#;§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc1_:Dictionary = §1%§.§`"H§.§+!V§();
         var _loc2_:Array = this.§ "`§.concat();
         var _loc3_:int = this.§ "`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§ "`§[_loc3_];
            _loc5_ = false;
            for each(_loc6_ in _loc1_)
            {
               if(_loc6_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
                  _loc5_ = true;
               }
            }
            for each(_loc7_ in §!s§)
            {
               if(_loc7_ == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§ "`§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§^#@§.data = _loc2_;
      }
      
      public function §+"-§() : String
      {
         return "Friendsbar";
      }
      
      private function §[k§(param1:Boolean) : void
      {
         if(§ $?§.§`"H§.§>3§ && § $?§.§`"H§.§>3§.§>!>§(§3!d§.§'""§) && param1)
         {
            this.native.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.native.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.native.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.native.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §5"^§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §!s§.push(_loc2_.id);
         }
         this.§ >§();
         this.§^#@§.refresh();
         this.§[!P§();
      }
      
      public function §,"l§() : void
      {
         var _loc1_:Boolean = §4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.length > 0 || §4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.length > 0;
         this.native.mcButtonsContainer.mcNewTagShop.visible = _loc1_ && !this.native.mcButtonsContainer.btnShopLarge.visible && !this.native.mcButtonsContainer.btnShopLargeSale.visible;
         this.native.mcButtonsContainer.mcNewTagShopLarge.visible = _loc1_ && (this.native.mcButtonsContainer.btnShopLarge.visible || this.native.mcButtonsContainer.btnShopLargeSale.visible);
         this.native.mcButtonsContainer.Tag_Sale_Shop.visible = this.§,$6§() && !this.native.mcButtonsContainer.btnShopLarge.visible && !this.native.mcButtonsContainer.btnShopLargeSale.visible;
         if(this.§,$6§() && (this.native.mcButtonsContainer.btnShopLarge.visible || this.native.mcButtonsContainer.btnShopLargeSale.visible))
         {
            this.native.mcButtonsContainer.btnShopLarge.visible = false;
            this.native.mcButtonsContainer.btnShopLargeSale.visible = true;
         }
         var _loc2_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc2_)
         {
            _loc2_.§#"F§.§9"§();
         }
      }
      
      private function §,$6§() : Boolean
      {
         var _loc1_:§4!Q§ = §4!Q§(AngryBirdsBase.singleton.dataModel);
         return _loc1_.§;!u§ || _loc1_.§%#o§ || _loc1_.§7#_§;
      }
      
      public function §6$&§(param1:Boolean = false) : void
      {
         this.native.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§1"V§ == §"q§;
         this.native.mcButtonsContainer.Tag_Sale_Avatar.visible = §4!Q§(AngryBirdsBase.singleton.dataModel).§;#h§ && this.§1"V§ == §"q§;
         MovieClip(this.native.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.native.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.native.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §2!Y§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(!param1)
         {
            this.§4"X§(§"q§);
         }
         else if(param2)
         {
            this.§4"X§(this.§1"V§);
            this.§<m§(this.§1"V§ == §]"e§);
         }
         else
         {
            this.§4"X§(§"q§);
            this.§<m§(false);
         }
      }
      
      public function §;#Y§() : String
      {
         return this.§1"V§;
      }
      
      public function §@!>§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§4"2§ = null;
         if(_loc2_)
         {
            this.§4"2§ = this.§?"v§.§3"Z§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§5"G§(),this.mLevelManager.§5"G§());
            if(this.§4"2§.§6#J§)
            {
               this.§4"2§.addEventListener(§2#_§.§]"I§,this.§#?§);
            }
            else
            {
               this.§#?§(null,param1);
            }
         }
      }
      
      private function §#?§(param1:§2#_§, param2:int = -1) : void
      {
         var _loc4_:§;!$§ = null;
         var _loc5_:Object = null;
         this.§4"2§.removeEventListener(§2#_§.§]"I§,this.§#?§);
         this.§4!5§ = new Array();
         §##G§.§=#i§ = new Vector.<§;!$§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§4"2§.data.length)
         {
            if(_loc4_ = this.§4"2§.data[_loc3_])
            {
               _loc4_.§2!y§ = this.§4"2§.§^!H§;
               if(_loc4_.§^!w§)
               {
                  if(§##G§.§##F§.indexOf(_loc4_.userId) == -1)
                  {
                     §##G§.§=#i§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§5!a§)
                  {
                     for each(_loc5_ in this.§5!a§)
                     {
                        if(_loc5_.userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§4!5§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§4!5§.length == 0)
         {
            _loc4_ = new §;!$§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName,null,0,0,0,1,null,0,null);
            this.§4!5§.push(_loc4_);
            this.§4"2§.§>$>§(_loc4_);
         }
         else if(§5H§.§^"M§(§5H§.§,"5§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4!5§.length)
            {
               this.§4!5§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         if(this.mLevelManager.§5"G§())
         {
            this.§^D§(§>#D§,this.§4!5§,param2);
         }
         else
         {
            this.§^D§(§`"y§,this.§4!5§,param2);
         }
      }
      
      public function §!"P§() : void
      {
         if(this.mLevelManager.§5"G§() && §<$2§.§`"H§.active)
         {
            if(!this.§[!E§ || !this.§[!E§.§6#J§)
            {
               this.§[!E§ = §<$2§.§`"H§.§3"Z§(this.mLevelManager.currentLevel,true);
               if(this.§[!E§.§6#J§)
               {
                  this.§[!E§.addEventListener(§2#_§.§]"I§,this.§0"'§);
               }
               else
               {
                  this.§0"'§(null);
               }
            }
         }
      }
      
      private function §0"'§(param1:§2#_§) : void
      {
         this.§[!E§.removeEventListener(§2#_§.§]"I§,this.§0"'§);
         this.§^D§(§`"j§,this.§[!E§.data);
      }
      
      public function §,#-§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§'!&§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §7#+§.STATE_NAME || _loc1_ == §`o§.STATE_NAME || _loc1_ == §!"m§.STATE_NAME || _loc1_ == §9#6§.STATE_NAME || _loc1_ == §#D§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §2$'§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§]"F§ && this.§]"F§.standings)
         {
            for each(_loc3_ in this.§]"F§.standings)
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
         if(this.§3!5§ && this.§3!5§.standings)
         {
            for each(_loc3_ in this.§3!5§.standings)
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
         if(this.§'$3§ && this.§'$3§.standings)
         {
            for each(_loc3_ in this.§'$3§.standings)
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
         if(this.§;>§ && this.§;>§.standings)
         {
            for each(_loc3_ in this.§;>§.standings)
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
         this.§'u§(this.§`O§);
      }
      
      private function §]!7§(param1:Boolean) : void
      {
         this.native.mcLoadingSpinner.visible = param1;
      }
      
      public function §6§() : §##G§
      {
         if(this.§`O§ == §`"j§)
         {
            return this.§[!E§;
         }
         return this.§4"2§;
      }
      
      private function §5",§() : Array
      {
         var _loc4_:§0"9§ = null;
         var _loc1_:Vector.<§0"9§> = §<T§.§=$+§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §##G§.§!#;§)
            {
               break;
            }
            _loc2_.push(new §#"E§(_loc4_.userID,_loc4_.name));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §,"j§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §##G§.§@!-§.length && _loc2_ < §##G§.§4"Y§)
         {
            if(§##G§.§##F§.indexOf(§##G§.§@!-§[_loc3_].userId) == -1)
            {
               _loc1_.push(§##G§.§@!-§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §8"`§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §##G§.§=#i§.length && _loc2_ < §##G§.§4"Y§)
         {
            if(§##G§.§##F§.indexOf(§##G§.§=#i§[_loc3_].userId) == -1)
            {
               _loc1_.push(§##G§.§=#i§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §=a§() : int
      {
         return this.§`O§;
      }
      
      public function levelStarted() : void
      {
         this.§5!a§ = new Array();
         this.§[" § = new Array();
         this.§ ![§ = null;
      }
      
      private function §]&§() : void
      {
         if(!this.native.hasEventListener(MouseEvent.CLICK))
         {
            this.native.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§"$,§);
         }
      }
      
      private function §6S§() : void
      {
         this.native.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§"$,§);
      }
      
      public function §8#$§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§[" §)
         {
            for each(_loc2_ in this.§[" §)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §9$4§() : Array
      {
         return this.§5!a§;
      }
      
      public function §<u§(param1:Boolean) : int
      {
         if(this.§ ![§)
         {
            if(!param1)
            {
               return this.§ ![§.rankAfterUpdate;
            }
            if(this.§ ![§.originalRank > this.§ ![§.rankAfterUpdate)
            {
               return this.§ ![§.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function §&""§(param1:String, param2:Boolean = false) : void
      {
         var ld:§"#Q§ = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:§"#Q§ = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:§"#Q§ = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         var leagueID:String = param1;
         var showOnlyLeagueIcon:Boolean = param2;
         if(leagueID == null)
         {
            this.§2!G§.LeagueProgBar.visible = false;
            this.§2!G§.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = §<$2§.§`"H§.§1>§();
         this.§2!G§.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.§2!G§.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.§2!G§.visible = playerLeagueProfile != null;
            this.§2!G§.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in §'#N§.§3!N§)
         {
            this.§2!G§.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.§2!G§.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = §<$2§.§`"H§.currentLeague();
            if(currentLeague)
            {
               nextLeague = §'#N§.§6!>§(currentLeague.id);
               currentLeagueRatingMin = currentLeague.§+#s§;
               currentLeagueRatingMax = nextLeague.§+#s§;
            }
            if(currentLeague.name == §'#N§.§#$0§())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = §<$2§.§`"H§.§6#+§();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - §'#N§.§+!0§ >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / §'#N§.§+!0§);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += §'#N§.§+!0§ * playerRankStarAmount;
               currentLeagueRatingMax += §'#N§.§+!0§ * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.§2!G§.LeagueProgBar.StarIcon.visible = true;
                  this.§2!G§.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.§2!G§.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.§2!G§.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.§2!G§.height);
            this.§2!G§.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.§2!G§.LeagueProgBar.ProgText01.visible = true;
               this.§2!G§.LeagueProgBar.ProgText02.visible = false;
               this.§2!G§.LeagueProgBar.ProgText03.visible = false;
               this.§2!G§.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.§2!G§.LeagueProgBar.ProgText01.visible = false;
               this.§2!G§.LeagueProgBar.ProgText02.visible = true;
               this.§2!G§.LeagueProgBar.ProgText03.visible = false;
               this.§2!G§.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.§2!G§.LeagueProgBar.ProgText01.visible = false;
               this.§2!G§.LeagueProgBar.ProgText02.visible = false;
               this.§2!G§.LeagueProgBar.ProgText03.visible = true;
               this.§2!G§.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.§2!G§.visible = false;
            fn = function(param1:§4#Q§):void
            {
               §<$2§.§`"H§.removeEventListener(§4#Q§.§4f§,fn);
               §&""§(leagueID);
            };
            §<$2§.§`"H§.addEventListener(§4#Q§.§4f§,fn);
         }
      }
   }
}
