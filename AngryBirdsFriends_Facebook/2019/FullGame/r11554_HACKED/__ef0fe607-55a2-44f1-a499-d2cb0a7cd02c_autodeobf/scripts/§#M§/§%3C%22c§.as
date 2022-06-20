package §#M§
{
   import § "g§.§,#?§;
   import § "g§.§5"D§;
   import §!!T§.§1"9§;
   import §!!t§.§ "X§;
   import §!!t§.§2!S§;
   import §!!t§.§<!x§;
   import §!!t§.StateTournamentResults;
   import §!$?§.§>"w§;
   import §!§.§="D§;
   import §"!>§.§'!x§;
   import §"!>§.§8";§;
   import §"$=§.§,-§;
   import §#!E§.§2#Q§;
   import §%4§.§7#w§;
   import §'#g§.§&"Y§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§2#&§;
   import §+#B§.§5"w§;
   import §-"h§.§2$;§;
   import §-"h§.§5!b§;
   import §2!u§.§'!9§;
   import §2!u§.§?"T§;
   import §2!u§.§`#Q§;
   import §3=§.§0K§;
   import §3=§.§>#r§;
   import §3=§.StatePlay;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §6!'§.§]o§;
   import §7#j§.§@"F§;
   import §7h§.GiftInboxPopup;
   import §9#K§.§=#f§;
   import §9&§.§+"j§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>"Q§.§]Q§;
   import §>"h§.§?>§;
   import §]"'§.§#$D§;
   import §]"'§.§+!!§;
   import §]"'§.§-!#§;
   import §]"'§.§4$#§;
   import §]"'§.§8!a§;
   import §]"'§.§=!h§;
   import §]"'§.§@"%§;
   import §]"'§.§[#!§;
   import §]"'§.§`!V§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §<"c§ extends Sprite implements §="D§
   {
      
      public static var §1%§:Boolean = false;
      
      public static const §'#r§:String = "SidebarButtonStateInfo";
      
      public static const §#g§:String = "SidebarButtonStatePlay";
      
      public static const §!!>§:String = "SidebarButtonStateNone";
      
      public static const §=`§:String = "SidebarButtonStateNoTutorial";
      
      public static const §4E§:String = "SidebarButtonStatePause";
      
      public static const §2!h§:int = 0;
      
      public static const § !z§:int = 1;
      
      public static const §1# §:int = 2;
      
      public static const §,;§:int = 3;
      
      public static const §<"q§:int = 4;
      
      public static const §,y§:int = 5;
      
      public static const § !h§:int = 6;
      
      public static const §9#i§:int = 7;
      
      public static const §09§:int = 8;
      
      public static const §!"d§:int = 9;
      
      public static const §]#3§:int = 10;
      
      public static const §&!;§:int = 11;
      
      private static const § #J§:int = 40;
      
      private static const § $8§:int = 20;
      
      public static var §!$@§:Array = [];
      
      public static const §[#L§:String = "Friends";
      
      public static const §&l§:String = "League";
       
      
      private var §,#j§:int;
      
      private var §+!Z§:Object;
      
      private var §`!K§:Object;
      
      private var §-$?§:Object;
      
      private var §'"1§:Object;
      
      private var §4#U§:Object;
      
      private var §`#§:Object;
      
      private var §%8§:Object;
      
      private var §5A§:Object;
      
      private var §>l§:§?"T§;
      
      private var §5g§:Array;
      
      private var §2#r§:MovieClip;
      
      private var §1$7§:MovieClip;
      
      private var §0!^§:MovieClip;
      
      private var §@"3§:String;
      
      private var §7"[§:§,#?§;
      
      private var §=$"§:String = "";
      
      private var §1!i§:§5"D§;
      
      private var §-!A§:Array;
      
      private var §["O§:§5"D§;
      
      private var §-#1§:Boolean;
      
      private var §?!2§:String;
      
      private var §0$3§:String;
      
      private var §<H§:Boolean;
      
      private var §[F§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §9"0§:Number;
      
      private var mLevelManager:§,-§;
      
      private var get:Array;
      
      private var §%M§:Array;
      
      private var §8#v§:Object;
      
      public function §<"c§(param1:§,#?§, param2:String, param3:String, param4:§,-§)
      {
         this.get = [];
         this.§%M§ = [];
         super();
         §`#Q§.§+";§ = param3;
         this.§0$3§ = param3;
         this.§7"[§ = param1;
         this.§@"3§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§>!^§(false,false);
         this.§1@§(§[#L§);
      }
      
      private function init() : void
      {
         this.§1$7§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§1$7§.tabChildren = false;
         addChild(this.§1$7§);
         MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         MovieClip(this.§1$7§.mcOverlappingTournaments).visible = false;
         this.§const§(false);
         this.§>l§ = new §?"T§(330,180,[],§`#Q§,2,15);
         addChild(this.§>l§.scrollerSprite);
         this.§>l§.scrollerSprite.x = 180 + 7;
         this.§>l§.scrollerSprite.rotation = 90;
         this.§1$7§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§;!X§);
         this.§1$7§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§[C§);
         this.§1$7§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§6!d§);
         this.§1$7§.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.§%T§);
         this.§1$7§.mcButtonsContainer.btnShopLargeSale.addEventListener(MouseEvent.CLICK,this.§%T§);
         this.§1$7§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§5#8§);
         this.§1$7§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§##_§);
         this.§1$7§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§%T§);
         this.§1$7§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§+=§);
         this.§1$7§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§ "K§);
         this.§1$7§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§1$7§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§1$7§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§1$7§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§0!^§ = this.§1$7§.LeagueInfo as MovieClip;
         this.§0!^§.visible = false;
         this.§0!^§.addEventListener(MouseEvent.CLICK,this.§^!v§);
         this.§0!^§.buttonMode = true;
         this.§0!^§.useHandCursor = true;
         this.§0!^§.mouseChildren = false;
         this.§-!§(false);
         this.§>l§.scrollerSprite.addEventListener(§'!x§.§^!F§,this.§!r§);
         this.§>l§.scrollerSprite.addEventListener(§'!x§.§;$#§,this.§var §);
         this.§>l§.scrollerSprite.addEventListener(§'!x§.§[R§,this.§=#C§);
         this.§9#O§();
         this.§-#1§ = true;
         this.§2#r§ = this.§1$7§.mcTitle as MovieClip;
         this.§2#r§.txtTitle.text = "";
         this.§2#r§.visible = false;
         this.§^!C§(GiftInboxPopup.§^e§);
         this.§>$-§(true);
         this.§&#]§(§@"%§(AngryBirdsBase.singleton.dataModel).§<!w§);
         MovieClip(this.§1$7§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.§1$7§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.§+N§();
         §@"F§.addCallback("giftsSentToUsers",this.§?"s§);
         §@"F§.addCallback("challengeSentToUser",this.§+!A§);
         §@"F§.addCallback("bragCompleted",this.§>$B§);
         if(§@#c§.§?q§.active)
         {
            this.§7"X§(§&l§);
            this.§1@§(§&l§,false);
         }
         else
         {
            this.§7"X§(§[#L§);
            this.§1@§(§[#L§,false);
         }
      }
      
      private function §">§() : Boolean
      {
         return this.§-$?§ != null && this.§,#j§ == §1# § || this.§5A§ != null && this.§,#j§ == §09§ || this.§'"1§ != null && this.§,#j§ == §,;§ || this.§4#U§ != null && this.§,#j§ == §<"q§;
      }
      
      private function §^!v§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§-"l§));
      }
      
      private function §-!§(param1:Boolean) : void
      {
         this.§1$7§.mcButtonsContainer.btnAvatar.visible = !param1;
         this.§1$7§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§1$7§.mcButtonsContainer.btnGift.visible = !param1;
         this.§1$7§.mcButtonsContainer.btnShop.visible = !param1;
         if(param1)
         {
            this.§1$7§.mcButtonsContainer.btnShopLarge.visible = !this.§<N§();
            this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible = this.§<N§();
         }
         else
         {
            this.§1$7§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible = false;
         }
         this.§>$-§(false);
         this.§^!C§(GiftInboxPopup.§^e§);
      }
      
      private function §9#O§() : void
      {
         this.btnTabFriends = this.§1$7§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§1$7§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§-S§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§for§);
      }
      
      protected function §for§(param1:MouseEvent) : void
      {
         if(this.§[F§ != §&l§)
         {
            §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         }
         if(this.§7!I§())
         {
            this.§#W§(§09§);
         }
         else if(AngryBirdsBase.singleton.§ p§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§?"y§ == StateTournamentResults.§+$E§)
            {
               this.§#W§(§<"q§);
            }
            else
            {
               this.§#W§(§,;§);
            }
         }
         else
         {
            this.§#W§(§1# §);
         }
      }
      
      protected function §-S§(param1:MouseEvent) : void
      {
         if(this.§[F§ != §[#L§)
         {
            §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         }
         if(this.§7!I§())
         {
            this.§#W§(§ !h§);
         }
         else if(AngryBirdsBase.singleton.§ p§() == StateTournamentResults.STATE_NAME)
         {
            this.§#W§(§ !z§);
         }
         else
         {
            this.§#W§(§2!h§);
         }
      }
      
      private function §1@§(param1:String, param2:Boolean = true) : void
      {
         if(this.§[F§ == param1)
         {
            return;
         }
         this.§[F§ = param1;
         this.§7"X§(param1);
         this.§-!§(this.§[F§ == §&l§);
         if(this.§[F§ == §[#L§)
         {
            this.§&#]§(§@"%§(AngryBirdsBase.singleton.dataModel).§<!w§);
         }
         else
         {
            this.§&#]§(false);
         }
         if(param2)
         {
            §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§ else§,[this.§[F§],true);
         }
         this.§+N§();
      }
      
      private function §7"X§(param1:String) : void
      {
         this.§1$7§.mcTop.gotoAndStop(param1);
         this.§1$7§.mcMiddle.gotoAndStop(param1);
         this.§1$7§.mcBottom.gotoAndStop(param1);
      }
      
      private function §?"s§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§`#Q§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§>l§.§3!b§)
            {
               if(_loc4_.§!"U§.data && _loc3_ == _loc4_.§!"U§.data.userId)
               {
                  if(_loc4_.§!"U§ is §'!9§)
                  {
                     §'!9§(_loc4_.§!"U§).setCanSendGift(false,true);
                  }
                  §-!#§.§?q§.§!"1§(_loc4_.§!"U§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §+"a§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§?!2§ == param1)
         {
            return;
         }
         §=#f§.log("Changing state");
         this.§?!2§ = param1;
         switch(this.§?!2§)
         {
            case §'#r§:
               §=#f§.log("Info state");
               this.§?"u§();
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§1$7§.mcButtonsContainer.btnInfo.enabled = true;
               this.§-#1§ = true;
               break;
            case §!!>§:
            case §4E§:
            case §=`§:
               §=#f§.log("None state");
               this.§8Q§();
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§1$7§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case §#g§:
               §=#f§.log("Play state");
               this.§?"u§();
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§1$7§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§1$7§.mcButtonsContainer.btnInfo.enabled = true;
               this.§-#1§ = false;
         }
         (§%"T§.§>$<§ as §'"a§).§@"§(this.§?!2§);
      }
      
      public function §&#H§() : void
      {
         if(§[#%§.§6!§)
         {
            MovieClip(this.§1$7§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§1$7§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§+!^§,[§[#%§.§6!§],true);
      }
      
      public function §'!!§(param1:String) : void
      {
         this.§1$7§.mcButtonsContainer.btnAvatar.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnAvatar.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShopLarge.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShopLarge.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnShopLarge.mouseEnabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShopLargeSale.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShopLargeSale.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnShopLargeSale.mouseEnabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnInvite.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnInvite.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnGift.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnGift.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShop.enabled = param1 != §!!>§;
         this.§1$7§.mcButtonsContainer.btnShop.alpha = param1 == §!!>§ ? 0.5 : 1;
         this.§1$7§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §!!>§;
      }
      
      private function §6!d§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§;n§));
      }
      
      private function §5#8§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§!!_§));
      }
      
      private function §var §(param1:§'!x§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §@"F§.§^$#§("updateSessionToken",§]Q§.§="3§);
         §@"F§.§^$#§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName,param1.data.userId,§[#!§.§1!'§(§[#!§.§^"_§));
         §+$A§.§@"i§().§[!E§(1,"SIDEBAR");
      }
      
      private function §=#C§(param1:§'!x§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §@"F§.§^$#§("updateSessionToken",§]Q§.§="3§);
         §@"F§.§^$#§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName,§^"C§.§?q§.§1"5§,param1.data.userId,§[#!§.§1!'§(§[#!§.§^"S§));
      }
      
      private function §>$B§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.get)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§%M§)
         {
            this.§%M§.push(param1);
         }
      }
      
      private function §+!A§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§+"j§ = new §+"j§();
         _loc2_.§4!7§([param1]);
         if(§^"C§.§?q§.§4#-§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §^"C§.§?q§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            §+$A§.§@"i§().§7"p§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,param1,§^"C§.§?q§.§4#-§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §5"D§.§[§.length)
         {
            if(§5"D§.§[§[_loc3_].userId == param1)
            {
               §5"D§.§[§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §5"D§.§4"L§.push(param1);
         var _loc4_:int = this.§>l§.offset + this.§>l§.§@"t§ / 2;
         this.§6$@§(this.§,#j§,null,_loc4_);
      }
      
      private function §!r§(param1:§'!x§) : void
      {
         §@"F§.addCallback("invitationBatchSent",this.§5#K§);
         §@"F§.addCallback("invitationBatchCancel",this.§1"=§);
         dispatchEvent(new §'!x§(§'!x§.§!!_§,param1.data as §`!V§));
      }
      
      private function §5#K§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §@"F§.§=F§("invitationBatchSent",this.§5#K§);
         §@"F§.§=F§("invitationBatchCancel",this.§1"=§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§>l§.§@"t§ / 2);
            _loc3_ = this.§>l§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§7"[§.§"C§().data.length)
            {
               if(this.§7"[§.§"C§().data[_loc4_].userId == param1)
               {
                  this.§7"[§.§"C§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §!$@§.push(param1);
            this.§!$>§();
            this.§>l§.refresh();
            this.§+A§(_loc3_);
            this.§35§();
         }
      }
      
      private function §1"=§() : void
      {
         §@"F§.§=F§("invitationBatchSent",this.§5#K§);
         §@"F§.§=F§("invitationBatchCancel",this.§1"=§);
      }
      
      private function §%T§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§&!R§));
         this.§>$-§(false);
      }
      
      private function §+=§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§9#l§));
      }
      
      private function § "K§(param1:MouseEvent) : void
      {
         dispatchEvent(new §'!x§(§'!x§.§2#o§));
         this.§&#H§();
      }
      
      private function §>H§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         if(this.§-#1§)
         {
            §=#f§.log(§'!x§.§<#O§);
            dispatchEvent(new §'!x§(§'!x§.§<#O§));
         }
         else
         {
            §=#f§.log(§'!x§.§%!b§);
            dispatchEvent(new §'!x§(§'!x§.§%!b§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§9"0§ = Math.max(param1,330);
         this.§1$7§.mcMiddle.height = this.§9"0§ - this.§1$7§.mcTop.height - this.§1$7§.mcBottom.height;
         this.§1$7§.mcBottom.y = this.§9"0§ - this.§1$7§.mcBottom.height;
         this.§1$7§.mcButtonsContainer.y = this.§9"0§ - this.§1$7§.mcButtonsContainer.height + 7;
         this.§>l§.scrollerSprite.y = 104;
         this.§>l§.setWidth(this.§9"0§ - 255);
         this.§35§();
      }
      
      private function §;!X§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Shop_Selection",§[#%§.§-"I§);
         this.scroll(-this.§>l§.§@"t§);
      }
      
      private function §[C§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Shop_Selection",§[#%§.§-"I§);
         this.scroll(this.§>l§.§@"t§);
      }
      
      private function §##_§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         dispatchEvent(new §'!x§(§'!x§.§"^§));
      }
      
      public function §6$@§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §2!h§:
               if(!this.§+!Z§)
               {
                  this.§+!Z§ = new Object();
                  this.§+!Z§.title = "Tournament scores";
                  this.§+!Z§.data = [];
                  this.§+!Z§.standings = [];
               }
               if(param2)
               {
                  this.§+!Z§.standings = param2;
                  this.§?"u§();
               }
               if(§1%§)
               {
                  this.§+!Z§.data = this.§+!Z§.standings.concat(this.§^s§());
                  this.§+!Z§.data = this.§+!Z§.data.concat(this.§]$;§());
               }
               else
               {
                  this.§+!Z§.data = this.§+!Z§.standings.concat(new §4$#§(""));
               }
               _loc4_ = this.§1"Z§() == §[#L§;
               break;
            case § !z§:
               if(!this.§`!K§)
               {
                  this.§`!K§ = new Object();
                  this.§`!K§.title = "Previous scores";
               }
               this.§`!K§.standings = param2;
               if(§@#c§.§?q§.active && (§@#c§.§?q§.§5#1§ || §@#c§.§?q§.§1!S§))
               {
                  _loc4_ = this.§1"Z§() == §[#L§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§?"u§();
               break;
            case §1# §:
               if(!this.§-$?§)
               {
                  this.§-$?§ = new Object();
                  this.§-$?§.leagueId = "NONE";
               }
               if(§@#c§.§?q§.currentLeague())
               {
                  this.§-$?§.leagueId = §@#c§.§?q§.currentLeague().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§-$?§.standings = param2;
               if(this.§1"Z§() == §&l§ && this.§,#j§ != §09§)
               {
                  _loc4_ = true;
                  break;
               }
               break;
            case §,;§:
               if(!this.§'"1§)
               {
                  this.§'"1§ = new Object();
                  this.§'"1§.leagueId = "NONE";
               }
               if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.l)
               {
                  _loc5_ = §@#c§.§?q§.§1!S§.l;
                  this.§'"1§.leagueId = _loc5_.pli.tn;
               }
               this.§'"1§.standings = param2;
               _loc4_ = this.§1"Z§() == §&l§;
               this.§?"u§();
               break;
            case §<"q§:
               if(!this.§4#U§)
               {
                  this.§4#U§ = new Object();
                  this.§4#U§.title = "";
                  this.§4#U§.leagueId = "NONE";
               }
               if(§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l && §@#c§.§?q§.§5#1§.l.p)
               {
                  _loc6_ = §@#c§.§?q§.§5#1§.l;
                  this.§4#U§.title = _loc6_.pli.ln;
                  this.§4#U§.leagueId = _loc6_.pli.tn;
               }
               this.§4#U§.standings = param2;
               _loc4_ = Boolean(this.§1"Z§() == §&l§ && StateTournamentResults.§?"y§ == StateTournamentResults.§+$E§);
               this.§?"u§();
               break;
            case §,y§:
               if(!this.§`#§)
               {
                  this.§`#§ = new Object();
                  this.§`#§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§`#§.standings = [];
               }
               else
               {
                  this.§`#§.standings = param2;
                  if(!§1%§)
                  {
                     this.§`#§.standings = this.§`#§.standings.concat(new §4$#§(""));
                  }
                  this.§?"u§();
               }
               _loc4_ = true;
               break;
            case § !h§:
            case §9#i§:
               if(!this.§%8§)
               {
                  this.§%8§ = new Object();
                  this.§%8§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§"";§(param3);
                  return;
               }
               if(!§1%§)
               {
                  param2 = param2.concat(new §4$#§(""));
               }
               else
               {
                  if(this.§1!i§.§0#?§)
                  {
                     param2 = param2.concat(this.§!""§());
                  }
                  param2 = param2.concat(this.§]$;§());
               }
               this.§%8§.standings = param2;
               _loc4_ = this.§1"Z§() == §[#L§;
               this.§?"u§();
               break;
            case §09§:
               if(!this.§5A§)
               {
                  this.§5A§ = new Object();
                  this.§5A§.leagueId = "NONE";
                  this.§5A§.loadingScores = false;
               }
               if(§@#c§.§?q§.currentLeague())
               {
                  this.§5A§.leagueId = §@#c§.§?q§.currentLeague().id;
               }
               if(!param2)
               {
                  this.§5A§.standings = [];
                  this.§'"7§();
                  this.§5A§.loadingScores = true;
                  return;
               }
               this.§5A§.standings = param2;
               this.§5A§.loadingScores = false;
               _loc4_ = this.§1"Z§() == §&l§;
               this.§?"u§();
               break;
            case §!"d§:
            case §]#3§:
               if(this.§["O§)
               {
                  this.§["O§.removeEventListener(§8";§.§]!T§,this.§>#g§);
                  this.§["O§ = null;
               }
               if(this.§1!i§)
               {
                  this.§1!i§.removeEventListener(§8";§.§]!T§,this.§1"]§);
                  this.§1!i§ = null;
               }
               _loc4_ = true;
               this.§8Q§();
               break;
            case §&!;§:
               _loc4_ = true;
               this.§?"u§();
         }
         this.§1$7§.mcOverlappingTournaments.visible = param1 == §&!;§;
         if(_loc4_)
         {
            this.§#W§(param1,param3);
         }
      }
      
      public function §#W§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§=!h§ = null;
         this.§0!^§.visible = false;
         this.§2#r§.visible = false;
         switch(param1)
         {
            case §2!h§:
               this.§1@§(§[#L§);
               if(this.§+!Z§)
               {
                  this.§2#r§.txtTitle.text = this.§+!Z§.title;
                  this.§2#r§.visible = true;
                  this.§2#r§.y = § #J§;
                  this.§5g§ = this.§+!Z§.data;
               }
               else
               {
                  this.§5g§ = [];
               }
               this.§=$"§ = "";
               this.§>!^§(§@#c§.§?q§.active,false);
               this.§const§(false);
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§0$+§(false);
               break;
            case § !z§:
               this.§1@§(§[#L§);
               if(this.§`!K§)
               {
                  this.§2#r§.txtTitle.text = this.§`!K§.title;
                  this.§2#r§.visible = true;
                  this.§2#r§.y = § #J§;
                  this.§5g§ = this.§`!K§.standings;
               }
               else
               {
                  this.§5g§ = [];
               }
               this.§=$"§ = "";
               _loc3_ = §@#c§.§?q§.active && (§@#c§.§?q§.§5#1§ || §@#c§.§?q§.§1!S§);
               this.§>!^§(_loc3_,false);
               this.§const§(false);
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§0$+§(false);
               break;
            case §1# §:
               this.§1@§(§&l§);
               this.§0$+§(false);
               if(this.§-$?§)
               {
                  this.§0!^§.visible = true;
                  this.§ !$§(this.§-$?§.leagueId);
                  this.§5g§ = this.§-$?§.standings;
                  this.§const§(this.§-$?§.standings != null && this.§-$?§.standings.length == 0);
               }
               else
               {
                  this.§5g§ = [];
                  this.§const§(false);
                  this.§ !$§(null);
               }
               this.§=$"§ = "League";
               this.§>!^§(true,true);
               this.§!$>§();
               this.§+"a§(§'#r§);
               break;
            case §,;§:
               this.§1@§(§&l§);
               this.§0$+§(false);
               if(this.§'"1§)
               {
                  this.§0!^§.visible = true;
                  this.§ !$§(this.§'"1§.leagueId,true);
                  this.§5g§ = this.§'"1§.standings;
                  this.§const§(this.§'"1§.standings != null && this.§'"1§.standings.length == 0);
               }
               else
               {
                  this.§5g§ = [];
                  this.§const§(true);
                  this.§ !$§(null);
               }
               this.§=$"§ = "League";
               this.§>!^§(true,true);
               this.§!$>§();
               this.§+"a§(§'#r§);
               break;
            case §<"q§:
               this.§1@§(§&l§);
               this.§0$+§(false);
               if(this.§4#U§)
               {
                  this.§0!^§.visible = true;
                  this.§ !$§(this.§4#U§.leagueId,true);
                  this.§5g§ = this.§4#U§.standings;
                  this.§const§(this.§4#U§.standings != null && this.§4#U§.standings.length == 0);
               }
               else
               {
                  this.§5g§ = [];
                  this.§const§(true);
                  this.§ !$§(null);
               }
               this.§=$"§ = "League";
               this.§>!^§(true,true);
               this.§!$>§();
               this.§+"a§(§'#r§);
               break;
            case §,y§:
               this.§1@§(§[#L§);
               this.§2#r§.txtTitle.text = this.§`#§.title;
               this.§2#r§.visible = true;
               this.§2#r§.y = § $8§;
               this.§=$"§ = "";
               this.§>!^§(false,false);
               this.§5g§ = this.§`#§.standings;
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§const§(false);
               this.§0$+§(this.§`#§.standings.length == 0);
               break;
            case § !h§:
               this.§>!^§(true,this.§1"Z§() == §&l§);
            case §9#i§:
               this.§1@§(§[#L§);
               if(this.§%8§)
               {
                  this.§2#r§.txtTitle.text = this.§%8§.title;
                  this.§2#r§.visible = true;
                  if(this.§1!i§.§0#?§)
                  {
                     this.§2#r§.y = § #J§;
                  }
                  else
                  {
                     this.§2#r§.y = § $8§;
                  }
                  this.§=$"§ = this.mLevelManager.currentLevel;
                  this.§5g§ = this.§%8§.standings;
                  this.§!$>§();
                  this.§const§(false);
                  this.§0$+§(this.§%8§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§%8§.standings.length)
                     {
                        if(this.§%8§.standings[_loc4_] is §+!!§ && this.§%8§.standings[_loc4_].userId == this.§0$3§)
                        {
                           param2 = this.§%8§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§5g§ = [];
                  this.§const§(false);
                  this.§0$+§(false);
               }
               break;
            case §09§:
               this.§1@§(§&l§);
               if(this.§5A§)
               {
                  this.§=$"§ = this.mLevelManager.currentLevel;
                  this.§0!^§.visible = true;
                  this.§ !$§(this.§5A§.leagueId);
                  this.§5g§ = this.§5A§.standings;
                  this.§const§(!this.§5A§.loadingScores && this.§5A§.standings.length == 0);
                  this.§0$+§(this.§5A§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§5A§.standings)
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
                  this.§5g§ = [];
                  this.§const§(false);
                  this.§0$+§(false);
                  this.§ !$§(null);
               }
               this.§>!^§(true,true);
               this.§!$>§();
               break;
            case §!"d§:
               this.§>!^§(false,this.§1"Z§() == §&l§);
               this.§5g§ = [];
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§const§(false);
               this.§0$+§(true);
               this.§ !$§(null);
               break;
            case §]#3§:
               this.§1@§(§[#L§);
               this.§>!^§(false,false);
               this.§5g§ = [];
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§const§(false);
               this.§0$+§(true);
               break;
            case §&!;§:
               this.§1@§(§[#L§);
               this.§>!^§(false,false);
               this.§2#r§.visible = false;
               this.§=$"§ = "";
               this.§5g§ = [];
               this.§!$>§();
               this.§+"a§(§'#r§);
               this.§const§(false);
               this.§0$+§(false);
         }
         this.§+A§(param2);
         this.§35§();
         if(this.§,#j§ != param1)
         {
            this.§,#j§ = param1;
            dispatchEvent(new §'!x§(§'!x§.§ #n§,{"tab":this.§[F§}));
         }
      }
      
      private function §const§(param1:Boolean) : void
      {
         this.§1$7§.mcNotInLeague.visible = param1;
         this.§1$7§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§1$7§.NotInLeagueBG.visible = param1;
         this.§1$7§.mcRankingBadgeBg.visible = param1;
         this.§1$7§.mcRankingBadgeBg.gotoAndStop(1);
         if(param1)
         {
            if(§@#c§.§?q§.currentLeague())
            {
               if(§1"9§.§?q§.§]m§() == §>"w§.§1"2§)
               {
                  this.§1$7§.mcNotInLeague.LeaguePrize.text = "" + §@#c§.§?q§.currentLeague().reward * 2;
                  this.§1$7§.mcRankingBadgeBg.gotoAndStop(2);
               }
               else
               {
                  this.§1$7§.mcNotInLeague.LeaguePrize.text = §@#c§.§?q§.currentLeague().reward.toString();
               }
            }
         }
      }
      
      private function §+A§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§5g§.length)
            {
               if(this.§5g§[_loc5_].userId == this.§0$3§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§>l§.offset;
         var _loc3_:int = Math.floor(this.§>l§.§@"t§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§>l§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§>l§.scroll(param1);
            this.§35§();
         }
      }
      
      private function §35§() : void
      {
         var _loc1_:* = this.§>l§.offset != 0;
         var _loc2_:* = this.§>l§.offset != this.§>l§.data.length - this.§>l§.§@"t§;
         this.§1$7§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§1$7§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §38§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§+!!§ = null;
         var _loc9_:int = 0;
         if(!this.§1!i§ || !this.§-!A§ || this.§=$"§ != param1)
         {
            return {};
         }
         this.get = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§8#v§ = new Object();
         this.§8#v§.originalRank = 0;
         this.§8#v§.rankAfterUpdate = 0;
         this.§8#v§.leagueOriginalRank = 0;
         this.§8#v§.leagueRankAfterUpdate = 0;
         if(this.§["O§)
         {
            this.§8#v§.leagueOriginalRank = this.§["O§.§=?§(this.§0$3§);
            this.§8#v§.leagueRankAfterUpdate = this.§["O§.§38§(param2,param3,param4,_loc7_);
            this.§6$@§(§09§,this.§["O§.data,this.§8#v§.leagueRankAfterUpdate);
         }
         this.§8#v§.originalRank = this.§1!i§.§=?§(this.§0$3§);
         this.§8#v§.rankAfterUpdate = this.§1!i§.§38§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.get.push(_loc8_);
            _loc9_ = _loc8_.rank - 1;
            §5"w§.§8$"§(_loc9_.toString());
         }
         this.§6$@§(§ !h§,this.§-!A§,this.§8#v§.rankAfterUpdate);
         return this.§8#v§;
      }
      
      public function §^!C§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         if(param1 == 0 || this.§1$7§.mcButtonsContainer.btnShopLarge.visible || this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible)
         {
            this.§1$7§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§1$7§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§1$7§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§1$7§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §2#&§.§9"Q§(param1);
            this.§1$7§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§1$7§.mcButtonsContainer.mcItemCountBg;
            int(_loc3_.width);
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§1$7§.mcButtonsContainer.txtInboxItemCount.x + this.§1$7§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §!$>§() : void
      {
         var _loc4_:§8!a§ = null;
         var _loc5_:Boolean = false;
         var _loc1_:Dictionary = §-!#§.§?q§.§]#0§();
         var _loc2_:Array = this.§5g§.concat();
         var _loc3_:int = this.§5g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§5g§[_loc3_];
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
            _loc9_ = §!$@§;
            while(§§hasnext(_loc9_,_loc8_))
            {
               if(§§nextvalue(_loc8_,_loc9_) == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§5g§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§>l§.data = _loc2_;
      }
      
      public function §+"n§() : String
      {
         return "Friendsbar";
      }
      
      private function §>$-§(param1:Boolean) : void
      {
         if(§#$D§.§?q§.§;p§ && §#$D§.§?q§.§;p§.§ "H§(§7#w§.§3!G§) && param1)
         {
            this.§1$7§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§1$7§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§1$7§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§1$7§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §6o§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §!$@§.push(_loc2_.id);
         }
         this.§!$>§();
         this.§>l§.refresh();
         this.§35§();
      }
      
      public function §+N§() : void
      {
         var _loc1_:Boolean = §@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.length > 0 || §@"%§(AngryBirdsBase.singleton.dataModel).§+d§.length > 0;
         this.§1$7§.mcButtonsContainer.mcNewTagShop.visible = _loc1_ && !this.§1$7§.mcButtonsContainer.btnShopLarge.visible && !this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible;
         this.§1$7§.mcButtonsContainer.mcNewTagShopLarge.visible = _loc1_ && (this.§1$7§.mcButtonsContainer.btnShopLarge.visible || this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible);
         this.§1$7§.mcButtonsContainer.Tag_Sale_Shop.visible = this.§<N§() && !this.§1$7§.mcButtonsContainer.btnShopLarge.visible && !this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible;
         if(this.§<N§() && (this.§1$7§.mcButtonsContainer.btnShopLarge.visible || this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible))
         {
            this.§1$7§.mcButtonsContainer.btnShopLarge.visible = false;
            this.§1$7§.mcButtonsContainer.btnShopLargeSale.visible = true;
         }
         var _loc2_:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(_loc2_)
         {
            _loc2_.§ !Z§.§0$!§();
         }
      }
      
      private function §<N§() : Boolean
      {
         var _loc1_:§@"%§ = §@"%§(AngryBirdsBase.singleton.dataModel);
         return _loc1_.§&e§ || _loc1_.§=q§ || _loc1_.§1#j§;
      }
      
      public function §&#]§(param1:Boolean = false) : void
      {
         this.§1$7§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§[F§ == §[#L§;
         this.§1$7§.mcButtonsContainer.Tag_Sale_Avatar.visible = §@"%§(AngryBirdsBase.singleton.dataModel).§5x§ && this.§[F§ == §[#L§;
         MovieClip(this.§1$7§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§1$7§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §>!^§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(!param1)
         {
            this.§7"X§(§[#L§);
         }
         else if(param2)
         {
            this.§7"X§(this.§[F§);
            this.§-!§(this.§[F§ == §&l§);
         }
         else
         {
            this.§7"X§(§[#L§);
            this.§-!§(false);
         }
      }
      
      public function §1"Z§() : String
      {
         return this.§[F§;
      }
      
      public function §"";§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§1!i§ = null;
         if(_loc2_)
         {
            this.§1!i§ = this.§7"[§.§1"'§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§"#,§(),this.mLevelManager.§"#,§());
            if(this.§1!i§.§0"§)
            {
               this.§1!i§.addEventListener(§8";§.§]!T§,this.§1"]§);
            }
            else
            {
               this.§1"]§(null,param1);
            }
         }
      }
      
      private function §1"]§(param1:§8";§, param2:int = -1) : void
      {
         var _loc4_:§+!!§ = null;
         this.§1!i§.removeEventListener(§8";§.§]!T§,this.§1"]§);
         this.§-!A§ = new Array();
         §5"D§.§""^§ = new Vector.<§+!!§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§1!i§.data.length)
         {
            if(_loc4_ = this.§1!i§.data[_loc3_])
            {
               _loc4_.§,$#§ = this.§1!i§.§0#?§;
               if(_loc4_.§5$6§)
               {
                  if(§5"D§.§4"L§.indexOf(_loc4_.userId) == -1)
                  {
                     §5"D§.§""^§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.get)
                  {
                     var _loc6_:int = 0;
                     var _loc7_:* = this.get;
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        if((§§nextvalue(_loc6_,_loc7_)).userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§-!A§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§-!A§.length == 0)
         {
            _loc4_ = new §+!!§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName,null,0,0,0,1,null,0,null);
            this.§-!A§.push(_loc4_);
            this.§1!i§.§0"_§(_loc4_);
         }
         else if(§[#!§.§1!'§(§[#!§.§^"S§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§-!A§.length)
            {
               this.§-!A§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         if(this.mLevelManager.§"#,§())
         {
            this.§6$@§(§ !h§,this.§-!A§,param2);
         }
         else
         {
            this.§6$@§(§9#i§,this.§-!A§,param2);
         }
      }
      
      public function §'"7§() : void
      {
         if(this.mLevelManager.§"#,§() && §@#c§.§?q§.active)
         {
            if(!this.§["O§ || !this.§["O§.§0"§)
            {
               this.§["O§ = §@#c§.§?q§.§1"'§(this.mLevelManager.currentLevel,true);
               if(this.§["O§.§0"§)
               {
                  this.§["O§.addEventListener(§8";§.§]!T§,this.§>#g§);
               }
               else
               {
                  this.§>#g§(null);
               }
            }
         }
      }
      
      private function §>#g§(param1:§8";§) : void
      {
         this.§["O§.removeEventListener(§8";§.§]!T§,this.§>#g§);
         this.§6$@§(§09§,this.§["O§.data);
      }
      
      public function §7!I§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§ p§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §2!S§.STATE_NAME || _loc1_ == §<!x§.STATE_NAME || _loc1_ == §>#r§.STATE_NAME || _loc1_ == §0K§.STATE_NAME || _loc1_ == § "X§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §^$-§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§-$?§ && this.§-$?§.standings)
         {
            for each(_loc3_ in this.§-$?§.standings)
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
         if(this.§5A§ && this.§5A§.standings)
         {
            for each(_loc3_ in this.§5A§.standings)
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
         if(this.§'"1§ && this.§'"1§.standings)
         {
            for each(_loc3_ in this.§'"1§.standings)
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
         if(this.§4#U§ && this.§4#U§.standings)
         {
            for each(_loc3_ in this.§4#U§.standings)
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
         this.§#W§(this.§,#j§);
      }
      
      private function §0$+§(param1:Boolean) : void
      {
         this.§1$7§.mcLoadingSpinner.visible = param1;
      }
      
      public function §2!#§() : §5"D§
      {
         if(this.§,#j§ == §09§)
         {
            return this.§["O§;
         }
         return this.§1!i§;
      }
      
      private function §]$;§() : Array
      {
         var _loc4_:§2$;§ = null;
         var _loc1_:Vector.<§2$;§> = §5!b§.§?"C§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §5"D§.§`B§)
            {
               break;
            }
            _loc2_.push(new §`!V§(_loc4_.userID,_loc4_.name));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §^s§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §5"D§.§[§.length && _loc2_ < §5"D§.§0"B§)
         {
            if(§5"D§.§4"L§.indexOf(§5"D§.§[§[_loc3_].userId) == -1)
            {
               _loc1_.push(§5"D§.§[§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §!""§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §5"D§.§""^§.length && _loc2_ < §5"D§.§0"B§)
         {
            if(§5"D§.§4"L§.indexOf(§5"D§.§""^§[_loc3_].userId) == -1)
            {
               _loc1_.push(§5"D§.§""^§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §9$@§() : int
      {
         return this.§,#j§;
      }
      
      public function levelStarted() : void
      {
         this.get = new Array();
         this.§%M§ = new Array();
         this.§8#v§ = null;
      }
      
      private function §?"u§() : void
      {
         if(!this.§1$7§.hasEventListener(MouseEvent.CLICK))
         {
            this.§1$7§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§>H§);
         }
      }
      
      private function §8Q§() : void
      {
         this.§1$7§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§>H§);
      }
      
      public function §"#q§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§%M§)
         {
            for each(_loc2_ in this.§%M§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § §() : Array
      {
         return this.get;
      }
      
      public function §[#X§(param1:Boolean) : int
      {
         if(this.§8#v§)
         {
            if(param1)
            {
               if(this.§8#v§.originalRank > this.§8#v§.rankAfterUpdate)
               {
                  return this.§8#v§.rankAfterUpdate;
               }
            }
            else
            {
               return this.§8#v§.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function § !$§(param1:String, param2:Boolean = false) : void
      {
         var ld:§]o§ = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:§]o§ = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:§]o§ = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         var leagueID:String = param1;
         var showOnlyLeagueIcon:Boolean = param2;
         if(leagueID == null)
         {
            this.§0!^§.LeagueProgBar.visible = false;
            this.§0!^§.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = §@#c§.§?q§.§5k§();
         this.§0!^§.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.§0!^§.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.§0!^§.visible = playerLeagueProfile != null;
            this.§0!^§.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in §[!k§.§?!4§)
         {
            this.§0!^§.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.§0!^§.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = §@#c§.§?q§.currentLeague();
            if(currentLeague)
            {
               nextLeague = §[!k§.§'&§(currentLeague.id);
               currentLeagueRatingMin = currentLeague.§8#N§;
               currentLeagueRatingMax = nextLeague.§8#N§;
            }
            if(currentLeague.name == §[!k§.§&!§())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = §@#c§.§?q§.§+$"§();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - §[!k§.§ #>§ >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / §[!k§.§ #>§);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += §[!k§.§ #>§ * playerRankStarAmount;
               currentLeagueRatingMax += §[!k§.§ #>§ * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.§0!^§.LeagueProgBar.StarIcon.visible = true;
                  this.§0!^§.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.§0!^§.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.§0!^§.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.§0!^§.height);
            this.§0!^§.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.§0!^§.LeagueProgBar.ProgText01.visible = true;
               this.§0!^§.LeagueProgBar.ProgText02.visible = false;
               this.§0!^§.LeagueProgBar.ProgText03.visible = false;
               this.§0!^§.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.§0!^§.LeagueProgBar.ProgText01.visible = false;
               this.§0!^§.LeagueProgBar.ProgText02.visible = true;
               this.§0!^§.LeagueProgBar.ProgText03.visible = false;
               this.§0!^§.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.§0!^§.LeagueProgBar.ProgText01.visible = false;
               this.§0!^§.LeagueProgBar.ProgText02.visible = false;
               this.§0!^§.LeagueProgBar.ProgText03.visible = true;
               this.§0!^§.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.§0!^§.visible = false;
            fn = function(param1:§?>§):void
            {
               §@#c§.§?q§.removeEventListener(§?>§.§]#s§,fn);
               § !$§(leagueID);
            };
            §@#c§.§?q§.addEventListener(§?>§.§]#s§,fn);
         }
      }
   }
}
