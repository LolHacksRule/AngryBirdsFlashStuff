package §3r§
{
   import §"!!§.§!"&§;
   import §"!!§.§+"0§;
   import §"!@§.§;$+§;
   import §"!@§.StatePlay;
   import §"!@§.§["F§;
   import §"$!§.§7#U§;
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §%#w§.§4$'§;
   import §%#w§.§?"z§;
   import §%$B§.GiftInboxPopup;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1"N§.§4#G§;
   import §2G§.§#"8§;
   import §2G§.§&"+§;
   import §2G§.§-#+§;
   import §2G§.§4O§;
   import §2G§.§9=§;
   import §2G§.§;!Y§;
   import §2G§.§>">§;
   import §2G§.§@#P§;
   import §2G§.§[" §;
   import §4#V§.§+!c§;
   import §4#a§.§9A§;
   import §7!%§.§&#k§;
   import §7!%§.§4"I§;
   import §8!§.§0"@§;
   import §8!§.§2"s§;
   import §8!§.§[g§;
   import §8#!§.§5`§;
   import §9#B§.§0"h§;
   import §9#B§.§1#h§;
   import §9#B§.§=!V§;
   import §9#B§.StateTournamentResults;
   import §;#D§.§3#U§;
   import §;$3§.§?!0§;
   import §@!M§.§!"p§;
   import §@V§.§!"j§;
   import §]!6§.§6Y§;
   import §`!e§.§#"L§;
   import §`!e§.§=Z§;
   import §`7§.§ try§;
   import §`7§.§9U§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §]!4§ extends Sprite implements §8#§
   {
      
      public static var §>$1§:Boolean = false;
      
      public static const §6"'§:String = "SidebarButtonStateInfo";
      
      public static const §do §:String = "SidebarButtonStatePlay";
      
      public static const §<B§:String = "SidebarButtonStateNone";
      
      public static const §0"H§:String = "SidebarButtonStateNoTutorial";
      
      public static const §=!?§:String = "SidebarButtonStatePause";
      
      public static const §0!c§:int = 0;
      
      public static const §&!7§:int = 1;
      
      public static const §&#W§:int = 2;
      
      public static const §+A§:int = 3;
      
      public static const §true §:int = 4;
      
      public static const §5#a§:int = 5;
      
      public static const §-##§:int = 6;
      
      public static const §+"M§:int = 7;
      
      public static const §=C§:int = 8;
      
      public static const §0"7§:int = 9;
      
      private static const §,e§:int = 40;
      
      private static const §@Y§:int = 20;
      
      public static var §@#0§:Array = [];
      
      public static const §;%§:String = "Friends";
      
      public static const §&#q§:String = "League";
       
      
      private var §7"=§:int;
      
      private var §1#f§:Object;
      
      private var §5"Z§:Object;
      
      private var §0-§:Object;
      
      private var §^$1§:Object;
      
      private var §#!8§:Object;
      
      private var §6#&§:Object;
      
      private var §9!=§:Object;
      
      private var §%1§:Object;
      
      private var §+",§:§0"@§;
      
      private var §`!y§:Array;
      
      private var §4#X§:MovieClip;
      
      private var §?"_§:MovieClip;
      
      private var §""S§:MovieClip;
      
      private var §^"j§:String;
      
      private var §5"§:§!"&§;
      
      private var §2C§:String = "";
      
      private var §>"f§:§+"0§;
      
      private var §8l§:Array;
      
      private var §0!L§:§+"0§;
      
      private var §<!%§:Boolean;
      
      private var §`"@§:String;
      
      private var §["L§:String;
      
      private var §[!Y§:Boolean;
      
      private var §>[§:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var §@$"§:Number;
      
      private var mLevelManager:§?!0§;
      
      private var §<$<§:Array;
      
      private var §&!%§:Array;
      
      private var §<!8§:Object;
      
      public function §]!4§(param1:§!"&§, param2:String, param3:String, param4:§?!0§)
      {
         this.§<$<§ = [];
         this.§&!%§ = [];
         super();
         §2"s§.§;"8§ = param3;
         this.§["L§ = param3;
         this.§5"§ = param1;
         this.§^"j§ = param2;
         this.mLevelManager = param4;
         this.init();
         this.§?o§(false,false);
      }
      
      private function init() : void
      {
         this.§?"_§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.§?"_§.tabChildren = false;
         addChild(this.§?"_§);
         MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         this.§0#§(false);
         this.§+",§ = new §0"@§(330,180,[],§2"s§,2,15);
         addChild(this.§+",§.scrollerSprite);
         this.§+",§.scrollerSprite.x = 180 + 7;
         this.§+",§.scrollerSprite.rotation = 90;
         this.§?"_§.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§^!8§);
         this.§?"_§.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§,!G§);
         this.§?"_§.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.§,!"§);
         this.§?"_§.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.§]!^§);
         this.§?"_§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§=O§);
         this.§?"_§.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.§=$2§);
         this.§?"_§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§]!^§);
         this.§?"_§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§7!C§);
         this.§?"_§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§"Y§);
         this.§?"_§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.§?"_§.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.§?"_§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§?"_§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§""S§ = this.§?"_§.LeagueInfo as MovieClip;
         this.§""S§.visible = false;
         this.§""S§.addEventListener(MouseEvent.CLICK,this.§%#7§);
         this.§""S§.buttonMode = true;
         this.§""S§.useHandCursor = true;
         this.§""S§.mouseChildren = false;
         this.§,T§(false);
         this.§+",§.scrollerSprite.addEventListener(§=Z§.§3#V§,this.§[![§);
         this.§+",§.scrollerSprite.addEventListener(§=Z§.§"N§,this.§2$=§);
         this.§+",§.scrollerSprite.addEventListener(§=Z§.§1d§,this.§2$?§);
         this.§1`§();
         this.§<!%§ = true;
         this.§4#X§ = this.§?"_§.mcTitle as MovieClip;
         this.§4#X§.txtTitle.text = "";
         this.§4#X§.visible = false;
         this.§+"_§(GiftInboxPopup.§`!7§);
         this.§`"i§(true);
         this.§5#v§(§#"8§(AngryBirdsBase.singleton.dataModel).§#"%§);
         MovieClip(this.§?"_§.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.§?"_§.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.§+#w§();
         §^!K§.addCallback("giftsSentToUsers",this.§5$%§);
         §^!K§.addCallback("challengeSentToUser",this.§,<§);
         §^!K§.addCallback("bragCompleted",this.§5Q§);
         if(§2#s§.§6!§.active)
         {
            this.§;I§(§&#q§);
            this.§0#;§(§&#q§,false);
         }
         else
         {
            this.§;I§(§;%§);
            this.§0#;§(§;%§,false);
         }
      }
      
      private function §+"A§() : Boolean
      {
         return this.§1#f§ != null && this.§7"=§ == §0!c§ || this.§9!=§ != null && this.§7"=§ == §-##§ || this.§6#&§ != null && this.§7"=§ == §5#a§ || this.§5"Z§ != null && this.§7"=§ == §&!7§;
      }
      
      private function § "v§() : Boolean
      {
         return this.§0-§ != null && this.§7"=§ == §&#W§ || this.§%1§ != null && this.§7"=§ == §+"M§ || this.§^$1§ != null && this.§7"=§ == §+A§ || this.§#!8§ != null && this.§7"=§ == §true §;
      }
      
      private function §%#7§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§&$0§));
      }
      
      private function §,T§(param1:Boolean) : void
      {
         this.§?"_§.mcButtonsContainer.btnAvatar.visible = !param1;
         this.§?"_§.mcButtonsContainer.btnInvite.visible = !param1;
         this.§?"_§.mcButtonsContainer.btnGift.visible = !param1;
         this.§?"_§.mcButtonsContainer.btnShop.visible = !param1;
         this.§?"_§.mcButtonsContainer.btnShopLarge.visible = param1;
         this.§`"i§(false);
         this.§+"_§(GiftInboxPopup.§`!7§);
      }
      
      private function §1`§() : void
      {
         this.btnTabFriends = this.§?"_§.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.§?"_§.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.§+"2§);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.§3T§);
      }
      
      protected function §3T§(param1:MouseEvent) : void
      {
         if(this.§>[§ != §&#q§)
         {
            §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         }
         if(this.§,$A§())
         {
            this.§95§(§+"M§);
         }
         else if(AngryBirdsBase.singleton.§ Y§() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.§,!%§ == StateTournamentResults.§ "-§)
            {
               this.§95§(§true §);
            }
            else
            {
               this.§95§(§+A§);
            }
         }
         else
         {
            this.§95§(§&#W§);
         }
      }
      
      protected function §+"2§(param1:MouseEvent) : void
      {
         if(this.§>[§ != §;%§)
         {
            §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         }
         if(this.§,$A§())
         {
            this.§95§(§-##§);
         }
         else if(AngryBirdsBase.singleton.§ Y§() == StateTournamentResults.STATE_NAME)
         {
            this.§95§(§&!7§);
         }
         else
         {
            this.§95§(§0!c§);
         }
      }
      
      private function §0#;§(param1:String, param2:Boolean = true) : void
      {
         if(this.§>[§ == param1)
         {
            return;
         }
         this.§>[§ = param1;
         this.§;I§(param1);
         this.§,T§(this.§>[§ == §&#q§);
         if(this.§>[§ == §;%§)
         {
            this.§5#v§(§#"8§(AngryBirdsBase.singleton.dataModel).§#"%§);
         }
         else
         {
            this.§5#v§(false);
         }
         if(param2)
         {
            §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§+!n§,[this.§>[§],true);
         }
         this.§+#w§();
      }
      
      private function §;I§(param1:String) : void
      {
         this.§?"_§.mcTop.gotoAndStop(param1);
         this.§?"_§.mcMiddle.gotoAndStop(param1);
         this.§?"_§.mcBottom.gotoAndStop(param1);
      }
      
      private function §5$%§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:§2"s§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§+",§.§0#Q§)
            {
               if(_loc4_.§,#^§.data && _loc3_ == _loc4_.§,#^§.data.userId)
               {
                  if(_loc4_.§,#^§ is §[g§)
                  {
                     §[g§(_loc4_.§,#^§).setCanSendGift(false,true);
                  }
                  §&"+§.§6!§.§5#D§(_loc4_.§,#^§.data.userId);
                  break;
               }
            }
         }
      }
      
      public function §>"p§(param1:String = "SidebarButtonStateInfo") : void
      {
         if(this.§`"@§ == param1)
         {
            return;
         }
         §6Y§.log("Changing state");
         this.§`"@§ = param1;
         switch(this.§`"@§)
         {
            case §6"'§:
               §6Y§.log("Info state");
               this.§[!+§();
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).visible = false;
               this.§?"_§.mcButtonsContainer.btnInfo.enabled = true;
               this.§<!%§ = true;
               break;
            case §<B§:
            case §=!?§:
            case §0"H§:
               §6Y§.log("None state");
               this.§6!N§();
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.§?"_§.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case §do §:
               §6Y§.log("Play state");
               this.§[!+§();
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.§?"_§.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.§?"_§.mcButtonsContainer.btnInfo.enabled = true;
               this.§<!%§ = false;
         }
         (§3#U§.§9#^§ as §,A§).§5!u§(this.§`"@§);
      }
      
      public function §&#;§() : void
      {
         if(§!"p§.§<x§)
         {
            MovieClip(this.§?"_§.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.§?"_§.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§[!^§,[§!"p§.§<x§],true);
      }
      
      public function §2!b§(param1:String) : void
      {
         this.§?"_§.mcButtonsContainer.btnAvatar.enabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnAvatar.alpha = param1 == §<B§ ? 0.5 : 1;
         this.§?"_§.mcButtonsContainer.btnAvatar.mouseEnabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnShopLarge.enabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnShopLarge.alpha = param1 == §<B§ ? 0.5 : 1;
         this.§?"_§.mcButtonsContainer.btnShopLarge.mouseEnabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnInvite.enabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnInvite.alpha = param1 == §<B§ ? 0.5 : 1;
         this.§?"_§.mcButtonsContainer.btnInvite.mouseEnabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnGift.enabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnGift.alpha = param1 == §<B§ ? 0.5 : 1;
         this.§?"_§.mcButtonsContainer.btnGift.mouseEnabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnShop.enabled = param1 != §<B§;
         this.§?"_§.mcButtonsContainer.btnShop.alpha = param1 == §<B§ ? 0.5 : 1;
         this.§?"_§.mcButtonsContainer.btnShop.mouseEnabled = param1 != §<B§;
      }
      
      private function §,!"§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§>#T§));
      }
      
      private function §=O§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§[V§));
      }
      
      private function §2$=§(param1:§=Z§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §^!K§.§+"D§("updateSessionToken",§!"j§.§-J§);
         §^!K§.§+"D§("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName,param1.data.userId,§9=§.§2#p§(§9=§.§0b§));
         § try§.§!!t§().§2m§(1,"SIDEBAR");
      }
      
      private function §2$?§(param1:§=Z§) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §^!K§.§+"D§("updateSessionToken",§!"j§.§-J§);
         §^!K§.§+"D§("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName,§5`§.§6!§.§8s§,param1.data.userId,§9=§.§2#p§(§9=§.§1H§));
      }
      
      private function §5Q§(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<$<§)
         {
            if(_loc2_.userId == param1)
            {
               _loc2_.beaten = false;
               break;
            }
         }
         if(this.§&!%§)
         {
            this.§&!%§.push(param1);
         }
      }
      
      private function §,<§(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc2_:§9A§ = new §9A§();
         _loc2_.§%2§([param1]);
         if(§5`§.§6!§.§"!^§)
         {
            _loc5_ = 0;
            for each(_loc6_ in §5`§.§6!§.players)
            {
               if(_loc6_.p && _loc6_.p > 0)
               {
                  _loc5_++;
               }
            }
            § try§.§!!t§().§#9§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,param1,§5`§.§6!§.§"!^§.id,_loc5_);
         }
         var _loc3_:int = 0;
         while(_loc3_ < §+"0§.§]#6§.length)
         {
            if(§+"0§.§]#6§[_loc3_].userId == param1)
            {
               §+"0§.§]#6§.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         §+"0§.§@#`§.push(param1);
         var _loc4_:int = this.§+",§.offset + this.§+",§.§,!a§ / 2;
         this.§3"v§(this.§7"=§,null,_loc4_);
      }
      
      private function §[![§(param1:§=Z§) : void
      {
         §^!K§.addCallback("invitationBatchSent",this.§7#_§);
         §^!K§.addCallback("invitationBatchCancel",this.§30§);
         dispatchEvent(new §=Z§(§=Z§.§[V§,param1.data as §[" §));
      }
      
      private function §7#_§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §^!K§.§,"i§("invitationBatchSent",this.§7#_§);
         §^!K§.§,"i§("invitationBatchCancel",this.§30§);
         if(param1 != null)
         {
            _loc2_ = Math.floor(this.§+",§.§,!a§ / 2);
            _loc3_ = this.§+",§.offset + _loc2_;
            _loc4_ = 0;
            while(_loc4_ < this.§5"§.§3!-§().data.length)
            {
               if(this.§5"§.§3!-§().data[_loc4_].userId == param1)
               {
                  this.§5"§.§3!-§().data.splice(_loc4_,1);
                  break;
               }
               _loc4_++;
            }
            §@#0§.push(param1);
            this.§7#,§();
            this.§+",§.refresh();
            this.§+Z§(_loc3_);
            this.§0# §();
         }
      }
      
      private function §30§() : void
      {
         §^!K§.§,"i§("invitationBatchSent",this.§7#_§);
         §^!K§.§,"i§("invitationBatchCancel",this.§30§);
      }
      
      private function §]!^§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§@#m§));
         this.§`"i§(false);
      }
      
      private function §7!C§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§#!B§));
      }
      
      private function §"Y§(param1:MouseEvent) : void
      {
         dispatchEvent(new §=Z§(§=Z§.§4#=§));
         this.§&#;§();
      }
      
      private function §>"E§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         if(this.§<!%§)
         {
            §6Y§.log(§=Z§.§0#-§);
            dispatchEvent(new §=Z§(§=Z§.§0#-§));
         }
         else
         {
            §6Y§.log(§=Z§.§?q§);
            dispatchEvent(new §=Z§(§=Z§.§?q§));
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.resize(param1);
      }
      
      private function resize(param1:Number) : void
      {
         this.§@$"§ = Math.max(param1,330);
         this.§?"_§.mcMiddle.height = this.§@$"§ - this.§?"_§.mcTop.height - this.§?"_§.mcBottom.height;
         this.§?"_§.mcBottom.y = this.§@$"§ - this.§?"_§.mcBottom.height;
         this.§?"_§.mcButtonsContainer.y = this.§@$"§ - this.§?"_§.mcButtonsContainer.height + 7;
         this.§+",§.scrollerSprite.y = 104;
         this.§+",§.setWidth(this.§@$"§ - 255);
         this.§0# §();
      }
      
      private function §^!8§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Shop_Selection",§!"p§.§+!;§);
         this.scroll(-this.§+",§.§,!a§);
      }
      
      private function §,!G§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Shop_Selection",§!"p§.§+!;§);
         this.scroll(this.§+",§.§,!a§);
      }
      
      private function §=$2§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         dispatchEvent(new §=Z§(§=Z§.§#k§));
      }
      
      public function §3"v§(param1:int, param2:Array = null, param3:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         switch(param1)
         {
            case §0!c§:
               if(!this.§1#f§)
               {
                  this.§1#f§ = new Object();
                  this.§1#f§.title = "Tournament scores";
                  this.§1#f§.data = [];
                  this.§1#f§.standings = [];
               }
               if(param2)
               {
                  this.§1#f§.standings = param2;
                  this.§[!+§();
               }
               if(§>$1§)
               {
                  this.§1#f§.data = this.§1#f§.standings.concat(this.§%"<§());
                  this.§1#f§.data = this.§1#f§.data.concat(this.§@"^§());
               }
               else
               {
                  this.§1#f§.data = this.§1#f§.standings.concat(new §>">§(""));
               }
               _loc4_ = this.§]#m§() == §;%§;
               break;
            case §&!7§:
               if(!this.§5"Z§)
               {
                  this.§5"Z§ = new Object();
                  this.§5"Z§.title = "Previous scores";
               }
               this.§5"Z§.standings = param2;
               if(§2#s§.§6!§.active && (§2#s§.§6!§.§6m§ || §2#s§.§6!§.§[#V§))
               {
                  _loc4_ = this.§]#m§() == §;%§;
               }
               else
               {
                  _loc4_ = true;
               }
               this.§[!+§();
               break;
            case §&#W§:
               if(!this.§0-§)
               {
                  this.§0-§ = new Object();
                  this.§0-§.leagueId = "NONE";
               }
               if(§2#s§.§6!§.currentLeague())
               {
                  this.§0-§.leagueId = §2#s§.§6!§.currentLeague().id;
               }
               if(!param2)
               {
                  param2 = [];
               }
               this.§0-§.standings = param2;
               if(this.§]#m§() == §&#q§ && this.§7"=§ != §+"M§)
               {
                  _loc4_ = true;
               }
               break;
            case §+A§:
               if(!this.§^$1§)
               {
                  this.§^$1§ = new Object();
                  this.§^$1§.leagueId = "NONE";
               }
               if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.l)
               {
                  _loc5_ = §2#s§.§6!§.§[#V§.l;
                  this.§^$1§.leagueId = _loc5_.pli.tn;
               }
               this.§^$1§.standings = param2;
               _loc4_ = this.§]#m§() == §&#q§;
               this.§[!+§();
               break;
            case §true §:
               if(!this.§#!8§)
               {
                  this.§#!8§ = new Object();
                  this.§#!8§.title = "";
                  this.§#!8§.leagueId = "NONE";
               }
               if(§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l && §2#s§.§6!§.§6m§.l.p)
               {
                  _loc6_ = §2#s§.§6!§.§6m§.l;
                  this.§#!8§.title = _loc6_.pli.ln;
                  this.§#!8§.leagueId = _loc6_.pli.tn;
               }
               this.§#!8§.standings = param2;
               _loc4_ = Boolean(this.§]#m§() == §&#q§ && StateTournamentResults.§,!%§ == StateTournamentResults.§ "-§);
               this.§[!+§();
               break;
            case §5#a§:
               if(!this.§6#&§)
               {
                  this.§6#&§ = new Object();
                  this.§6#&§.title = "Total scores";
               }
               if(!param2)
               {
                  this.§6#&§.standings = [];
               }
               else
               {
                  this.§6#&§.standings = param2;
                  if(!§>$1§)
                  {
                     this.§6#&§.standings = this.§6#&§.standings.concat(new §>">§(""));
                  }
                  this.§[!+§();
               }
               _loc4_ = true;
               break;
            case §-##§:
               if(!this.§9!=§)
               {
                  this.§9!=§ = new Object();
                  this.§9!=§.title = "Level scores";
               }
               if(!param2)
               {
                  param2 = [];
                  this.§ !6§(param3);
                  return;
               }
               if(!§>$1§)
               {
                  param2 = param2.concat(new §>">§(""));
               }
               else
               {
                  if(this.§>"f§.§=#S§)
                  {
                     param2 = param2.concat(this.§##V§());
                  }
                  param2 = param2.concat(this.§@"^§());
               }
               this.§9!=§.standings = param2;
               _loc4_ = this.§]#m§() == §;%§;
               this.§[!+§();
               break;
            case §+"M§:
               if(!this.§%1§)
               {
                  this.§%1§ = new Object();
                  this.§%1§.leagueId = "NONE";
                  this.§%1§.loadingScores = false;
               }
               if(§2#s§.§6!§.currentLeague())
               {
                  this.§%1§.leagueId = §2#s§.§6!§.currentLeague().id;
               }
               if(!param2)
               {
                  this.§%1§.standings = [];
                  this.§@!b§();
                  this.§%1§.loadingScores = true;
                  return;
               }
               this.§%1§.standings = param2;
               this.§%1§.loadingScores = false;
               _loc4_ = this.§]#m§() == §&#q§;
               this.§[!+§();
               break;
            case §=C§:
            case §0"7§:
               if(this.§0!L§)
               {
                  this.§0!L§.removeEventListener(§#"L§.§-#0§,this.§;#w§);
                  this.§0!L§ = null;
               }
               if(this.§>"f§)
               {
                  this.§>"f§.removeEventListener(§#"L§.§-#0§,this.§@!]§);
                  this.§>"f§ = null;
               }
               _loc4_ = true;
               this.§6!N§();
         }
         if(_loc4_)
         {
            this.§95§(param1,param3);
         }
      }
      
      public function §95§(param1:int, param2:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§;!Y§ = null;
         this.§""S§.visible = false;
         this.§4#X§.visible = false;
         switch(param1)
         {
            case §0!c§:
               this.§0#;§(§;%§);
               if(this.§1#f§)
               {
                  this.§4#X§.txtTitle.text = this.§1#f§.title;
                  this.§4#X§.visible = true;
                  this.§4#X§.y = §,e§;
                  this.§`!y§ = this.§1#f§.data;
               }
               else
               {
                  this.§`!y§ = [];
               }
               this.§2C§ = "";
               this.§?o§(§2#s§.§6!§.active,false);
               this.§0#§(false);
               this.§7#,§();
               this.§>"p§(§6"'§);
               this.§<"d§(false);
               break;
            case §&!7§:
               this.§0#;§(§;%§);
               if(this.§5"Z§)
               {
                  this.§4#X§.txtTitle.text = this.§5"Z§.title;
                  this.§4#X§.visible = true;
                  this.§4#X§.y = §,e§;
                  this.§`!y§ = this.§5"Z§.standings;
               }
               else
               {
                  this.§`!y§ = [];
               }
               this.§2C§ = "";
               _loc3_ = §2#s§.§6!§.active && (§2#s§.§6!§.§6m§ || §2#s§.§6!§.§[#V§);
               this.§?o§(_loc3_,false);
               this.§0#§(false);
               this.§7#,§();
               this.§>"p§(§6"'§);
               this.§<"d§(false);
               break;
            case §&#W§:
               this.§0#;§(§&#q§);
               this.§<"d§(false);
               if(this.§0-§)
               {
                  this.§""S§.visible = true;
                  this.§7!F§(this.§0-§.leagueId);
                  this.§`!y§ = this.§0-§.standings;
                  this.§0#§(this.§0-§.standings != null && this.§0-§.standings.length == 0);
               }
               else
               {
                  this.§`!y§ = [];
                  this.§0#§(false);
                  this.§7!F§(null);
               }
               this.§2C§ = "League";
               this.§?o§(true,true);
               this.§7#,§();
               this.§>"p§(§6"'§);
               break;
            case §+A§:
               this.§0#;§(§&#q§);
               this.§<"d§(false);
               if(this.§^$1§)
               {
                  this.§""S§.visible = true;
                  this.§7!F§(this.§^$1§.leagueId,true);
                  this.§`!y§ = this.§^$1§.standings;
                  this.§0#§(this.§^$1§.standings != null && this.§^$1§.standings.length == 0);
               }
               else
               {
                  this.§`!y§ = [];
                  this.§0#§(true);
                  this.§7!F§(null);
               }
               this.§2C§ = "League";
               this.§?o§(true,true);
               this.§7#,§();
               this.§>"p§(§6"'§);
               break;
            case §true §:
               this.§0#;§(§&#q§);
               this.§<"d§(false);
               if(this.§#!8§)
               {
                  this.§""S§.visible = true;
                  this.§7!F§(this.§#!8§.leagueId,true);
                  this.§`!y§ = this.§#!8§.standings;
                  this.§0#§(this.§#!8§.standings != null && this.§#!8§.standings.length == 0);
               }
               else
               {
                  this.§`!y§ = [];
                  this.§0#§(true);
                  this.§7!F§(null);
               }
               this.§2C§ = "League";
               this.§?o§(true,true);
               this.§7#,§();
               this.§>"p§(§6"'§);
               break;
            case §5#a§:
               this.§0#;§(§;%§);
               this.§4#X§.txtTitle.text = this.§6#&§.title;
               this.§4#X§.visible = true;
               this.§4#X§.y = §@Y§;
               this.§2C§ = "";
               this.§?o§(false,false);
               this.§`!y§ = this.§6#&§.standings;
               this.§7#,§();
               this.§>"p§(§6"'§);
               this.§0#§(false);
               this.§<"d§(this.§6#&§.standings.length == 0);
               break;
            case §-##§:
               this.§0#;§(§;%§);
               if(this.§9!=§)
               {
                  this.§4#X§.txtTitle.text = this.§9!=§.title;
                  this.§4#X§.visible = true;
                  if(this.§>"f§.§=#S§)
                  {
                     this.§4#X§.y = §,e§;
                  }
                  else
                  {
                     this.§4#X§.y = §@Y§;
                  }
                  this.§2C§ = this.mLevelManager.currentLevel;
                  this.§`!y§ = this.§9!=§.standings;
                  this.§7#,§();
                  this.§0#§(false);
                  this.§<"d§(this.§9!=§.standings.length == 0);
                  if(param2 == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.§9!=§.standings.length)
                     {
                        if(this.§9!=§.standings[_loc4_] is §@#P§ && this.§9!=§.standings[_loc4_].userId == this.§["L§)
                        {
                           param2 = this.§9!=§.standings[_loc4_].rank - 1;
                           break;
                        }
                        _loc4_++;
                     }
                  }
               }
               else
               {
                  this.§`!y§ = [];
                  this.§0#§(false);
                  this.§<"d§(false);
               }
               break;
            case §+"M§:
               this.§0#;§(§&#q§);
               if(this.§%1§)
               {
                  this.§2C§ = this.mLevelManager.currentLevel;
                  this.§""S§.visible = true;
                  this.§7!F§(this.§%1§.leagueId);
                  this.§`!y§ = this.§%1§.standings;
                  this.§0#§(!this.§%1§.loadingScores && this.§%1§.standings.length == 0);
                  this.§<"d§(this.§%1§.loadingScores);
                  if(param2 == -1)
                  {
                     for each(_loc5_ in this.§%1§.standings)
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
                  this.§`!y§ = [];
                  this.§0#§(false);
                  this.§<"d§(false);
                  this.§7!F§(null);
               }
               this.§?o§(true,true);
               this.§7#,§();
               break;
            case §=C§:
               this.§?o§(§2#s§.§6!§.active,this.§]#m§() == §&#q§);
               this.§`!y§ = [];
               this.§7#,§();
               this.§>"p§(§6"'§);
               this.§0#§(false);
               this.§<"d§(true);
               this.§7!F§(null);
               break;
            case §0"7§:
               this.§0#;§(§;%§);
               this.§?o§(false,false);
               this.§`!y§ = [];
               this.§7#,§();
               this.§>"p§(§6"'§);
               this.§0#§(false);
               this.§<"d§(true);
         }
         this.§+Z§(param2);
         this.§0# §();
         if(this.§7"=§ != param1)
         {
            this.§7"=§ = param1;
            dispatchEvent(new §=Z§(§=Z§.§;$"§,{"tab":this.§>[§}));
         }
      }
      
      private function §0#§(param1:Boolean) : void
      {
         this.§?"_§.mcNotInLeague.visible = param1;
         this.§?"_§.NotInLeagueBirdCoinIcon.visible = param1;
         this.§?"_§.NotInLeagueBG.visible = param1;
         this.§?"_§.mcRankingBadgeBg.visible = param1;
         if(param1)
         {
            if(§2#s§.§6!§.currentLeague())
            {
               this.§?"_§.mcNotInLeague.LeaguePrize.text = §2#s§.§6!§.currentLeague().reward.toString();
            }
         }
      }
      
      private function §+Z§(param1:int = -1) : void
      {
         var _loc5_:int = 0;
         if(param1 == -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§`!y§.length)
            {
               if(this.§`!y§[_loc5_].userId == this.§["L§)
               {
                  param1 = _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         var _loc2_:int = this.§+",§.offset;
         var _loc3_:int = Math.floor(this.§+",§.§,!a§ / 2);
         var _loc4_:int = param1 - _loc3_ - _loc2_;
         this.§+",§.scroll(_loc4_,true);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§+",§.scroll(param1);
            this.§0# §();
         }
      }
      
      private function §0# §() : void
      {
         var _loc1_:* = this.§+",§.offset != 0;
         var _loc2_:* = this.§+",§.offset != this.§+",§.data.length - this.§+",§.§,!a§;
         this.§?"_§.mcButtonsContainer.btnScrollUp.visible = _loc1_;
         this.§?"_§.mcButtonsContainer.btnScrollDown.visible = _loc2_;
      }
      
      public function §#!G§(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false) : Object
      {
         var _loc8_:§@#P§ = null;
         var _loc9_:int = 0;
         if(!this.§>"f§ || !this.§8l§ || this.§2C§ != param1)
         {
            return {};
         }
         this.§<$<§ = new Array();
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         this.§<!8§ = new Object();
         this.§<!8§.originalRank = 0;
         this.§<!8§.rankAfterUpdate = 0;
         this.§<!8§.leagueOriginalRank = 0;
         this.§<!8§.leagueRankAfterUpdate = 0;
         if(this.§0!L§)
         {
            this.§<!8§.leagueOriginalRank = this.§0!L§.§+";§(this.§["L§);
            this.§<!8§.leagueRankAfterUpdate = this.§0!L§.§#!G§(param2,param3,param4,_loc7_);
            this.§3"v§(§+"M§,this.§0!L§.data,this.§<!8§.leagueRankAfterUpdate);
         }
         this.§<!8§.originalRank = this.§>"f§.§+";§(this.§["L§);
         this.§<!8§.rankAfterUpdate = this.§>"f§.§#!G§(param2,param3,param4,_loc6_);
         for each(_loc8_ in _loc6_)
         {
            this.§<$<§.push(_loc8_);
            _loc9_ = _loc8_.rank - 1;
            §`"x§.§%$ §(_loc9_.toString());
         }
         this.§3"v§(§-##§,this.§8l§,this.§<!8§.rankAfterUpdate);
         return this.§<!8§;
      }
      
      public function §+"_§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0 || this.§?"_§.mcButtonsContainer.btnShopLarge.visible)
         {
            this.§?"_§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§?"_§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§?"_§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§?"_§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = §9U§.§7",§(param1);
            this.§?"_§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§?"_§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§?"_§.mcButtonsContainer.txtInboxItemCount.x + this.§?"_§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      private function §7#,§() : void
      {
         var _loc4_:§4O§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc1_:Dictionary = §&"+§.§6!§.§>?§();
         var _loc2_:Array = this.§`!y§.concat();
         var _loc3_:int = this.§`!y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§`!y§[_loc3_];
            _loc5_ = false;
            for each(_loc6_ in _loc1_)
            {
               if(_loc6_ == _loc4_.userId)
               {
                  _loc2_.splice(_loc3_,1);
                  _loc5_ = true;
               }
            }
            for each(_loc7_ in §@#0§)
            {
               if(_loc7_ == _loc4_.userId && !_loc5_)
               {
                  _loc2_.splice(_loc3_,1);
                  this.§`!y§.splice(_loc3_,1);
               }
            }
            _loc3_--;
         }
         this.§+",§.data = _loc2_;
      }
      
      public function §+#k§() : String
      {
         return "Friendsbar";
      }
      
      private function §`"i§(param1:Boolean) : void
      {
         if(§-#+§.§6!§.§0!,§ && §-#+§.§6!§.§0!,§.§9#w§(§+!c§.§]#!§) && param1)
         {
            this.§?"_§.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.§?"_§.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.§?"_§.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.§?"_§.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function §^"1§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            §@#0§.push(_loc2_.id);
         }
         this.§7#,§();
         this.§+",§.refresh();
         this.§0# §();
      }
      
      public function §+#w§() : void
      {
         var _loc1_:Boolean = §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.length > 0 || §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.length > 0;
         this.§?"_§.mcButtonsContainer.mcNewTagShop.visible = _loc1_ && !this.§?"_§.mcButtonsContainer.btnShopLarge.visible;
         this.§?"_§.mcButtonsContainer.mcNewTagShopLarge.visible = _loc1_ && this.§?"_§.mcButtonsContainer.btnShopLarge.visible;
         var _loc2_:§#"8§ = §#"8§(AngryBirdsBase.singleton.dataModel);
         var _loc3_:Boolean = _loc2_.§'"k§ || _loc2_.§ P§ || _loc2_.§]2§;
         this.§?"_§.mcButtonsContainer.Tag_Sale_Shop.visible = _loc3_ && !this.§?"_§.mcButtonsContainer.btnShopLarge.visible;
         this.§?"_§.mcButtonsContainer.Tag_Sale_Shop_Large.visible = _loc3_ && this.§?"_§.mcButtonsContainer.btnShopLarge.visible;
         var _loc4_:GiftInboxPopup;
         if(_loc4_ = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup)
         {
            _loc4_.§8"K§.§'#&§();
         }
      }
      
      public function §5#v§(param1:Boolean = false) : void
      {
         this.§?"_§.mcButtonsContainer.mcNewTagAvatar.visible = param1 && this.§>[§ == §;%§;
         this.§?"_§.mcButtonsContainer.Tag_Sale_Avatar.visible = §#"8§(AngryBirdsBase.singleton.dataModel).§&$$§ && this.§>[§ == §;%§;
         MovieClip(this.§?"_§.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.§?"_§.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function §?o§(param1:Boolean, param2:Boolean) : void
      {
         this.btnTabFriends.visible = param1;
         this.btnTabLeague.visible = param1;
         if(param2)
         {
            this.§;I§(this.§>[§);
            this.§,T§(this.§>[§ == §&#q§);
         }
         else
         {
            this.§;I§(§;%§);
            this.§,T§(false);
         }
      }
      
      public function §]#m§() : String
      {
         return this.§>[§;
      }
      
      public function § !6§(param1:int = -1) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.§>"f§ = null;
         if(_loc2_)
         {
            this.§>"f§ = this.§5"§.§?@§(this.mLevelManager.getEpisodeForLevel(_loc2_).name,_loc2_,this.mLevelManager.§[Y§(),this.mLevelManager.§[Y§());
            if(this.§>"f§.§8R§)
            {
               this.§>"f§.addEventListener(§#"L§.§-#0§,this.§@!]§);
            }
            else
            {
               this.§@!]§(null,param1);
            }
         }
      }
      
      private function §@!]§(param1:§#"L§, param2:int = -1) : void
      {
         var _loc4_:§@#P§ = null;
         var _loc5_:Object = null;
         this.§>"f§.removeEventListener(§#"L§.§-#0§,this.§@!]§);
         this.§8l§ = new Array();
         §+"0§.§]$4§ = new Vector.<§@#P§>();
         var _loc3_:int = 0;
         while(_loc3_ < this.§>"f§.data.length)
         {
            if(_loc4_ = this.§>"f§.data[_loc3_])
            {
               _loc4_.§;!o§ = this.§>"f§.§=#S§;
               if(_loc4_.§'#%§)
               {
                  if(§+"0§.§@#`§.indexOf(_loc4_.userId) == -1)
                  {
                     §+"0§.§]$4§.push(_loc4_);
                  }
               }
               else
               {
                  if(this.§<$<§)
                  {
                     for each(_loc5_ in this.§<$<§)
                     {
                        if(_loc5_.userId == _loc4_.userId)
                        {
                           _loc4_.beaten = true;
                           break;
                        }
                     }
                  }
                  this.§8l§.push(_loc4_);
               }
            }
            _loc3_++;
         }
         if(this.§8l§.length == 0)
         {
            _loc4_ = new §@#P§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName,null,0,0,0,1,null,0,null);
            this.§8l§.push(_loc4_);
            this.§>"f§.§>O§(_loc4_);
         }
         else if(§9=§.§2#p§(§9=§.§1H§))
         {
            _loc3_ = 0;
            while(_loc3_ < this.§8l§.length)
            {
               this.§8l§[_loc3_].rank = _loc3_ + 1;
               _loc3_++;
            }
         }
         this.§3"v§(§-##§,this.§8l§,param2);
      }
      
      public function §@!b§() : void
      {
         if(this.mLevelManager.§[Y§() && §2#s§.§6!§.active)
         {
            if(!this.§0!L§ || !this.§0!L§.§8R§)
            {
               this.§0!L§ = §2#s§.§6!§.§?@§(this.mLevelManager.currentLevel,true);
               if(this.§0!L§.§8R§)
               {
                  this.§0!L§.addEventListener(§#"L§.§-#0§,this.§;#w§);
               }
               else
               {
                  this.§;#w§(null);
               }
            }
         }
      }
      
      private function §;#w§(param1:§#"L§) : void
      {
         this.§0!L§.removeEventListener(§#"L§.§-#0§,this.§;#w§);
         this.§3"v§(§+"M§,this.§0!L§.data);
      }
      
      public function §,$A§() : Boolean
      {
         var _loc1_:String = AngryBirdsBase.singleton.§ Y§();
         if(_loc1_ == StatePlay.STATE_NAME || _loc1_ == §0"h§.STATE_NAME || _loc1_ == §1#h§.STATE_NAME || _loc1_ == §["F§.STATE_NAME || _loc1_ == §;$+§.STATE_NAME || _loc1_ == §=!V§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function §'!F§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(this.§0-§ && this.§0-§.standings)
         {
            for each(_loc3_ in this.§0-§.standings)
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
         if(this.§%1§ && this.§%1§.standings)
         {
            for each(_loc3_ in this.§%1§.standings)
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
         if(this.§^$1§ && this.§^$1§.standings)
         {
            for each(_loc3_ in this.§^$1§.standings)
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
         if(this.§#!8§ && this.§#!8§.standings)
         {
            for each(_loc3_ in this.§#!8§.standings)
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
         this.§95§(this.§7"=§);
      }
      
      private function §<"d§(param1:Boolean) : void
      {
         this.§?"_§.mcLoadingSpinner.visible = param1;
      }
      
      public function §5!c§() : §+"0§
      {
         if(this.§7"=§ == §+"M§)
         {
            return this.§0!L§;
         }
         return this.§>"f§;
      }
      
      private function §@"^§() : Array
      {
         var _loc4_:§&#k§ = null;
         var _loc1_:Vector.<§&#k§> = §4"I§.§-!m§();
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc1_)
         {
            if(_loc3_ >= §+"0§.§?";§)
            {
               break;
            }
            _loc2_.push(new §[" §(_loc4_.userID,_loc4_.name));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §%"<§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §+"0§.§]#6§.length && _loc2_ < §+"0§.§7![§)
         {
            if(§+"0§.§@#`§.indexOf(§+"0§.§]#6§[_loc3_].userId) == -1)
            {
               _loc1_.push(§+"0§.§]#6§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function §##V§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < §+"0§.§]$4§.length && _loc2_ < §+"0§.§7![§)
         {
            if(§+"0§.§@#`§.indexOf(§+"0§.§]$4§[_loc3_].userId) == -1)
            {
               _loc1_.push(§+"0§.§]$4§[_loc3_]);
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function §'m§() : int
      {
         return this.§7"=§;
      }
      
      public function levelStarted() : void
      {
         this.§<$<§ = new Array();
         this.§&!%§ = new Array();
         this.§<!8§ = null;
      }
      
      private function §[!+§() : void
      {
         if(!this.§?"_§.hasEventListener(MouseEvent.CLICK))
         {
            this.§?"_§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§>"E§);
         }
      }
      
      private function §6!N§() : void
      {
         this.§?"_§.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.§>"E§);
      }
      
      public function §4!C§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§&!%§)
         {
            for each(_loc2_ in this.§&!%§)
            {
               if(_loc2_ == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §7!b§() : Array
      {
         return this.§<$<§;
      }
      
      public function §9!7§(param1:Boolean) : int
      {
         if(this.§<!8§)
         {
            if(!param1)
            {
               return this.§<!8§.rankAfterUpdate;
            }
            if(this.§<!8§.originalRank > this.§<!8§.rankAfterUpdate)
            {
               return this.§<!8§.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function §7!F§(param1:String, param2:Boolean = false) : void
      {
         var ld:§4$'§ = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:§4$'§ = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:§4$'§ = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         var leagueID:String = param1;
         var showOnlyLeagueIcon:Boolean = param2;
         if(leagueID == null)
         {
            this.§""S§.LeagueProgBar.visible = false;
            this.§""S§.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = §2#s§.§6!§.§5"Y§();
         this.§""S§.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.§""S§.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.§""S§.visible = playerLeagueProfile != null;
            this.§""S§.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in §?"z§.§%#V§)
         {
            this.§""S§.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.§""S§.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = §2#s§.§6!§.currentLeague();
            if(currentLeague)
            {
               nextLeague = §?"z§.§5?§(currentLeague.id);
               currentLeagueRatingMin = currentLeague.§[#_§;
               currentLeagueRatingMax = nextLeague.§[#_§;
            }
            if(currentLeague.name == §?"z§.§"#S§())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = §2#s§.§6!§.§]e§();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - §?"z§.§ "§ >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / §?"z§.§ "§);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += §?"z§.§ "§ * playerRankStarAmount;
               currentLeagueRatingMax += §?"z§.§ "§ * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.§""S§.LeagueProgBar.StarIcon.visible = true;
                  this.§""S§.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.§""S§.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.§""S§.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.§""S§.height);
            this.§""S§.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.§""S§.LeagueProgBar.ProgText01.visible = true;
               this.§""S§.LeagueProgBar.ProgText02.visible = false;
               this.§""S§.LeagueProgBar.ProgText03.visible = false;
               this.§""S§.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.§""S§.LeagueProgBar.ProgText01.visible = false;
               this.§""S§.LeagueProgBar.ProgText02.visible = true;
               this.§""S§.LeagueProgBar.ProgText03.visible = false;
               this.§""S§.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.§""S§.LeagueProgBar.ProgText01.visible = false;
               this.§""S§.LeagueProgBar.ProgText02.visible = false;
               this.§""S§.LeagueProgBar.ProgText03.visible = true;
               this.§""S§.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.§""S§.visible = false;
            fn = function(param1:§7#U§):void
            {
               §2#s§.§6!§.removeEventListener(§7#U§.§`$4§,fn);
               §7!F§(leagueID);
            };
            §2#s§.§6!§.addEventListener(§7#U§.§`$4§,fn);
         }
      }
   }
}
