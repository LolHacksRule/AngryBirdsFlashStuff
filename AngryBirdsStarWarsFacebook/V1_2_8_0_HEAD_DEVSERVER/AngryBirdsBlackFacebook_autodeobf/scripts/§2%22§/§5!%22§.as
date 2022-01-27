package §2"§
{
   import § !m§.§^"j§;
   import § "4§.§7q§;
   import §!"e§.§`"W§;
   import §,!,§.§0!d§;
   import §,"N§.§=!1§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7"a§.§@4§;
   import §="2§.§?!r§;
   import §?m§.§,"X§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import com.angrybirds.§9#[§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5!"§ extends §0!d§
   {
      
      public static const §]#§:String = "unclaimed";
      
      public static const §!!i§:String = "claiming";
      
      public static const §]K§:String = "claimed";
      
      public static const §>!s§:String = "giftedBack";
      
      public static const §8!!§:String = "helpRequest";
      
      public static const §["D§:String = "helpRequestSent";
      
      public static const §<#=§:String = "DAILY";
      
      public static const §8"l§:String = "INVITATION";
      
      public static const §,!<§:String = "unclaimedInviteGift";
      
      public static const §2!N§:String = "claimingInviteGift";
      
      public static const §8l§:String = "claimedInviteGift";
      
      public static const §?S§:String = "giftedBackInviteGift";
      
      public static var §4"G§:Object = {};
      
      private static var §,"g§:§,"X§;
       
      
      protected var § !&§:§@4§;
      
      private var §?"R§:MovieClip;
      
      private var §&"-§:§=!1§;
      
      public function §5!"§()
      {
         super();
         this.§?"R§ = new §5_§.§`"G§("InboxItemRendererAsset")();
         addChild(this.§?"R§);
         this.§?"R§.btnClaim.addEventListener(MouseEvent.CLICK,this.§=!>§);
         this.§?"R§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§ !"§);
         this.§?"R§.btnClose.addEventListener(MouseEvent.CLICK,this.§6!E§);
         this.§?"R§.btnPlay.addEventListener(MouseEvent.CLICK,this.§^#O§);
         this.§?"R§.btnHelp.addEventListener(MouseEvent.CLICK,this.§`!D§);
         this.§?"R§.btnPlayTournament.addEventListener(MouseEvent.CLICK,this.§2"i§);
         this.§?"R§.btnFreeSpin.addEventListener(MouseEvent.CLICK,this.§#!A§);
         this.§?"R§.btnBuySpin.addEventListener(MouseEvent.CLICK,this.§5#[§);
         this.§?"R§.btnClaimInviteGift.addEventListener(MouseEvent.CLICK,this.§?"u§);
         this.§?"R§.stop();
         this.§&"-§ = §@#B§(§4#;§.singleton.dataModel).§;!A§;
      }
      
      public static function §;y§(param1:§,"X§) : void
      {
         §,"g§ = param1;
      }
      
      private function §#!A§(param1:MouseEvent) : void
      {
         §^"j§(§%4§).§^"#§();
         var _loc3_:int = 0;
         while(_loc3_ < 14)
         {
            this.§?"R§.addChild(new §"!F§(425 + Math.random() * 20,20 + Math.random() * 20));
            _loc3_++;
         }
         this.§!"D§();
      }
      
      private function §5#[§(param1:MouseEvent) : void
      {
         var _loc3_:§[!j§ = null;
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         if(_loc2_.§1!f§.§]"g§ <= _loc2_.§`!W§.starCoins)
         {
            §?!r§.§"#_§("coins_added_1");
            §^"j§(§%4§).§^"#§();
            this.§!"D§();
         }
         else
         {
            _loc3_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
            §4#;§.singleton.popupManager.openPopup(_loc3_,true,true);
         }
      }
      
      private function §1^§() : void
      {
         this.§?"R§.gotoAndStop("free_spin_unclaimed");
         this.§?"R§.txtTitle.text = §9#[§.§ !N§;
         this.§?"R§.txtDescription.text = §9#[§.§<"m§;
      }
      
      private function §]"G§(param1:Boolean) : void
      {
         var _loc5_:MovieClip = null;
         this.§?"R§.gotoAndStop("spin_complete");
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:String = §^"j§(§%4§).§^"s§.itemId;
         var _loc4_:String = _loc2_.§]"<§.§;#?§.§<Z§(_loc3_).§?#`§;
         if(_loc3_)
         {
            _loc5_ = this.§?"R§.rewardClaimed;
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
         this.§?"R§.txtTitle.text = §9#[§.§1!a§.replace("%1",_loc4_);
         this.§?"R§.txtDescription.text = §9#[§.§1!p§;
         if(§^"j§(§%4§).§9!h§)
         {
            §?!r§.§"#_§("powerup_selected");
            §^"j§(§%4§).§9!h§ = false;
         }
      }
      
      private function §!"D§() : void
      {
         this.§?"R§.gotoAndStop("spinning");
         this.§?"R§.txtTitle.text = §9#[§.§@!J§;
         this.§?"R§.txtDescription.text = §9#[§.§]"P§;
      }
      
      protected function §=!>§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§4#U§,data,true));
         this.§;f§();
      }
      
      protected function § !"§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§>#N§,data,true));
         this.§;f§();
      }
      
      protected function §6!E§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§]x§,data,true));
      }
      
      protected function §^#O§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§+!j§,data,true));
      }
      
      protected function §2"i§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§1"l§,data,true));
      }
      
      protected function §`!D§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§'""§,data,true));
         this.§;f§();
      }
      
      protected function §?"u§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%r§(§%r§.§8"L§,data,true));
         this.§;f§();
      }
      
      override public function set data(param1:Object) : void
      {
         if(§%4§ is §^"j§)
         {
            §^"j§(§%4§).removeEventListener(§^"j§.§-"9§,this.§!!h§);
         }
         super.data = param1;
         if(!data)
         {
            return;
         }
         this.§;f§();
      }
      
      protected function §;f§() : void
      {
         if(this.§ !&§)
         {
            if(this.§ !&§.parent == this)
            {
               removeChild(this.§ !&§);
            }
            this.§ !&§ = null;
         }
         if(!§%4§)
         {
            return;
         }
         if(§%4§ is §^"j§)
         {
            §^"j§(§%4§).addEventListener(§^"j§.§-"9§,this.§!!h§);
            this.§%#9§();
         }
         else if(§%4§.isBrag)
         {
            this.§<#6§();
         }
         else if(§%4§.isChallenge)
         {
            this.§"#<§();
         }
         else if(§%4§.isInviteGift)
         {
            this.§^"5§();
         }
         else
         {
            this.§9"R§();
         }
         if(§%4§.cachedProfilePicture)
         {
            this.§ !&§ = addChild(§%4§.cachedProfilePicture) as §@4§;
         }
         else
         {
            this.§ !&§ = new §@4§(§%4§.i);
            this.§ !&§.mouseChildren = false;
            this.§ !&§.mouseEnabled = false;
            addChild(this.§ !&§);
            §%4§.cachedProfilePicture = this.§ !&§;
         }
      }
      
      private function §%#9§() : void
      {
         var _loc1_:§^"j§ = §^"j§(§%4§);
         if(_loc1_.§1"d§)
         {
            this.§!"D§();
         }
         else if(_loc1_.§8!Q§ > 0)
         {
            this.§1^§();
         }
         else
         {
            this.§]"G§(true);
         }
      }
      
      private function §!!h§(param1:Event) : void
      {
         this.§]"G§(false);
      }
      
      private function §9"R§() : void
      {
         if(!§%4§.status)
         {
            if(§%4§.isHelpRequest)
            {
               §%4§.status = §8!!§;
            }
            else
            {
               §%4§.status = §]#§;
            }
         }
         switch(§%4§.status)
         {
            case §8!!§:
               this.§?"R§.gotoAndStop("help_request");
               this.§?"R§.txtTitle.text = §9#[§.§7"l§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = §9#[§.§?#9§;
               break;
            case §["D§:
               this.§?"R§.gotoAndStop("help_request_sent");
               this.§?"R§.txtTitle.text = §9#[§.§7"l§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = §9#[§.§"#I§;
               break;
            case §]#§:
               this.§?"R§.gotoAndStop("unclaimed");
               this.§?"R§.txtTitle.text = §9#[§.§?!,§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = §9#[§.§<"C§;
               break;
            case §!!i§:
               this.§?"R§.gotoAndStop("claiming");
               this.§?"R§.txtTitle.text = §9#[§.§?!,§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = §9#[§.§<"C§;
               break;
            case §]K§:
               this.§?"R§.gotoAndStop("claimed");
               this.§?"R§.txtTitle.text = §9#[§.§!!5§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = !!§%4§.content ? §9#[§.§+"8§.replace("%1",§%4§.content) : §9#[§.§8p§;
               this.§?"R§.btnGiftBack.visible = this.§&"-§.§%#-§(§%4§.i);
               break;
            case §>!s§:
               this.§?"R§.gotoAndStop("gifted_back");
               this.§?"R§.txtTitle.text = §9#[§.§!!5§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = !!§%4§.content ? §9#[§.§+"8§.replace("%1",§%4§.content) : §9#[§.§8p§;
         }
         this.§?"R§.btnClose.visible = false;
      }
      
      private function §^"5§() : void
      {
         if(!§%4§.status)
         {
            §%4§.status = §,!<§;
         }
         switch(§%4§.status)
         {
            case §,!<§:
               this.§?"R§.gotoAndStop("invite_gift_unclaimed");
               this.§?"R§.txtTitle.text = §9#[§.§&!0§.replace("%1",§%4§.n);
               this.§?"R§.txtDescription.text = §9#[§.§=!3§;
               break;
            case §2!N§:
               this.§?"R§.gotoAndStop("invite_gift_claiming");
               this.§?"R§.txtTitle.text = §9#[§.§!!A§;
               this.§?"R§.txtDescription.text = §9#[§.§0t§;
               break;
            case §8l§:
               this.§?"R§.gotoAndStop("invite_gift_claimed");
               this.§?"R§.txtTitle.text = §9#[§.§2!F§;
               this.§?"R§.txtDescription.text = §9#[§.§?"r§;
               this.§?"R§.btnGiftBack.visible = this.§&"-§.§%#-§(§%4§.i);
               break;
            case §?S§:
               this.§?"R§.gotoAndStop("invite_gift_gifted_back");
               this.§?"R§.txtTitle.text = §9#[§.§@!b§;
               this.§?"R§.txtDescription.text = §9#[§.§ !j§;
         }
      }
      
      private function §<#6§() : void
      {
         var _loc1_:§@"b§ = null;
         this.§?"R§.txtTitle.text = §9#[§.§;"@§.replace("%1",§%4§.n);
         this.§?"R§.gotoAndStop("brag");
         if(§%4§.lvl.indexOf("2000-") != -1)
         {
            _loc1_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
            if(!_loc1_.§["^§(§%4§.lvl))
            {
               this.§?"R§.txtDescription.text = §9#[§.§#"o§;
               this.§?"R§.btnPlay.visible = false;
            }
            else if(!_loc1_.isLevelOpen(§%4§.lvl))
            {
               this.§?"R§.txtDescription.text = §9#[§.§%!u§;
               this.§?"R§.btnPlay.visible = false;
            }
            else
            {
               this.§?"R§.txtDescription.text = §,"g§.getPrettyLevelString(§%4§.lvl);
               this.§?"R§.btnPlay.visible = true;
            }
         }
         else
         {
            this.§?"R§.txtDescription.text = §,"g§.getPrettyLevelString(§%4§.lvl);
            this.§?"R§.btnPlay.visible = true;
         }
      }
      
      private function §"#<§() : void
      {
         this.§?"R§.gotoAndStop("challenge");
         if(§7q§(§4#;§.singleton.dataModel.userProgress).§#F§)
         {
            this.§?"R§.txtTitle.text = §9#[§.§?"t§.replace("%1",§%4§.n);
            this.§?"R§.txtDescription.text = §9#[§.§2#O§;
         }
         else
         {
            this.§?"R§.txtTitle.text = §9#[§.§6!r§.replace("%1",§%4§.n);
            this.§?"R§.txtDescription.text = §9#[§.§;>§;
            this.§?"R§.btnPlayTournament.visible = false;
         }
      }
      
      override public function get height() : Number
      {
         return 55;
      }
   }
}
