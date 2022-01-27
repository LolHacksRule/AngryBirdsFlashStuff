package §;!3§
{
   import §!!v§.§<!Q§;
   import §!b§.§]!s§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §+d§.§'!g§;
   import §+d§.§2!g§;
   import §0"k§.§ F§;
   import §0"k§.§&L§;
   import §5"Q§.§5"s§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8§.§0>§;
   import §9"U§.§5"T§;
   import §9"U§.§6e§;
   import §9"U§.§7"1§;
   import §9"U§.§[!s§;
   import §=Z§.§;g§;
   import §=Z§.§@#-§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §^"z§ extends AbstractPopup
   {
      
      public static const §&E§:String = "invite";
      
      public static const §?!1§:String = "sendgifts";
      
      public static const §8"2§:String = "energy";
      
      public static const §5"t§:String = "challenge";
      
      protected static const §[E§:int = 50;
      
      protected static var §]!b§:int = 10;
       
      
      protected var §=B§:String;
      
      protected var §8"^§:§%"+§;
      
      protected var §#!m§:Boolean;
      
      private var §;# §:§0>§;
      
      private var §0t§:§6e§;
      
      private var §1"0§:§2!g§;
      
      private var §-!P§:§2!g§;
      
      private var §4T§:§5"T§;
      
      private var §]"+§:MovieClip;
      
      private var §="c§:int = 0;
      
      private var §5!3§:int;
      
      private var §%!^§:Array;
      
      private var §=!S§:TextField;
      
      private var §["S§:TextField;
      
      private var §%"?§:Boolean;
      
      private var §;"=§:§@#-§;
      
      private var §+!,§:§<!Q§;
      
      private var §`!=§:Array;
      
      private var §-"P§:Boolean = false;
      
      private var §5!l§:Boolean = false;
      
      public function §^"z§(param1:int, param2:int, param3:String, param4:Boolean = false)
      {
         this.§=B§ = param3;
         this.§#!m§ = param4;
         this.§4T§ = §7"1§(§4"#§.singleton.dataModel).§6!I§;
         super(param1,param2,§^x§.§ '§.Popups.Popup_Requests[0],"requests");
      }
      
      override public function dispose() : void
      {
         if(this.§0t§)
         {
            this.§0t§.removeEventListener(Event.COMPLETE,this.§^X§);
            this.§0t§ = null;
         }
         super.dispose();
      }
      
      protected function addEventListeners() : void
      {
         if(!this.§#!m§)
         {
            this.§=!S§.addEventListener(Event.CHANGE,this.§'2§);
            this.§=!S§.addEventListener(FocusEvent.FOCUS_IN,this.§8k§);
            this.§;"=§.§>#3§.addEventListener(Event.CHANGE,this.§9!_§);
         }
         this.§]"+§.btnSend.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnSendMore.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnInvite.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnAsk.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnAskMore.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnChallengeFriends.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnChallengeFriendsMore.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickChallenge.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickSendGift.addEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickInvite.addEventListener(MouseEvent.CLICK,this.§=# §);
         §5"s§.addCallback("giftsSentToUsers",this.§'c§);
         §5"s§.addCallback("invitationBatchSent",this.§"a§);
         §5"s§.addCallback("helpRequestSentToUsers",this.§8$§);
         §5"s§.addCallback("challengeSent",this.§"!t§);
      }
      
      protected function removeEventListeners() : void
      {
         if(!this.§#!m§)
         {
            this.§=!S§.removeEventListener(Event.CHANGE,this.§'2§);
            this.§=!S§.removeEventListener(FocusEvent.FOCUS_IN,this.§8k§);
            this.§;"=§.§>#3§.removeEventListener(Event.CHANGE,this.§9!_§);
         }
         this.§]"+§.btnSend.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnSendMore.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnInvite.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnInviteMore.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnAsk.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnAskMore.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnChallengeFriends.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnChallengeFriendsMore.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickChallenge.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickSendGift.removeEventListener(MouseEvent.CLICK,this.§=# §);
         this.§]"+§.btnQuickInvite.removeEventListener(MouseEvent.CLICK,this.§=# §);
         §5"s§.§@"-§("giftsSentToUsers",this.§'c§);
         §5"s§.§@"-§("invitationBatchSent",this.§"a§);
         §5"s§.§@"-§("helpRequestSentToUsers",this.§8$§);
         §5"s§.§@"-§("challengeSent",this.§"!t§);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§]"+§ = §[#,§.getItemByName("Container_Content").mClip;
         this.§]"+§.gotoAndStop(!!this.§#!m§ ? "quick_" + this.§=B§ : this.§=B§);
         this.§?""§();
         this.§%"?§ = false;
         (§[#,§.getItemByName("Button_ScrollUp") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         (§[#,§.getItemByName("Button_ScrollDown") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         this.§=!S§ = this.§]"+§.txtSearch;
         if(!this.§#!m§)
         {
            this.§["S§ = this.§]"+§.friendsCounter.txtFriendsSelected;
         }
         if(this.§#!m§ && this.§=B§ == §5"t§)
         {
            this.§]"+§.txtCoinReward.text = String(this.§]"+§.txtCoinReward.text).replace("${coins}",§7"1§(§4"#§.singleton.dataModel).§1z§.prizePerFriend);
         }
         this.§]"+§.sentCheckmark.stop();
         this.§]"+§.sentCheckmark.mouseEnabled = this.§]"+§.sentCheckmark.mouseChildren = false;
         this.§]"+§.btnGetFriends.visible = false;
         this.§]"+§.btnGetFriends.addEventListener(MouseEvent.CLICK,this.§%V§);
         this.§]"+§.tabEnabled = this.§]"+§.tabChildren = false;
         var _loc1_:MovieClip = this.§]"+§.chkSelectAll;
         this.§;"=§ = new §@#-§(_loc1_);
         this.§;"=§.§>#3§.visible = false;
         this.§0t§ = §7"1§(§4"#§.singleton.dataModel).§0S§;
         this.§1"0§ = §7"1§(§4"#§.singleton.dataModel).§;""§;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_FriendsType").mClip;
         if(this.§=B§ == §&E§)
         {
            this.§`!=§ = [§%"+§.§'"W§,§%"+§.§-!F§];
         }
         else
         {
            this.§`!=§ = [§%"+§.§'"W§,§%"+§.§^!>§,§%"+§.§-!F§];
         }
         this.§+!,§ = new §<!Q§(_loc2_,§[k§,this.§`!=§);
         this.§+!,§.§2!0§ = 240;
         this.§+!,§.§5!,§ = 60;
         this.§+!,§.§[!l§ = 0;
         _loc2_.selectedValue.mouseEnabled = _loc2_.selectedValue.mouseChildren = false;
         _loc2_.arrow.mouseEnabled = false;
         this.addEventListeners();
         if(this.§=B§ == §5"t§)
         {
            this.§0u§();
            _loc2_.visible = false;
         }
         else
         {
            this.§0"K§();
         }
         this.§+!,§.§[!l§ = this.§`!=§.indexOf(§%"+§.§'"W§);
         this.§+!,§.addEventListener(Event.CHANGE,this.§?!0§);
         var _loc3_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §[#,§.getItemByName("Container_Content").mClip).mask = _loc3_;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§-"P§)
         {
            _loc2_ = §[#,§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§[#,§.mClip.width,§[#,§.mClip.height);
            _loc2_.endFill();
            this.§-"P§ = true;
         }
         super.show(param1);
      }
      
      private function §?!0§(param1:Event) : void
      {
         this.§0t§.removeEventListener(Event.COMPLETE,this.§^X§);
         this.§;# §.clear();
         switch(this.§+!,§.§6"G§)
         {
            case §%"+§.§'"W§:
               this.§0"K§();
               break;
            case §%"+§.§^!>§:
               this.§0u§();
               break;
            case §%"+§.§-!F§:
               this.§-!e§();
         }
         if(this.§,7§)
         {
            this.§+o§();
         }
      }
      
      private function §0u§() : void
      {
         this.§8"^§ = §%"+§.§^!>§;
         this.§`!R§(this.§+-§(this.§1"0§));
         this.§!!8§();
      }
      
      private function §-!e§() : void
      {
         this.§8"^§ = §%"+§.§-!F§;
         this.§`!R§(this.§+-§(this.abfFriends));
         this.§!!8§();
      }
      
      private function get abfFriends() : §2!g§
      {
         var _loc1_:String = null;
         if(!this.§-!P§)
         {
            this.§-!P§ = new §2!g§();
            for each(_loc1_ in §7"1§(§4"#§.singleton.dataModel).abfFriends)
            {
               if(this.§0t§.friends[_loc1_])
               {
                  this.§-!P§[_loc1_] = this.§0t§.friends[_loc1_];
               }
            }
         }
         return this.§-!P§;
      }
      
      private function §0"K§() : void
      {
         this.§8"^§ = §%"+§.§'"W§;
         if(this.§0t§.friends == null)
         {
            this.§0t§.addEventListener(Event.COMPLETE,this.§^X§);
            if(!this.§0t§.isLoading)
            {
               this.§0t§.§6"J§();
            }
            if(this.§["S§ != null)
            {
               this.§["S§.text = "Loading...";
            }
            this.§4u§(false);
            this.§]"+§.chkSelectAll.visible = false;
         }
         else
         {
            this.§#!X§();
         }
      }
      
      private function §^X§(param1:Event) : void
      {
         this.§4u§(true);
         this.§]"+§.chkSelectAll.visible = this.§%"?§;
         (§[#,§.getItemByName("Button_ScrollUp") as §;g§).visible = !this.§#!m§;
         (§[#,§.getItemByName("Button_ScrollDown") as §;g§).visible = !this.§#!m§;
         this.§0t§.removeEventListener(Event.COMPLETE,this.§^X§);
         this.§#!X§();
      }
      
      private function §#!X§() : void
      {
         var _loc1_:Array = this.§+-§(this.§0t§.friends);
         if(this.§#!m§)
         {
            _loc1_ = _loc1_.filter(this.§',§);
            _loc1_ = §'!g§.§7I§(_loc1_);
            _loc1_.sort(this.§%S§);
            _loc1_ = _loc1_.slice(0,21);
         }
         this.§`!R§(_loc1_);
         this.§!!8§();
         this.§?#&§(false);
      }
      
      private function §!!8§() : void
      {
         if(!this.§#!m§)
         {
            this.§;"=§.§ !t§ = false;
         }
         else
         {
            this.§?#&§(false);
         }
      }
      
      private function §8k§(param1:FocusEvent) : void
      {
         if(this.§=!S§.text == "Search...")
         {
            this.§=!S§.text = "";
         }
      }
      
      private function §5!x§() : void
      {
         var _loc2_:§^!2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!^§)
         {
            if(_loc2_.§ !t§)
            {
               _loc1_++;
            }
         }
         if(this.§="c§ == 0)
         {
            if(this.§["S§ != null)
            {
               this.§["S§.text = _loc1_.toString() + "/" + this.§%!^§.length + " Friends selected";
            }
         }
         this.§4u§(_loc1_ > 0);
      }
      
      private function §'2§(param1:Event) : void
      {
         this.§+o§();
      }
      
      private function get §,7§() : Boolean
      {
         return this.§=!S§.text != "" && this.§=!S§.text != "Search...";
      }
      
      private function §+o§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§^!2§ = null;
         var _loc1_:String = this.§=!S§.text;
         if(!this.§,7§)
         {
            _loc2_ = this.§%!^§;
         }
         else
         {
            _loc2_ = [];
            for each(_loc3_ in this.§%!^§)
            {
               if(_loc3_.name.toLowerCase().indexOf(_loc1_.toLowerCase()) != -1)
               {
                  _loc2_.push(_loc3_);
                  _loc3_.§ !t§ = true;
               }
               else
               {
                  _loc3_.§ !t§ = false;
               }
            }
         }
         this.§;# §.data = this.§0"B§(_loc2_,2);
         if(!this.§,7§)
         {
            this.§?#&§(this.§;"=§.§ !t§);
         }
         this.§[U§();
         this.§5!x§();
      }
      
      private function §9!_§(param1:Event) : void
      {
         this.§?#&§(this.§;"=§.§ !t§);
      }
      
      private function §?#&§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§^!2§ = null;
         for each(_loc2_ in this.§;# §.data)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.§ !t§ = param1;
               }
            }
         }
         this.§;# §.refresh();
         this.§5!x§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "UP":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.scroll(-this.§;# §.visibleItemsCount);
               break;
            case "DOWN":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.scroll(this.§;# §.visibleItemsCount);
               break;
            case "FRIEND_TYPE_DROPDOWN":
               if(this.§+!,§.isOpen)
               {
                  this.§+!,§.close();
               }
               else
               {
                  this.§+!,§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         this.§;# §.scroll(param1);
         this.§[U§();
      }
      
      private function §[U§() : void
      {
         var _loc1_:* = this.§;# §.offset != 0;
         var _loc2_:* = this.§;# §.offset != this.§;# §.data.length - this.§;# §.visibleItemsCount;
         (§[#,§.getItemByName("Button_ScrollUp") as §;g§).setComponentState(!!_loc1_ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         (§[#,§.getItemByName("Button_ScrollDown") as §;g§).setComponentState(!!_loc2_ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
      }
      
      protected function §?""§() : void
      {
         this.§;# § = new §0>§(600,209,null,!!this.§#!m§ ? §!_§ : §5!$§,0,2);
         this.§]"+§.mcItems.addChild(this.§;# §.scrollerSprite);
         this.§;# §.scrollerSprite.addEventListener(§,!d§.§#L§,this.§?"l§,true);
      }
      
      private function §?"l§(param1:§,!d§) : void
      {
         param1.stopImmediatePropagation();
         if(this.§;"=§.§ !t§)
         {
            this.§]"+§.chkSelectAll.removeEventListener(Event.CHANGE,this.§9!_§);
            this.§;"=§.§ !t§ = false;
            this.§]"+§.chkSelectAll.addEventListener(Event.CHANGE,this.§9!_§);
         }
         this.§5!x§();
      }
      
      protected function §`!R§(param1:Array) : void
      {
         this.§%!^§ = param1.filter(this.§',§);
         this.§%!^§.sortOn("name");
         this.§]"+§.btnGetFriends.visible = this.§=B§ != §&E§ && this.§%!^§.length <= 6;
         this.§5!3§ = this.§%!^§.length;
         this.§;# §.data = this.§0"B§(this.§%!^§,!!this.§#!m§ ? 3 : 2);
         this.§[U§();
         this.§5!x§();
      }
      
      private function §%S§(param1:§^!2§, param2:§^!2§) : int
      {
         if(this.§1"0§[param1.id] && !this.§1"0§[param2.id])
         {
            return -1;
         }
         if(!this.§1"0§[param1.id] && this.§1"0§[param2.id])
         {
            return 1;
         }
         if(this.abfFriends[param1.id] && !this.abfFriends[param2.id])
         {
            return -1;
         }
         if(!this.abfFriends[param1.id] && this.abfFriends[param2.id])
         {
            return 1;
         }
         return 0;
      }
      
      private function §',§(param1:§^!2§, param2:int, param3:Array) : Boolean
      {
         if(param1.id == §7"1§(§4"#§.singleton.dataModel).§#"_§.id)
         {
            return false;
         }
         if(this.§4T§.§#"b§()[param1.id] != null)
         {
            return false;
         }
         if(this.§=B§ == §?!1§ && this.§4T§.§]"?§()[param1.id] != null)
         {
            return false;
         }
         if(this.§=B§ == §&E§ && !this.§4T§.§="a§(param1.id))
         {
            return false;
         }
         if(this.§=B§ == §&E§ && §7"1§(§4"#§.singleton.dataModel).§;""§[param1.id] != null)
         {
            return false;
         }
         if(this.§=B§ == §8"2§ && !this.§4T§.§0#7§(param1.id))
         {
            return false;
         }
         if(this.§=B§ == §5"t§ && !this.§4T§.§6"3§(param1.id))
         {
            return false;
         }
         if(this.§=B§ == §5"t§ && this.§6E§(param1.id))
         {
            return false;
         }
         return true;
      }
      
      private function §6E§(param1:String) : Boolean
      {
         var _loc3_:§&L§ = null;
         var _loc2_:§[!s§ = §7"1§(§4"#§.singleton.dataModel).§1z§;
         for each(_loc3_ in _loc2_.§]!A§.data)
         {
            if(_loc3_ is § F§)
            {
               if(_loc3_.userId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §=# §(param1:MouseEvent) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         this.§6G§();
      }
      
      private function §%V§(param1:MouseEvent) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         var _loc2_:§3!§ = new §^"z§(§^!S§.§'"c§,§2!s§.§@"$§,§^"z§.§&E§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true,true);
      }
      
      private function §6G§() : void
      {
         var _loc4_:§^!2§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = this.§%!^§.concat().sort(this.§%S§);
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.§ !t§)
            {
               _loc1_.push(_loc4_.id);
               _loc3_++;
               if(_loc3_ >= §[E§)
               {
                  break;
               }
            }
         }
         §4"#§.singleton.§,]§();
         switch(this.§=B§)
         {
            case §8"2§:
               §5"s§.§<!8§("flashSendHelpRequestToFriends",§7"1§(§4"#§.singleton.dataModel).§#"_§.name,JSON.stringify(_loc1_));
               break;
            case §&E§:
               §5"s§.§<!8§("flashInviteFriendsHandler",JSON.stringify(_loc1_));
               break;
            case §?!1§:
               §5"s§.§<!8§("flashSendGiftToFriends",§7"1§(§4"#§.singleton.dataModel).§#"_§.name,JSON.stringify(_loc1_));
               break;
            case §5"t§:
               §5"s§.§<!8§("flashSendChallengeToFriends",§7"1§(§4"#§.singleton.dataModel).§#"_§.name,JSON.stringify(_loc1_));
         }
         this.§;"Z§(_loc1_.length);
         if(this.§#!m§)
         {
            close();
         }
      }
      
      private function §"!t§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§4T§.§3"D§(_loc2_);
         }
         this.§["s§(param1.length);
      }
      
      private function §"a§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§4T§.§2!P§(_loc2_);
         }
         this.§["s§(param1.length);
      }
      
      private function §'c§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§4T§.§<"j§(_loc2_);
         }
         this.§["s§(param1.length);
      }
      
      private function §8$§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§4T§.§["R§(_loc2_);
         }
         this.§["s§(param1.length);
      }
      
      private function §["s§(param1:int) : void
      {
         if(this.§#!m§)
         {
            close(true);
            return;
         }
         this.§%!^§ = this.§%!^§.filter(this.§',§);
         this.§+o§();
         this.§="c§ += param1;
         this.§]"+§.gotoAndStop(this.§=B§ + "_more");
         this.§]"+§.sentCheckmark.gotoAndPlay(1);
         switch(this.§=B§)
         {
            case §8"2§:
               this.§["S§.text = this.§="c§.toString() + "/" + this.§5!3§ + " Requests sent";
               break;
            case §&E§:
               this.§["S§.text = this.§="c§.toString() + "/" + this.§5!3§ + " Invites sent";
               break;
            case §?!1§:
               this.§["S§.text = this.§="c§.toString() + "/" + this.§5!3§ + " Gifts sent";
               break;
            case §5"t§:
               this.§["S§.text = this.§="c§.toString() + "/" + this.§5!3§ + " Friends challenged";
         }
         if(this.§%!^§.length == 0)
         {
            this.§;"=§.§ !t§ = false;
            this.§4u§(false);
         }
      }
      
      private function §0"B§(param1:Array, param2:int) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc3_:Array = [];
         if(param1 && param1.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               _loc5_ = [];
               _loc6_ = _loc4_;
               while(_loc6_ < _loc4_ + param2)
               {
                  if(_loc6_ < param1.length)
                  {
                     _loc5_.push(param1[_loc6_]);
                  }
                  _loc6_++;
               }
               _loc3_.push(_loc5_);
               _loc4_ += param2;
            }
         }
         return _loc3_;
      }
      
      private function §+-§(param1:§2!g§) : Array
      {
         var _loc3_:* = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(new §^!2§(_loc3_,param1[_loc3_]));
         }
         return _loc2_;
      }
      
      private function §4u§(param1:Boolean) : void
      {
         if(!this.§#!m§)
         {
            this.§]"+§.btnSend.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnSendMore.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnInvite.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnInviteMore.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnAsk.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnAskMore.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnChallengeFriends.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnChallengeFriendsMore.alpha = !!param1 ? 1 : 0.2;
            this.§]"+§.btnSend.mouseEnabled = param1;
            this.§]"+§.btnSendMore.mouseEnabled = param1;
            this.§]"+§.btnInvite.mouseEnabled = param1;
            this.§]"+§.btnInviteMore.mouseEnabled = param1;
            this.§]"+§.btnAsk.mouseEnabled = param1;
            this.§]"+§.btnAskMore.mouseEnabled = param1;
            this.§]"+§.btnChallengeFriends.mouseEnabled = param1;
            this.§]"+§.btnChallengeFriendsMore.mouseEnabled = param1;
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.removeEventListeners();
         super.hide(param1,param2);
      }
      
      private function §;"Z§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§#!m§)
         {
            switch(this.§=B§)
            {
               case §&E§:
                  _loc2_ = §]!s§.§2"B§;
                  break;
               case §8"2§:
                  _loc2_ = §]!s§.§,a§;
                  break;
               case §5"t§:
                  _loc2_ = §]!s§.§["9§;
            }
         }
         else
         {
            switch(this.§=B§)
            {
               case §?!1§:
                  _loc2_ = §]!s§.§]"4§;
                  break;
               case §&E§:
                  _loc2_ = §]!s§.§]#!§;
                  break;
               case §8"2§:
                  _loc2_ = §]!s§.§="S§;
                  break;
               case §5"t§:
                  _loc2_ = §]!s§.§ "u§;
            }
         }
         if(_loc2_ != "")
         {
            §]!s§.§<!2§(_loc2_,param1);
         }
      }
   }
}
