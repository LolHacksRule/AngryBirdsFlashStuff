package §+!!§
{
   import §!"e§.§`"W§;
   import §"k§.§=!g§;
   import §"k§.§]"V§;
   import §#!'§.§6"]§;
   import §+D§.§]B§;
   import §+D§.§^"m§;
   import §,!,§.§4§;
   import §,"N§.§=!1§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §,"N§.§`#&§;
   import §1!i§.§,#_§;
   import §1!i§.§26§;
   import §5";§.§%#"§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §9"i§ extends AbstractPopup
   {
      
      public static const §<s§:String = "invite";
      
      public static const §%?§:String = "sendgifts";
      
      public static const §%!§:String = "energy";
      
      public static const §8i§:String = "challenge";
      
      protected static const §&!§:int = 50;
      
      protected static var §7##§:int = 10;
       
      
      protected var §;"-§:String;
      
      protected var §="J§:§<"`§;
      
      protected var §=#Q§:Boolean;
      
      private var §+Q§:§4#9§;
      
      private var §"#$§:§`#&§;
      
      private var §3"q§:§,#_§;
      
      private var §9"+§:§,#_§;
      
      private var §&"-§:§=!1§;
      
      private var §8"-§:MovieClip;
      
      private var §]"'§:int = 0;
      
      private var §#w§:int;
      
      private var §2"8§:Array;
      
      private var §32§:TextField;
      
      private var §2!b§:TextField;
      
      private var §-9§:Boolean;
      
      private var §3#R§:§]B§;
      
      private var §4"3§:§%#"§;
      
      private var §>!O§:Array;
      
      private var §;!p§:Boolean = false;
      
      private var §'9§:Boolean = false;
      
      public function §9"i§(param1:int, param2:int, param3:String, param4:Boolean = false)
      {
         this.§;"-§ = param3;
         this.§=#Q§ = param4;
         this.§&"-§ = §@#B§(§4#;§.singleton.dataModel).§;!A§;
         super(param1,param2,§&$§.§@8§.Popups.Popup_Requests[0],"requests");
      }
      
      override public function dispose() : void
      {
         if(this.§"#$§)
         {
            this.§"#$§.removeEventListener(Event.COMPLETE,this.§ ]§);
            this.§"#$§ = null;
         }
         super.dispose();
      }
      
      protected function addEventListeners() : void
      {
         if(!this.§=#Q§)
         {
            this.§32§.addEventListener(Event.CHANGE,this.§+"X§);
            this.§32§.addEventListener(FocusEvent.FOCUS_IN,this.§>p§);
            this.§3#R§.§[!8§.addEventListener(Event.CHANGE,this.§`!#§);
         }
         this.§8"-§.btnSend.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnSendMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnInvite.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnAsk.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnAskMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnChallengeFriends.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnChallengeFriendsMore.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickChallenge.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickSendGift.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickInvite.addEventListener(MouseEvent.CLICK,this.§,!Q§);
         §""v§.addCallback("giftsSentToUsers",this.§+#F§);
         §""v§.addCallback("invitationBatchSent",this.§`!Y§);
         §""v§.addCallback("helpRequestSentToUsers",this.§]">§);
         §""v§.addCallback("challengeSent",this.§-#V§);
      }
      
      protected function removeEventListeners() : void
      {
         if(!this.§=#Q§)
         {
            this.§32§.removeEventListener(Event.CHANGE,this.§+"X§);
            this.§32§.removeEventListener(FocusEvent.FOCUS_IN,this.§>p§);
            this.§3#R§.§[!8§.removeEventListener(Event.CHANGE,this.§`!#§);
         }
         this.§8"-§.btnSend.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnSendMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnInvite.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnInviteMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnAsk.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnAskMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnChallengeFriends.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnChallengeFriendsMore.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickChallenge.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickSendGift.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         this.§8"-§.btnQuickInvite.removeEventListener(MouseEvent.CLICK,this.§,!Q§);
         §""v§.§&z§("giftsSentToUsers",this.§+#F§);
         §""v§.§&z§("invitationBatchSent",this.§`!Y§);
         §""v§.§&z§("helpRequestSentToUsers",this.§]">§);
         §""v§.§&z§("challengeSent",this.§-#V§);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8"-§ = §^c§.getItemByName("Container_Content").mClip;
         this.§8"-§.gotoAndStop(!!this.§=#Q§ ? "quick_" + this.§;"-§ : this.§;"-§);
         this.§-!?§();
         this.§-9§ = this.§8"-§.chkSelectAll.visible;
         (§^c§.getItemByName("Button_ScrollUp") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         (§^c§.getItemByName("Button_ScrollDown") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         this.§32§ = this.§8"-§.txtSearch;
         if(!this.§=#Q§)
         {
            this.§2!b§ = this.§8"-§.friendsCounter.txtFriendsSelected;
         }
         if(this.§=#Q§ && this.§;"-§ == §8i§)
         {
            this.§8"-§.txtCoinReward.text = String(this.§8"-§.txtCoinReward.text).replace("${coins}",§@#B§(§4#;§.singleton.dataModel).§!!C§.prizePerFriend);
         }
         this.§8"-§.sentCheckmark.stop();
         this.§8"-§.sentCheckmark.mouseEnabled = this.§8"-§.sentCheckmark.mouseChildren = false;
         this.§8"-§.btnGetFriends.visible = false;
         this.§8"-§.btnGetFriends.addEventListener(MouseEvent.CLICK,this.§>c§);
         this.§8"-§.tabEnabled = this.§8"-§.tabChildren = false;
         var _loc1_:MovieClip = this.§8"-§.chkSelectAll;
         this.§3#R§ = new §]B§(_loc1_);
         this.§"#$§ = §@#B§(§4#;§.singleton.dataModel).§`"N§;
         this.§3"q§ = §@#B§(§4#;§.singleton.dataModel).§ #W§;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_FriendsType").mClip;
         if(this.§;"-§ == §<s§)
         {
            this.§>!O§ = [§<"`§.§&#T§,§<"`§.§9#=§];
         }
         else
         {
            this.§>!O§ = [§<"`§.§&#T§,§<"`§.§>#=§,§<"`§.§9#=§];
         }
         this.§4"3§ = new §%#"§(_loc2_,§5-§,this.§>!O§);
         this.§4"3§.§>#_§ = 240;
         this.§4"3§.§>"b§ = 60;
         this.§4"3§.§3"1§ = 0;
         _loc2_.selectedValue.mouseEnabled = _loc2_.selectedValue.mouseChildren = false;
         _loc2_.arrow.mouseEnabled = false;
         this.addEventListeners();
         if(this.§;"-§ == §8i§)
         {
            this.§3M§();
            _loc2_.visible = false;
         }
         else
         {
            this.§0#N§();
         }
         this.§4"3§.§3"1§ = this.§>!O§.indexOf(§<"`§.§&#T§);
         this.§4"3§.addEventListener(Event.CHANGE,this.§1#3§);
         var _loc3_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §^c§.getItemByName("Container_Content").mClip).mask = _loc3_;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§;!p§)
         {
            _loc2_ = §^c§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§^c§.mClip.width,§^c§.mClip.height);
            _loc2_.endFill();
            this.§;!p§ = true;
         }
         super.show(param1);
      }
      
      private function §1#3§(param1:Event) : void
      {
         this.§"#$§.removeEventListener(Event.COMPLETE,this.§ ]§);
         this.§+Q§.clear();
         switch(this.§4"3§.§]#5§)
         {
            case §<"`§.§&#T§:
               this.§0#N§();
               break;
            case §<"`§.§>#=§:
               this.§3M§();
               break;
            case §<"`§.§9#=§:
               this.§5P§();
         }
         if(this.§8"k§)
         {
            this.§![§();
         }
      }
      
      private function §3M§() : void
      {
         this.§="J§ = §<"`§.§>#=§;
         this.§>b§(this.§<!R§(this.§3"q§));
         this.§#O§();
      }
      
      private function §5P§() : void
      {
         this.§="J§ = §<"`§.§9#=§;
         this.§>b§(this.§<!R§(this.abfFriends));
         this.§#O§();
      }
      
      private function get abfFriends() : §,#_§
      {
         var _loc1_:String = null;
         if(!this.§9"+§)
         {
            this.§9"+§ = new §,#_§();
            for each(_loc1_ in §@#B§(§4#;§.singleton.dataModel).abfFriends)
            {
               if(this.§"#$§.friends[_loc1_])
               {
                  this.§9"+§[_loc1_] = this.§"#$§.friends[_loc1_];
               }
            }
         }
         return this.§9"+§;
      }
      
      private function §0#N§() : void
      {
         this.§="J§ = §<"`§.§&#T§;
         if(this.§"#$§.friends == null)
         {
            this.§"#$§.addEventListener(Event.COMPLETE,this.§ ]§);
            if(!this.§"#$§.isLoading)
            {
               this.§"#$§.§->§();
            }
            if(this.§2!b§ != null)
            {
               this.§2!b§.text = "Loading...";
            }
            this.§'!J§(false);
            this.§8"-§.chkSelectAll.visible = false;
         }
         else
         {
            this.§!"l§();
         }
      }
      
      private function § ]§(param1:Event) : void
      {
         this.§'!J§(true);
         this.§8"-§.chkSelectAll.visible = this.§-9§;
         (§^c§.getItemByName("Button_ScrollUp") as §^"m§).visible = !this.§=#Q§;
         (§^c§.getItemByName("Button_ScrollDown") as §^"m§).visible = !this.§=#Q§;
         this.§"#$§.removeEventListener(Event.COMPLETE,this.§ ]§);
         this.§!"l§();
      }
      
      private function §!"l§() : void
      {
         var _loc1_:Array = this.§<!R§(this.§"#$§.friends);
         if(this.§=#Q§)
         {
            _loc1_ = _loc1_.filter(this.§'+§);
            _loc1_ = §26§.§"2§(_loc1_);
            _loc1_.sort(this.§0D§);
            _loc1_ = _loc1_.slice(0,21);
         }
         this.§>b§(_loc1_);
         this.§#O§();
         this.§2!,§(true);
      }
      
      private function §#O§() : void
      {
         if(!this.§=#Q§)
         {
            this.§3#R§.§0" § = true;
         }
         else
         {
            this.§2!,§(true);
         }
      }
      
      private function §>p§(param1:FocusEvent) : void
      {
         if(this.§32§.text == "Search...")
         {
            this.§32§.text = "";
         }
      }
      
      private function §0Q§() : void
      {
         var _loc2_:§`"b§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2"8§)
         {
            if(_loc2_.§0" §)
            {
               _loc1_++;
            }
         }
         if(this.§]"'§ == 0)
         {
            if(this.§2!b§ != null)
            {
               this.§2!b§.text = _loc1_.toString() + "/" + this.§2"8§.length + " Friends selected";
            }
         }
         this.§'!J§(_loc1_ > 0);
      }
      
      private function §+"X§(param1:Event) : void
      {
         this.§![§();
      }
      
      private function get §8"k§() : Boolean
      {
         return this.§32§.text != "" && this.§32§.text != "Search...";
      }
      
      private function §![§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§`"b§ = null;
         var _loc1_:String = this.§32§.text;
         if(!this.§8"k§)
         {
            _loc2_ = this.§2"8§;
         }
         else
         {
            _loc2_ = [];
            for each(_loc3_ in this.§2"8§)
            {
               if(_loc3_.name.toLowerCase().indexOf(_loc1_.toLowerCase()) != -1)
               {
                  _loc2_.push(_loc3_);
                  _loc3_.§0" § = true;
               }
               else
               {
                  _loc3_.§0" § = false;
               }
            }
         }
         this.§+Q§.data = this.§[!G§(_loc2_,2);
         if(!this.§8"k§)
         {
            this.§2!,§(this.§3#R§.§0" §);
         }
         this.§9!V§();
         this.§0Q§();
      }
      
      private function §`!#§(param1:Event) : void
      {
         this.§2!,§(this.§3#R§.§0" §);
      }
      
      private function §2!,§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§`"b§ = null;
         for each(_loc2_ in this.§+Q§.data)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.§0" § = param1;
               }
            }
         }
         this.§+Q§.refresh();
         this.§0Q§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "UP":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.scroll(-this.§+Q§.visibleItemsCount);
               break;
            case "DOWN":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.scroll(this.§+Q§.visibleItemsCount);
               break;
            case "FRIEND_TYPE_DROPDOWN":
               if(this.§4"3§.isOpen)
               {
                  this.§4"3§.close();
               }
               else
               {
                  this.§4"3§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         this.§+Q§.scroll(param1);
         this.§9!V§();
      }
      
      private function §9!V§() : void
      {
         var _loc1_:* = this.§+Q§.offset != 0;
         var _loc2_:* = this.§+Q§.offset != this.§+Q§.data.length - this.§+Q§.visibleItemsCount;
         (§^c§.getItemByName("Button_ScrollUp") as §^"m§).setComponentState(!!_loc1_ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         (§^c§.getItemByName("Button_ScrollDown") as §^"m§).setComponentState(!!_loc2_ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
      }
      
      protected function §-!?§() : void
      {
         this.§+Q§ = new §4#9§(600,209,null,!!this.§=#Q§ ? §-!-§ : §6#7§,0,2);
         this.§8"-§.mcItems.addChild(this.§+Q§.scrollerSprite);
         this.§+Q§.scrollerSprite.addEventListener(§8";§.§&!b§,this.§1"h§,true);
      }
      
      private function §1"h§(param1:§8";§) : void
      {
         param1.stopImmediatePropagation();
         if(this.§3#R§.§0" §)
         {
            this.§8"-§.chkSelectAll.removeEventListener(Event.CHANGE,this.§`!#§);
            this.§3#R§.§0" § = false;
            this.§8"-§.chkSelectAll.addEventListener(Event.CHANGE,this.§`!#§);
         }
         this.§0Q§();
      }
      
      protected function §>b§(param1:Array) : void
      {
         this.§2"8§ = param1.filter(this.§'+§);
         this.§2"8§.sortOn("name");
         this.§8"-§.btnGetFriends.visible = this.§;"-§ != §<s§ && this.§2"8§.length <= 6;
         this.§#w§ = this.§2"8§.length;
         this.§+Q§.data = this.§[!G§(this.§2"8§,!!this.§=#Q§ ? 3 : 2);
         this.§9!V§();
         this.§0Q§();
      }
      
      private function §0D§(param1:§`"b§, param2:§`"b§) : int
      {
         if(this.§3"q§[param1.id] && !this.§3"q§[param2.id])
         {
            return -1;
         }
         if(!this.§3"q§[param1.id] && this.§3"q§[param2.id])
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
      
      private function §'+§(param1:§`"b§, param2:int, param3:Array) : Boolean
      {
         if(param1.id == §@#B§(§4#;§.singleton.dataModel).§9!N§.id)
         {
            return false;
         }
         if(this.§&"-§.§^!6§()[param1.id] != null)
         {
            return false;
         }
         if(this.§;"-§ == §%?§ && this.§&"-§.§##$§()[param1.id] != null)
         {
            return false;
         }
         if(this.§;"-§ == §<s§ && !this.§&"-§.§]"[§(param1.id))
         {
            return false;
         }
         if(this.§;"-§ == §<s§ && §@#B§(§4#;§.singleton.dataModel).§ #W§[param1.id] != null)
         {
            return false;
         }
         if(this.§;"-§ == §%!§ && !this.§&"-§.§@"%§(param1.id))
         {
            return false;
         }
         if(this.§;"-§ == §8i§ && !this.§&"-§.§'!H§(param1.id))
         {
            return false;
         }
         if(this.§;"-§ == §8i§ && this.§71§(param1.id))
         {
            return false;
         }
         return true;
      }
      
      private function §71§(param1:String) : Boolean
      {
         var _loc3_:§]"V§ = null;
         var _loc2_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         for each(_loc3_ in _loc2_.§'"?§.data)
         {
            if(_loc3_ is §=!g§)
            {
               if(_loc3_.userId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §,!Q§(param1:MouseEvent) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         this.§`@§();
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.§>!g§,§9"i§.§<s§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true,true);
      }
      
      private function §`@§() : void
      {
         var _loc4_:§`"b§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = this.§2"8§.concat().sort(this.§0D§);
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.§0" §)
            {
               _loc1_.push(_loc4_.id);
               _loc3_++;
               if(_loc3_ >= §&!§)
               {
                  break;
               }
            }
         }
         §4#;§.singleton.§<#'§();
         switch(this.§;"-§)
         {
            case §%!§:
               §""v§.§&R§("flashSendHelpRequestToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
               break;
            case §<s§:
               §""v§.§&R§("flashInviteFriendsHandler",JSON.stringify(_loc1_));
               break;
            case §%?§:
               §""v§.§&R§("flashSendGiftToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
               break;
            case §8i§:
               §""v§.§&R§("flashSendChallengeToFriends",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,JSON.stringify(_loc1_));
         }
         this.§ !H§(_loc1_.length);
         if(this.§=#Q§)
         {
            close();
         }
      }
      
      private function §-#V§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§&"-§.§4T§(_loc2_);
         }
         this.§1#-§(param1.length);
      }
      
      private function §`!Y§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§&"-§.§^#K§(_loc2_);
         }
         this.§1#-§(param1.length);
      }
      
      private function §+#F§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§&"-§.§!7§(_loc2_);
         }
         this.§1#-§(param1.length);
      }
      
      private function §]">§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§&"-§.§3!8§(_loc2_);
         }
         this.§1#-§(param1.length);
      }
      
      private function §1#-§(param1:int) : void
      {
         if(this.§=#Q§)
         {
            close(true);
            return;
         }
         this.§2"8§ = this.§2"8§.filter(this.§'+§);
         this.§![§();
         this.§]"'§ += param1;
         this.§8"-§.gotoAndStop(this.§;"-§ + "_more");
         this.§8"-§.sentCheckmark.gotoAndPlay(1);
         switch(this.§;"-§)
         {
            case §%!§:
               this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Requests sent";
               break;
            case §<s§:
               this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Invites sent";
               break;
            case §%?§:
               this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Gifts sent";
               break;
            case §8i§:
               this.§2!b§.text = this.§]"'§.toString() + "/" + this.§#w§ + " Friends challenged";
         }
         if(this.§2"8§.length == 0)
         {
            this.§3#R§.§0" § = false;
            this.§'!J§(false);
         }
      }
      
      private function §[!G§(param1:Array, param2:int) : Array
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
      
      private function §<!R§(param1:§,#_§) : Array
      {
         var _loc3_:* = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(new §`"b§(_loc3_,param1[_loc3_]));
         }
         return _loc2_;
      }
      
      private function §'!J§(param1:Boolean) : void
      {
         if(!this.§=#Q§)
         {
            this.§8"-§.btnSend.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnSendMore.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnInvite.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnInviteMore.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnAsk.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnAskMore.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnChallengeFriends.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnChallengeFriendsMore.alpha = !!param1 ? 1 : 0.2;
            this.§8"-§.btnSend.mouseEnabled = param1;
            this.§8"-§.btnSendMore.mouseEnabled = param1;
            this.§8"-§.btnInvite.mouseEnabled = param1;
            this.§8"-§.btnInviteMore.mouseEnabled = param1;
            this.§8"-§.btnAsk.mouseEnabled = param1;
            this.§8"-§.btnAskMore.mouseEnabled = param1;
            this.§8"-§.btnChallengeFriends.mouseEnabled = param1;
            this.§8"-§.btnChallengeFriendsMore.mouseEnabled = param1;
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.removeEventListeners();
         super.hide(param1,param2);
      }
      
      private function § !H§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§=#Q§)
         {
            switch(this.§;"-§)
            {
               case §<s§:
                  _loc2_ = §6"]§.§4!§;
                  break;
               case §%!§:
                  _loc2_ = §6"]§.§@!O§;
                  break;
               case §8i§:
                  _loc2_ = §6"]§.§-"O§;
            }
         }
         else
         {
            switch(this.§;"-§)
            {
               case §%?§:
                  _loc2_ = §6"]§.§""x§;
                  break;
               case §<s§:
                  _loc2_ = §6"]§.§^S§;
                  break;
               case §%!§:
                  _loc2_ = §6"]§.§]_§;
                  break;
               case §8i§:
                  _loc2_ = §6"]§.§@!Y§;
            }
         }
         if(_loc2_ != "")
         {
            §6"]§.§8#2§(_loc2_,param1);
         }
      }
   }
}
