package §>!2§
{
   import § "I§.§?!%§;
   import §"!P§.§3G§;
   import §,"v§.§@§;
   import §,#+§.§;"y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §6"e§.§+!§;
   import §9!&§.§`-§;
   import §<"s§.§0u§;
   import §[!<§.§2"Q§;
   import §`"8§.§-!w§;
   import §`"8§.§2"+§;
   import §`"8§.§>6§;
   import com.angrybirds.§?Q§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § ^§ extends §`-§
   {
      
      public static const §+"O§:String = "unclaimed";
      
      public static const §4"E§:String = "claiming";
      
      public static const §-9§:String = "claimed";
      
      public static const §>#5§:String = "giftedBack";
      
      public static const §<##§:String = "helpRequest";
      
      public static const §9#0§:String = "helpRequestSent";
      
      public static const §!"§:String = "DAILY";
      
      public static const §0Z§:String = "INVITATION";
      
      public static const §,$§:String = "unclaimedInviteGift";
      
      public static const §3!W§:String = "claimingInviteGift";
      
      public static const §^e§:String = "claimedInviteGift";
      
      public static const §!<§:String = "giftedBackInviteGift";
      
      public static var §<#'§:Object = {};
      
      private static var §![§:§;"y§;
       
      
      protected var §,a§:§?!%§;
      
      private var §@!4§:MovieClip;
      
      private var §<!S§:§2"+§;
      
      public function § ^§()
      {
         super();
         this.§@!4§ = new §5"]§.§4!K§("InboxItemRendererAsset")();
         addChild(this.§@!4§);
         this.§@!4§.btnClaim.addEventListener(MouseEvent.CLICK,this.§7!d§);
         this.§@!4§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§05§);
         this.§@!4§.btnClose.addEventListener(MouseEvent.CLICK,this.§]_§);
         this.§@!4§.btnPlay.addEventListener(MouseEvent.CLICK,this.§2#'§);
         this.§@!4§.btnHelp.addEventListener(MouseEvent.CLICK,this.§ !?§);
         this.§@!4§.btnPlayTournament.addEventListener(MouseEvent.CLICK,this.§!!=§);
         this.§@!4§.btnFreeSpin.addEventListener(MouseEvent.CLICK,this.§[^§);
         this.§@!4§.btnBuySpin.addEventListener(MouseEvent.CLICK,this.§2"1§);
         this.§@!4§.btnClaimInviteGift.addEventListener(MouseEvent.CLICK,this.§@!j§);
         this.§@!4§.stop();
         this.§<!S§ = §-!w§(§;"@§.singleton.dataModel).§'"l§;
      }
      
      public static function §31§(param1:§;"y§) : void
      {
         §![§ = param1;
      }
      
      private function §[^§(param1:MouseEvent) : void
      {
         §2"Q§(§,6§).§]!9§();
         var _loc3_:int = 0;
         while(_loc3_ < 14)
         {
            this.§@!4§.addChild(new §4!u§(425 + Math.random() * 20,20 + Math.random() * 20));
            _loc3_++;
         }
         this.§&"y§();
      }
      
      private function §2"1§(param1:MouseEvent) : void
      {
         var _loc3_:§5!R§ = null;
         var _loc2_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         if(_loc2_.§9"1§.§-"G§ <= _loc2_.§;L§.starCoins)
         {
            §@§.§=Y§("coins_added_1");
            §2"Q§(§,6§).§]!9§();
            this.§&"y§();
         }
         else
         {
            _loc3_ = new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§);
            §;"@§.singleton.popupManager.openPopup(_loc3_,true,true);
         }
      }
      
      private function §2m§() : void
      {
         this.§@!4§.gotoAndStop("free_spin_unclaimed");
         this.§@!4§.txtTitle.text = §?Q§.§"!D§;
         this.§@!4§.txtDescription.text = §?Q§.§["!§;
      }
      
      private function §<'§(param1:Boolean) : void
      {
         var _loc5_:MovieClip = null;
         this.§@!4§.gotoAndStop("spin_complete");
         var _loc2_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc3_:String = §2"Q§(§,6§).§4!g§.itemId;
         var _loc4_:String = _loc2_.§=>§.§[!D§.§9!r§(_loc3_).§6!!§;
         if(_loc3_)
         {
            _loc5_ = this.§@!4§.rewardClaimed;
            if(param1)
            {
               _loc5_.gotoAndStop(_loc5_.totalFrames);
            }
            else
            {
               _loc5_.gotoAndPlay(1);
            }
            _loc5_.powerup.gotoAndStop(_loc3_);
         }
         this.§@!4§.txtTitle.text = §?Q§.§%"Z§.replace("%1",_loc4_);
         this.§@!4§.txtDescription.text = §?Q§.§2!m§;
         if(§2"Q§(§,6§).§0l§)
         {
            §@§.§=Y§("powerup_selected");
            §2"Q§(§,6§).§0l§ = false;
         }
      }
      
      private function §&"y§() : void
      {
         this.§@!4§.gotoAndStop("spinning");
         this.§@!4§.txtTitle.text = §?Q§.§"0§;
         this.§@!4§.txtDescription.text = §?Q§.§64§;
      }
      
      protected function §7!d§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§3'§,data,true));
         this.§@<§();
      }
      
      protected function §05§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§#!w§,data,true));
         this.§@<§();
      }
      
      protected function §]_§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§<"8§,data,true));
      }
      
      protected function §2#'§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§="S§,data,true));
      }
      
      protected function §!!=§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§>!F§,data,true));
      }
      
      protected function § !?§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§7D§,data,true));
         this.§@<§();
      }
      
      protected function §@!j§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6!4§(§6!4§.§`G§,data,true));
         this.§@<§();
      }
      
      override public function set data(param1:Object) : void
      {
         if(§,6§ is §2"Q§)
         {
            §2"Q§(§,6§).removeEventListener(§2"Q§.§?!b§,this.§""X§);
         }
         super.data = param1;
         if(!data)
         {
            return;
         }
         this.§@<§();
      }
      
      protected function §@<§() : void
      {
         if(this.§,a§)
         {
            if(this.§,a§.parent == this)
            {
               removeChild(this.§,a§);
            }
            this.§,a§ = null;
         }
         if(!§,6§)
         {
            return;
         }
         if(§,6§ is §2"Q§)
         {
            §2"Q§(§,6§).addEventListener(§2"Q§.§?!b§,this.§""X§);
            this.§%!^§();
         }
         else if(§,6§.isBrag)
         {
            this.§`[§();
         }
         else if(§,6§.isChallenge)
         {
            this.§!y§();
         }
         else if(§,6§.isInviteGift)
         {
            this.§+!o§();
         }
         else
         {
            this.§6!N§();
         }
         if(§,6§.cachedProfilePicture)
         {
            this.§,a§ = addChild(§,6§.cachedProfilePicture) as §?!%§;
         }
         else
         {
            this.§,a§ = new §?!%§(§,6§.i);
            this.§,a§.mouseChildren = false;
            this.§,a§.mouseEnabled = false;
            addChild(this.§,a§);
            §,6§.cachedProfilePicture = this.§,a§;
         }
      }
      
      private function §%!^§() : void
      {
         var _loc1_:§2"Q§ = §2"Q§(§,6§);
         if(_loc1_.§["4§)
         {
            this.§&"y§();
         }
         else if(_loc1_.§&&§ > 0)
         {
            this.§2m§();
         }
         else
         {
            this.§<'§(true);
         }
      }
      
      private function §""X§(param1:Event) : void
      {
         this.§<'§(false);
      }
      
      private function §6!N§() : void
      {
         if(!§,6§.status)
         {
            if(§,6§.isHelpRequest)
            {
               §,6§.status = §<##§;
            }
            else
            {
               §,6§.status = §+"O§;
            }
         }
         switch(§,6§.status)
         {
            case §<##§:
               this.§@!4§.gotoAndStop("help_request");
               this.§@!4§.txtTitle.text = §?Q§.§-"X§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = §?Q§.§0f§;
               break;
            case §9#0§:
               this.§@!4§.gotoAndStop("help_request_sent");
               this.§@!4§.txtTitle.text = §?Q§.§-"X§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = §?Q§.§'!0§;
               break;
            case §+"O§:
               this.§@!4§.gotoAndStop("unclaimed");
               this.§@!4§.txtTitle.text = §?Q§.§=1§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = §?Q§.§3"x§;
               break;
            case §4"E§:
               this.§@!4§.gotoAndStop("claiming");
               this.§@!4§.txtTitle.text = §?Q§.§=1§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = §?Q§.§3"x§;
               break;
            case §-9§:
               this.§@!4§.gotoAndStop("claimed");
               this.§@!4§.txtTitle.text = §?Q§.§[+§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = !!§,6§.content ? §?Q§.§0#1§.replace("%1",§,6§.content) : §?Q§.§&"a§;
               this.§@!4§.btnGiftBack.visible = this.§<!S§.§1!I§(§,6§.i);
               break;
            case §>#5§:
               this.§@!4§.gotoAndStop("gifted_back");
               this.§@!4§.txtTitle.text = §?Q§.§[+§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = !!§,6§.content ? §?Q§.§0#1§.replace("%1",§,6§.content) : §?Q§.§&"a§;
         }
         this.§@!4§.btnClose.visible = false;
      }
      
      private function §+!o§() : void
      {
         if(!§,6§.status)
         {
            §,6§.status = §,$§;
         }
         switch(§,6§.status)
         {
            case §,$§:
               this.§@!4§.gotoAndStop("invite_gift_unclaimed");
               this.§@!4§.txtTitle.text = §?Q§.§-!l§.replace("%1",§,6§.n);
               this.§@!4§.txtDescription.text = §?Q§.§0&§;
               break;
            case §3!W§:
               this.§@!4§.gotoAndStop("invite_gift_claiming");
               this.§@!4§.txtTitle.text = §?Q§.§6"W§;
               this.§@!4§.txtDescription.text = §?Q§.§2"d§;
               break;
            case §^e§:
               this.§@!4§.gotoAndStop("invite_gift_claimed");
               this.§@!4§.txtTitle.text = §?Q§.§#6§;
               this.§@!4§.txtDescription.text = §?Q§.§&,§;
               this.§@!4§.btnGiftBack.visible = this.§<!S§.§1!I§(§,6§.i);
               break;
            case §!<§:
               this.§@!4§.gotoAndStop("invite_gift_gifted_back");
               this.§@!4§.txtTitle.text = §?Q§.§?O§;
               this.§@!4§.txtDescription.text = §?Q§.§&!f§;
         }
      }
      
      private function §`[§() : void
      {
         var _loc1_:§>6§ = null;
         this.§@!4§.txtTitle.text = §?Q§.§,"D§.replace("%1",§,6§.n);
         this.§@!4§.gotoAndStop("brag");
         if(§,6§.lvl.indexOf("2000-") != -1)
         {
            _loc1_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
            if(!_loc1_.§]!@§(§,6§.lvl))
            {
               this.§@!4§.txtDescription.text = §?Q§.§3D§;
               this.§@!4§.btnPlay.visible = false;
            }
            else if(!_loc1_.isLevelOpen(§,6§.lvl))
            {
               this.§@!4§.txtDescription.text = §?Q§.§-!s§;
               this.§@!4§.btnPlay.visible = false;
            }
            else
            {
               this.§@!4§.txtDescription.text = §![§.getPrettyLevelString(§,6§.lvl);
               this.§@!4§.btnPlay.visible = true;
            }
         }
         else
         {
            this.§@!4§.txtDescription.text = §![§.getPrettyLevelString(§,6§.lvl);
            this.§@!4§.btnPlay.visible = true;
         }
      }
      
      private function §!y§() : void
      {
         this.§@!4§.gotoAndStop("challenge");
         if(§3G§(§;"@§.singleton.dataModel.userProgress).§70§)
         {
            this.§@!4§.txtTitle.text = §?Q§.§0K§.replace("%1",§,6§.n);
            this.§@!4§.txtDescription.text = §?Q§.§=!f§;
         }
         else
         {
            this.§@!4§.txtTitle.text = §?Q§.§=!Q§.replace("%1",§,6§.n);
            this.§@!4§.txtDescription.text = §?Q§.§9"D§;
            this.§@!4§.btnPlayTournament.visible = false;
         }
      }
      
      override public function get height() : Number
      {
         return 55;
      }
   }
}
