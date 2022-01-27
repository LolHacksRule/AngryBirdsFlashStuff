package §"!H§
{
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+&§.§&q§;
   import §6"-§.§^!Q§;
   import §8§.§"!E§;
   import §9"U§.§5"T§;
   import §9"U§.§7"1§;
   import §9"U§.§[!s§;
   import §^!T§.§'"9§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import com.angrybirds.§>"B§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §null §.§ #$§;
   
   public class §@!Y§ extends §"!E§
   {
      
      public static const §3S§:String = "unclaimed";
      
      public static const §86§:String = "claiming";
      
      public static const §#!`§:String = "claimed";
      
      public static const §0!6§:String = "giftedBack";
      
      public static const §8#+§:String = "helpRequest";
      
      public static const §&?§:String = "helpRequestSent";
      
      public static const §#!1§:String = "DAILY";
      
      public static const §<!P§:String = "INVITATION";
      
      public static const §!I§:String = "unclaimedInviteGift";
      
      public static const §9p§:String = "claimingInviteGift";
      
      public static const §!!=§:String = "claimedInviteGift";
      
      public static const §7!x§:String = "giftedBackInviteGift";
      
      public static var §6"`§:Object = {};
      
      private static var §-c§:§ #$§;
       
      
      protected var §[q§:§&q§;
      
      private var §&"C§:MovieClip;
      
      private var §4T§:§5"T§;
      
      public function §@!Y§()
      {
         super();
         this.§&"C§ = new §%!Z§.§;",§("InboxItemRendererAsset")();
         addChild(this.§&"C§);
         this.§&"C§.btnClaim.addEventListener(MouseEvent.CLICK,this.§@d§);
         this.§&"C§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§="Z§);
         this.§&"C§.btnClose.addEventListener(MouseEvent.CLICK,this.§%!6§);
         this.§&"C§.btnPlay.addEventListener(MouseEvent.CLICK,this.§["F§);
         this.§&"C§.btnHelp.addEventListener(MouseEvent.CLICK,this.§9!,§);
         this.§&"C§.btnPlayTournament.addEventListener(MouseEvent.CLICK,this.§>!g§);
         this.§&"C§.btnFreeSpin.addEventListener(MouseEvent.CLICK,this.§+"=§);
         this.§&"C§.btnBuySpin.addEventListener(MouseEvent.CLICK,this.§@!n§);
         this.§&"C§.btnClaimInviteGift.addEventListener(MouseEvent.CLICK,this.§[!1§);
         this.§&"C§.stop();
         this.§4T§ = §7"1§(§4"#§.singleton.dataModel).§6!I§;
      }
      
      public static function §"h§(param1:§ #$§) : void
      {
         §-c§ = param1;
      }
      
      private function §+"=§(param1:MouseEvent) : void
      {
         §'"9§(§+3§).§9!4§();
         var _loc3_:int = 0;
         while(_loc3_ < 14)
         {
            this.§&"C§.addChild(new §"!=§(425 + Math.random() * 20,20 + Math.random() * 20));
            _loc3_++;
         }
         this.§2!t§();
      }
      
      private function §@!n§(param1:MouseEvent) : void
      {
         var _loc3_:§3!§ = null;
         var _loc2_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         if(_loc2_.§,!6§.§ "j§ <= _loc2_.§&!w§.starCoins)
         {
            §=Q§.§`!A§("coins_added_1");
            §'"9§(§+3§).§9!4§();
            this.§2!t§();
         }
         else
         {
            _loc3_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
            §4"#§.singleton.popupManager.openPopup(_loc3_,true,true);
         }
      }
      
      private function §3!o§() : void
      {
         this.§&"C§.gotoAndStop("free_spin_unclaimed");
         this.§&"C§.txtTitle.text = §>"B§.§]2§;
         this.§&"C§.txtDescription.text = §>"B§.§`#$§;
      }
      
      private function §`"^§(param1:Boolean) : void
      {
         var _loc5_:MovieClip = null;
         this.§&"C§.gotoAndStop("spin_complete");
         var _loc2_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc3_:String = §'"9§(§+3§).§="6§.itemId;
         var _loc4_:String = _loc2_.§@!K§.§<!h§.§%!u§(_loc3_).§7!L§;
         if(_loc3_)
         {
            _loc5_ = this.§&"C§.rewardClaimed;
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
         this.§&"C§.txtTitle.text = §>"B§.§7T§.replace("%1",_loc4_);
         this.§&"C§.txtDescription.text = §>"B§.§'"o§;
         if(§'"9§(§+3§).§2# §)
         {
            §=Q§.§`!A§("powerup_selected");
            §'"9§(§+3§).§2# § = false;
         }
      }
      
      private function §2!t§() : void
      {
         this.§&"C§.gotoAndStop("spinning");
         this.§&"C§.txtTitle.text = §>"B§.§7"$§;
         this.§&"C§.txtDescription.text = §>"B§.§%"s§;
      }
      
      protected function §@d§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§`"`§,data,true));
         this.§7";§();
      }
      
      protected function §="Z§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§4",§,data,true));
         this.§7";§();
      }
      
      protected function §%!6§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§>v§,data,true));
      }
      
      protected function §["F§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§="_§,data,true));
      }
      
      protected function §>!g§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§&",§,data,true));
      }
      
      protected function §9!,§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§<"s§,data,true));
         this.§7";§();
      }
      
      protected function §[!1§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3!p§(§3!p§.§-!A§,data,true));
         this.§7";§();
      }
      
      override public function set data(param1:Object) : void
      {
         if(§+3§ is §'"9§)
         {
            §'"9§(§+3§).removeEventListener(§'"9§.§^"4§,this.§7!z§);
         }
         super.data = param1;
         if(!data)
         {
            return;
         }
         this.§7";§();
      }
      
      protected function §7";§() : void
      {
         if(this.§[q§)
         {
            if(this.§[q§.parent == this)
            {
               removeChild(this.§[q§);
            }
            this.§[q§ = null;
         }
         if(!§+3§)
         {
            return;
         }
         if(§+3§ is §'"9§)
         {
            §'"9§(§+3§).addEventListener(§'"9§.§^"4§,this.§7!z§);
            this.§+!§();
         }
         else if(§+3§.isBrag)
         {
            this.§!#&§();
         }
         else if(§+3§.isChallenge)
         {
            this.§>!O§();
         }
         else if(§+3§.isInviteGift)
         {
            this.§!#%§();
         }
         else
         {
            this.§4!2§();
         }
         if(§+3§.cachedProfilePicture)
         {
            this.§[q§ = addChild(§+3§.cachedProfilePicture) as §&q§;
         }
         else
         {
            this.§[q§ = new §&q§(§+3§.i);
            this.§[q§.mouseChildren = false;
            this.§[q§.mouseEnabled = false;
            addChild(this.§[q§);
            §+3§.cachedProfilePicture = this.§[q§;
         }
      }
      
      private function §+!§() : void
      {
         var _loc1_:§'"9§ = §'"9§(§+3§);
         if(_loc1_.§1!-§)
         {
            this.§2!t§();
         }
         else if(_loc1_.§ "h§ > 0)
         {
            this.§3!o§();
         }
         else
         {
            this.§`"^§(true);
         }
      }
      
      private function §7!z§(param1:Event) : void
      {
         this.§`"^§(false);
      }
      
      private function §4!2§() : void
      {
         if(!§+3§.status)
         {
            if(§+3§.isHelpRequest)
            {
               §+3§.status = §8#+§;
            }
            else
            {
               §+3§.status = §3S§;
            }
         }
         switch(§+3§.status)
         {
            case §8#+§:
               this.§&"C§.gotoAndStop("help_request");
               this.§&"C§.txtTitle.text = §>"B§.§?# §.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = §>"B§.§;!B§;
               break;
            case §&?§:
               this.§&"C§.gotoAndStop("help_request_sent");
               this.§&"C§.txtTitle.text = §>"B§.§?# §.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = §>"B§.§+#+§;
               break;
            case §3S§:
               this.§&"C§.gotoAndStop("unclaimed");
               this.§&"C§.txtTitle.text = §>"B§.§[8§.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = §>"B§.§8!L§;
               break;
            case §86§:
               this.§&"C§.gotoAndStop("claiming");
               this.§&"C§.txtTitle.text = §>"B§.§[8§.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = §>"B§.§8!L§;
               break;
            case §#!`§:
               this.§&"C§.gotoAndStop("claimed");
               this.§&"C§.txtTitle.text = §>"B§.§ M§.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = !!§+3§.content ? §>"B§.§ "G§.replace("%1",§+3§.content) : §>"B§.§ !>§;
               this.§&"C§.btnGiftBack.visible = this.§4T§.§?0§(§+3§.i);
               break;
            case §0!6§:
               this.§&"C§.gotoAndStop("gifted_back");
               this.§&"C§.txtTitle.text = §>"B§.§ M§.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = !!§+3§.content ? §>"B§.§ "G§.replace("%1",§+3§.content) : §>"B§.§ !>§;
         }
         this.§&"C§.btnClose.visible = false;
      }
      
      private function §!#%§() : void
      {
         if(!§+3§.status)
         {
            §+3§.status = §!I§;
         }
         switch(§+3§.status)
         {
            case §!I§:
               this.§&"C§.gotoAndStop("invite_gift_unclaimed");
               this.§&"C§.txtTitle.text = §>"B§.§#" §.replace("%1",§+3§.n);
               this.§&"C§.txtDescription.text = §>"B§.§2"+§;
               break;
            case §9p§:
               this.§&"C§.gotoAndStop("invite_gift_claiming");
               this.§&"C§.txtTitle.text = §>"B§.§27§;
               this.§&"C§.txtDescription.text = §>"B§.§!"r§;
               break;
            case §!!=§:
               this.§&"C§.gotoAndStop("invite_gift_claimed");
               this.§&"C§.txtTitle.text = §>"B§.§<"@§;
               this.§&"C§.txtDescription.text = §>"B§.§2%§;
               this.§&"C§.btnGiftBack.visible = this.§4T§.§?0§(§+3§.i);
               break;
            case §7!x§:
               this.§&"C§.gotoAndStop("invite_gift_gifted_back");
               this.§&"C§.txtTitle.text = §>"B§.§3!B§;
               this.§&"C§.txtDescription.text = §>"B§.§7"'§;
         }
      }
      
      private function §!#&§() : void
      {
         var _loc1_:§[!s§ = null;
         this.§&"C§.txtTitle.text = §>"B§.§6!Z§.replace("%1",§+3§.n);
         this.§&"C§.gotoAndStop("brag");
         if(§+3§.lvl.indexOf("2000-") != -1)
         {
            _loc1_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
            if(!_loc1_.§9<§(§+3§.lvl))
            {
               this.§&"C§.txtDescription.text = §>"B§.§'!a§;
               this.§&"C§.btnPlay.visible = false;
            }
            else if(!_loc1_.isLevelOpen(§+3§.lvl))
            {
               this.§&"C§.txtDescription.text = §>"B§.§`# §;
               this.§&"C§.btnPlay.visible = false;
            }
            else
            {
               this.§&"C§.txtDescription.text = §-c§.getPrettyLevelString(§+3§.lvl);
               this.§&"C§.btnPlay.visible = true;
            }
         }
         else
         {
            this.§&"C§.txtDescription.text = §-c§.getPrettyLevelString(§+3§.lvl);
            this.§&"C§.btnPlay.visible = true;
         }
      }
      
      private function §>!O§() : void
      {
         this.§&"C§.gotoAndStop("challenge");
         if(§""r§(§4"#§.singleton.dataModel.userProgress).§@"p§)
         {
            this.§&"C§.txtTitle.text = §>"B§.§["=§.replace("%1",§+3§.n);
            this.§&"C§.txtDescription.text = §>"B§.§6"o§;
         }
         else
         {
            this.§&"C§.txtTitle.text = §>"B§.§,I§.replace("%1",§+3§.n);
            this.§&"C§.txtDescription.text = §>"B§.§#!,§;
            this.§&"C§.btnPlayTournament.visible = false;
         }
      }
      
      override public function get height() : Number
      {
         return 55;
      }
   }
}
