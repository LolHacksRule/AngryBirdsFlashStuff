package §>"!§
{
   import § 0§.§@Y§;
   import §""d§.§2"8§;
   import §""d§.§3E§;
   import §"5§.§6F§;
   import §,"v§.§@§;
   import §0R§.§0!8§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §7A§.§2§;
   import §7A§.§5"2§;
   import §9!&§.§,!m§;
   import §<"s§.§0u§;
   import §^!`§.§%n§;
   import §`!b§.§ each§;
   import §`!b§.§"§;
   import §`"8§.§-!w§;
   import §`"8§.§2"+§;
   import §`"8§.§;z§;
   import §`"8§.§>6§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §>D§ extends AbstractPopup
   {
      
      public static const §-" §:String = "invite";
      
      public static const §,!9§:String = "sendgifts";
      
      public static const §'t§:String = "energy";
      
      public static const §<"U§:String = "challenge";
      
      protected static const §9-§:int = 50;
      
      protected static var §;%§:int = 10;
       
      
      protected var §]m§:String;
      
      protected var §>!$§:§%"F§;
      
      protected var §!"s§:Boolean;
      
      private var §!!E§:§,!m§;
      
      private var §,#-§:§;z§;
      
      private var §-u§:§5"2§;
      
      private var §-L§:§5"2§;
      
      private var §<!S§:§2"+§;
      
      private var §'h§:MovieClip;
      
      private var §6#7§:int = 0;
      
      private var §<D§:int;
      
      private var §3"b§:Array;
      
      private var §,"2§:TextField;
      
      private var §&!"§:TextField;
      
      private var §%#$§:Boolean;
      
      private var §0"G§:§3E§;
      
      private var §^-§:§6F§;
      
      private var §3"D§:Array;
      
      private var §;!j§:Boolean = false;
      
      private var §-]§:Boolean = false;
      
      public function §>D§(param1:int, param2:int, param3:String, param4:Boolean = false)
      {
         this.§]m§ = param3;
         this.§!"s§ = param4;
         this.§<!S§ = §-!w§(§;"@§.singleton.dataModel).§'"l§;
         super(param1,param2,§%n§.§ set§.Popups.Popup_Requests[0],"requests");
      }
      
      override public function dispose() : void
      {
         if(this.§,#-§)
         {
            this.§,#-§.removeEventListener(Event.COMPLETE,this.§0!A§);
            this.§,#-§ = null;
         }
         super.dispose();
      }
      
      protected function addEventListeners() : void
      {
         if(!this.§!"s§)
         {
            this.§,"2§.addEventListener(Event.CHANGE,this.§-"i§);
            this.§,"2§.addEventListener(FocusEvent.FOCUS_IN,this.§,"!§);
            this.§0"G§.§^1§.addEventListener(Event.CHANGE,this.§6y§);
         }
         this.§'h§.btnSend.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnSendMore.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnInvite.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnAsk.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnAskMore.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnChallengeFriends.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnChallengeFriendsMore.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickChallenge.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickSendGift.addEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickInvite.addEventListener(MouseEvent.CLICK,this.§=!d§);
         §@Y§.addCallback("giftsSentToUsers",this.§>#2§);
         §@Y§.addCallback("invitationBatchSent",this.§83§);
         §@Y§.addCallback("helpRequestSentToUsers",this.§'!§);
         §@Y§.addCallback("challengeSent",this.§>!R§);
      }
      
      protected function removeEventListeners() : void
      {
         if(!this.§!"s§)
         {
            this.§,"2§.removeEventListener(Event.CHANGE,this.§-"i§);
            this.§,"2§.removeEventListener(FocusEvent.FOCUS_IN,this.§,"!§);
            this.§0"G§.§^1§.removeEventListener(Event.CHANGE,this.§6y§);
         }
         this.§'h§.btnSend.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnSendMore.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnInvite.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnInviteMore.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnAsk.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnAskMore.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnChallengeFriends.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnChallengeFriendsMore.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickChallenge.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickSendGift.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         this.§'h§.btnQuickInvite.removeEventListener(MouseEvent.CLICK,this.§=!d§);
         §@Y§.§0"<§("giftsSentToUsers",this.§>#2§);
         §@Y§.§0"<§("invitationBatchSent",this.§83§);
         §@Y§.§0"<§("helpRequestSentToUsers",this.§'!§);
         §@Y§.§0"<§("challengeSent",this.§>!R§);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'h§ = §,r§.getItemByName("Container_Content").mClip;
         this.§'h§.gotoAndStop(!!this.§!"s§ ? "quick_" + this.§]m§ : this.§]m§);
         this.§@B§();
         this.§%#$§ = this.§'h§.chkSelectAll.visible;
         (§,r§.getItemByName("Button_ScrollUp") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         (§,r§.getItemByName("Button_ScrollDown") as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         this.§,"2§ = this.§'h§.txtSearch;
         if(!this.§!"s§)
         {
            this.§&!"§ = this.§'h§.friendsCounter.txtFriendsSelected;
         }
         if(this.§!"s§ && this.§]m§ == §<"U§)
         {
            this.§'h§.txtCoinReward.text = String(this.§'h§.txtCoinReward.text).replace("${coins}",§-!w§(§;"@§.singleton.dataModel).§2!J§.prizePerFriend);
         }
         this.§'h§.sentCheckmark.stop();
         this.§'h§.sentCheckmark.mouseEnabled = this.§'h§.sentCheckmark.mouseChildren = false;
         this.§'h§.btnGetFriends.visible = false;
         this.§'h§.btnGetFriends.addEventListener(MouseEvent.CLICK,this.§@!6§);
         this.§'h§.tabEnabled = this.§'h§.tabChildren = false;
         var _loc1_:MovieClip = this.§'h§.chkSelectAll;
         this.§0"G§ = new §3E§(_loc1_);
         this.§,#-§ = §-!w§(§;"@§.singleton.dataModel).§-"h§;
         this.§-u§ = §-!w§(§;"@§.singleton.dataModel).§^!f§;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_FriendsType").mClip;
         if(this.§]m§ == §-" §)
         {
            this.§3"D§ = [§%"F§.§>"K§,§%"F§.§1!!§];
         }
         else
         {
            this.§3"D§ = [§%"F§.§>"K§,§%"F§.§+"T§,§%"F§.§1!!§];
         }
         this.§^-§ = new §6F§(_loc2_,§,4§,this.§3"D§);
         this.§^-§.§3!F§ = 240;
         this.§^-§.§@!f§ = 60;
         this.§^-§.§ !8§ = 0;
         _loc2_.selectedValue.mouseEnabled = _loc2_.selectedValue.mouseChildren = false;
         _loc2_.arrow.mouseEnabled = false;
         this.addEventListeners();
         if(this.§]m§ == §<"U§)
         {
            this.§;"8§();
            _loc2_.visible = false;
         }
         else
         {
            this.§="3§();
         }
         this.§^-§.§ !8§ = this.§3"D§.indexOf(§%"F§.§>"K§);
         this.§^-§.addEventListener(Event.CHANGE,this.§0#0§);
         var _loc3_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §,r§.getItemByName("Container_Content").mClip).mask = _loc3_;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Graphics = null;
         if(!this.§;!j§)
         {
            _loc2_ = §,r§.mClip.graphics;
            _loc2_.beginFill(0,0);
            _loc2_.drawRect(0,0,§,r§.mClip.width,§,r§.mClip.height);
            _loc2_.endFill();
            this.§;!j§ = true;
         }
         super.show(param1);
      }
      
      private function §0#0§(param1:Event) : void
      {
         this.§,#-§.removeEventListener(Event.COMPLETE,this.§0!A§);
         this.§!!E§.clear();
         switch(this.§^-§.§9! §)
         {
            case §%"F§.§>"K§:
               this.§="3§();
               break;
            case §%"F§.§+"T§:
               this.§;"8§();
               break;
            case §%"F§.§1!!§:
               this.§]"s§();
         }
         if(this.§;!A§)
         {
            this.§]# §();
         }
      }
      
      private function §;"8§() : void
      {
         this.§>!$§ = §%"F§.§+"T§;
         this.§>f§(this.§0#§(this.§-u§));
         this.§9%§();
      }
      
      private function §]"s§() : void
      {
         this.§>!$§ = §%"F§.§1!!§;
         this.§>f§(this.§0#§(this.abfFriends));
         this.§9%§();
      }
      
      private function get abfFriends() : §5"2§
      {
         var _loc1_:String = null;
         if(!this.§-L§)
         {
            this.§-L§ = new §5"2§();
            for each(_loc1_ in §-!w§(§;"@§.singleton.dataModel).abfFriends)
            {
               if(this.§,#-§.friends[_loc1_])
               {
                  this.§-L§[_loc1_] = this.§,#-§.friends[_loc1_];
               }
            }
         }
         return this.§-L§;
      }
      
      private function §="3§() : void
      {
         this.§>!$§ = §%"F§.§>"K§;
         if(this.§,#-§.friends == null)
         {
            this.§,#-§.addEventListener(Event.COMPLETE,this.§0!A§);
            if(!this.§,#-§.isLoading)
            {
               this.§,#-§.§1!0§();
            }
            if(this.§&!"§ != null)
            {
               this.§&!"§.text = "Loading...";
            }
            this.§[4§(false);
            this.§'h§.chkSelectAll.visible = false;
         }
         else
         {
            this.§#!#§();
         }
      }
      
      private function §0!A§(param1:Event) : void
      {
         this.§[4§(true);
         this.§'h§.chkSelectAll.visible = this.§%#$§;
         (§,r§.getItemByName("Button_ScrollUp") as §2"8§).visible = !this.§!"s§;
         (§,r§.getItemByName("Button_ScrollDown") as §2"8§).visible = !this.§!"s§;
         this.§,#-§.removeEventListener(Event.COMPLETE,this.§0!A§);
         this.§#!#§();
      }
      
      private function §#!#§() : void
      {
         var _loc1_:Array = this.§0#§(this.§,#-§.friends);
         if(this.§!"s§)
         {
            _loc1_ = _loc1_.filter(this.§@y§);
            _loc1_ = §2#0§.§#"M§(_loc1_);
            _loc1_.sort(this.§%!j§);
            _loc1_ = _loc1_.slice(0,21);
         }
         this.§>f§(_loc1_);
         this.§9%§();
         this.§=!k§(true);
      }
      
      private function §9%§() : void
      {
         if(!this.§!"s§)
         {
            this.§0"G§.§""P§ = true;
         }
         else
         {
            this.§=!k§(true);
         }
      }
      
      private function §,"!§(param1:FocusEvent) : void
      {
         if(this.§,"2§.text == "Search...")
         {
            this.§,"2§.text = "";
         }
      }
      
      private function §5"6§() : void
      {
         var _loc2_:§9E§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3"b§)
         {
            if(_loc2_.§""P§)
            {
               _loc1_++;
            }
         }
         if(this.§6#7§ == 0)
         {
            if(this.§&!"§ != null)
            {
               this.§&!"§.text = _loc1_.toString() + "/" + this.§3"b§.length + " Friends selected";
            }
         }
         this.§[4§(_loc1_ > 0);
      }
      
      private function §-"i§(param1:Event) : void
      {
         this.§]# §();
      }
      
      private function get §;!A§() : Boolean
      {
         return this.§,"2§.text != "" && this.§,"2§.text != "Search...";
      }
      
      private function §]# §() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§9E§ = null;
         var _loc1_:String = this.§,"2§.text;
         if(!this.§;!A§)
         {
            _loc2_ = this.§3"b§;
         }
         else
         {
            _loc2_ = [];
            for each(_loc3_ in this.§3"b§)
            {
               if(_loc3_.name.toLowerCase().indexOf(_loc1_.toLowerCase()) != -1)
               {
                  _loc2_.push(_loc3_);
                  _loc3_.§""P§ = true;
               }
               else
               {
                  _loc3_.§""P§ = false;
               }
            }
         }
         this.§!!E§.data = this.§-#+§(_loc2_,2);
         if(!this.§;!A§)
         {
            this.§=!k§(this.§0"G§.§""P§);
         }
         this.§ e§();
         this.§5"6§();
      }
      
      private function §6y§(param1:Event) : void
      {
         this.§=!k§(this.§0"G§.§""P§);
      }
      
      private function §=!k§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§9E§ = null;
         for each(_loc2_ in this.§!!E§.data)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.§""P§ = param1;
               }
            }
         }
         this.§!!E§.refresh();
         this.§5"6§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "UP":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.scroll(-this.§!!E§.visibleItemsCount);
               break;
            case "DOWN":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.scroll(this.§!!E§.visibleItemsCount);
               break;
            case "FRIEND_TYPE_DROPDOWN":
               if(this.§^-§.isOpen)
               {
                  this.§^-§.close();
               }
               else
               {
                  this.§^-§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         this.§!!E§.scroll(param1);
         this.§ e§();
      }
      
      private function § e§() : void
      {
         var _loc1_:* = this.§!!E§.offset != 0;
         var _loc2_:* = this.§!!E§.offset != this.§!!E§.data.length - this.§!!E§.visibleItemsCount;
         (§,r§.getItemByName("Button_ScrollUp") as §2"8§).setComponentState(!!_loc1_ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         (§,r§.getItemByName("Button_ScrollDown") as §2"8§).setComponentState(!!_loc2_ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
      }
      
      protected function §@B§() : void
      {
         this.§!!E§ = new §,!m§(600,209,null,!!this.§!"s§ ? §4!5§ : §]"q§,0,2);
         this.§'h§.mcItems.addChild(this.§!!E§.scrollerSprite);
         this.§!!E§.scrollerSprite.addEventListener(§#!m§.§9!y§,this.§+T§,true);
      }
      
      private function §+T§(param1:§#!m§) : void
      {
         param1.stopImmediatePropagation();
         if(this.§0"G§.§""P§)
         {
            this.§'h§.chkSelectAll.removeEventListener(Event.CHANGE,this.§6y§);
            this.§0"G§.§""P§ = false;
            this.§'h§.chkSelectAll.addEventListener(Event.CHANGE,this.§6y§);
         }
         this.§5"6§();
      }
      
      protected function §>f§(param1:Array) : void
      {
         this.§3"b§ = param1.filter(this.§@y§);
         this.§3"b§.sortOn("name");
         this.§'h§.btnGetFriends.visible = this.§]m§ != §-" § && this.§3"b§.length <= 6;
         this.§<D§ = this.§3"b§.length;
         this.§!!E§.data = this.§-#+§(this.§3"b§,!!this.§!"s§ ? 3 : 2);
         this.§ e§();
         this.§5"6§();
      }
      
      private function §%!j§(param1:§9E§, param2:§9E§) : int
      {
         if(this.§-u§[param1.id] && !this.§-u§[param2.id])
         {
            return -1;
         }
         if(!this.§-u§[param1.id] && this.§-u§[param2.id])
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
      
      private function §@y§(param1:§9E§, param2:int, param3:Array) : Boolean
      {
         if(param1.id == §-!w§(§;"@§.singleton.dataModel).§0!;§.id)
         {
            return false;
         }
         if(this.§<!S§.§&"S§()[param1.id] != null)
         {
            return false;
         }
         if(this.§]m§ == §,!9§ && this.§<!S§.§>y§()[param1.id] != null)
         {
            return false;
         }
         if(this.§]m§ == §-" § && !this.§<!S§.§%"4§(param1.id))
         {
            return false;
         }
         if(this.§]m§ == §-" § && §-!w§(§;"@§.singleton.dataModel).§^!f§[param1.id] != null)
         {
            return false;
         }
         if(this.§]m§ == §'t§ && !this.§<!S§.§'!3§(param1.id))
         {
            return false;
         }
         if(this.§]m§ == §<"U§ && !this.§<!S§.§^"D§(param1.id))
         {
            return false;
         }
         if(this.§]m§ == §<"U§ && this.§"Y§(param1.id))
         {
            return false;
         }
         return true;
      }
      
      private function §"Y§(param1:String) : Boolean
      {
         var _loc3_:§"#6§ = null;
         var _loc2_:§>6§ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
         for each(_loc3_ in _loc2_.§?!x§.data)
         {
            if(_loc3_ is § each§)
            {
               if(_loc3_.userId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §=!d§(param1:MouseEvent) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         this.§=!^§();
      }
      
      private function §@!6§(param1:MouseEvent) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         var _loc2_:§5!R§ = new §>D§(§0u§.§1"J§,§^T§.§0O§,§>D§.§-" §);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true,true);
      }
      
      private function §=!^§() : void
      {
         var _loc4_:§9E§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = this.§3"b§.concat().sort(this.§%!j§);
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.§""P§)
            {
               _loc1_.push(_loc4_.id);
               _loc3_++;
               if(_loc3_ >= §9-§)
               {
                  break;
               }
            }
         }
         §;"@§.singleton.§@_§();
         switch(this.§]m§)
         {
            case §'t§:
               §@Y§.§7"H§("flashSendHelpRequestToFriends",§-!w§(§;"@§.singleton.dataModel).§0!;§.name,JSON.stringify(_loc1_));
               break;
            case §-" §:
               §@Y§.§7"H§("flashInviteFriendsHandler",JSON.stringify(_loc1_));
               break;
            case §,!9§:
               §@Y§.§7"H§("flashSendGiftToFriends",§-!w§(§;"@§.singleton.dataModel).§0!;§.name,JSON.stringify(_loc1_));
               break;
            case §<"U§:
               §@Y§.§7"H§("flashSendChallengeToFriends",§-!w§(§;"@§.singleton.dataModel).§0!;§.name,JSON.stringify(_loc1_));
         }
         this.§&`§(_loc1_.length);
         if(this.§!"s§)
         {
            close();
         }
      }
      
      private function §>!R§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§<!S§.§^!<§(_loc2_);
         }
         this.§,"A§(param1.length);
      }
      
      private function §83§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§<!S§.§4"§(_loc2_);
         }
         this.§,"A§(param1.length);
      }
      
      private function §>#2§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§<!S§.§2!Y§(_loc2_);
         }
         this.§,"A§(param1.length);
      }
      
      private function §'!§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            this.§<!S§.§<!L§(_loc2_);
         }
         this.§,"A§(param1.length);
      }
      
      private function §,"A§(param1:int) : void
      {
         if(this.§!"s§)
         {
            close(true);
            return;
         }
         this.§3"b§ = this.§3"b§.filter(this.§@y§);
         this.§]# §();
         this.§6#7§ += param1;
         this.§'h§.gotoAndStop(this.§]m§ + "_more");
         this.§'h§.sentCheckmark.gotoAndPlay(1);
         switch(this.§]m§)
         {
            case §'t§:
               this.§&!"§.text = this.§6#7§.toString() + "/" + this.§<D§ + " Requests sent";
               break;
            case §-" §:
               this.§&!"§.text = this.§6#7§.toString() + "/" + this.§<D§ + " Invites sent";
               break;
            case §,!9§:
               this.§&!"§.text = this.§6#7§.toString() + "/" + this.§<D§ + " Gifts sent";
               break;
            case §<"U§:
               this.§&!"§.text = this.§6#7§.toString() + "/" + this.§<D§ + " Friends challenged";
         }
         if(this.§3"b§.length == 0)
         {
            this.§0"G§.§""P§ = false;
            this.§[4§(false);
         }
      }
      
      private function §-#+§(param1:Array, param2:int) : Array
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
      
      private function §0#§(param1:§5"2§) : Array
      {
         var _loc3_:* = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(new §9E§(_loc3_,param1[_loc3_]));
         }
         return _loc2_;
      }
      
      private function §[4§(param1:Boolean) : void
      {
         if(!this.§!"s§)
         {
            this.§'h§.btnSend.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnSendMore.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnInvite.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnInviteMore.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnAsk.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnAskMore.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnChallengeFriends.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnChallengeFriendsMore.alpha = !!param1 ? 1 : 0.2;
            this.§'h§.btnSend.mouseEnabled = param1;
            this.§'h§.btnSendMore.mouseEnabled = param1;
            this.§'h§.btnInvite.mouseEnabled = param1;
            this.§'h§.btnInviteMore.mouseEnabled = param1;
            this.§'h§.btnAsk.mouseEnabled = param1;
            this.§'h§.btnAskMore.mouseEnabled = param1;
            this.§'h§.btnChallengeFriends.mouseEnabled = param1;
            this.§'h§.btnChallengeFriendsMore.mouseEnabled = param1;
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.removeEventListeners();
         super.hide(param1,param2);
      }
      
      private function §&`§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§!"s§)
         {
            switch(this.§]m§)
            {
               case §-" §:
                  _loc2_ = §0!8§.§;!2§;
                  break;
               case §'t§:
                  _loc2_ = §0!8§.§4c§;
                  break;
               case §<"U§:
                  _loc2_ = §0!8§.§[!M§;
            }
         }
         else
         {
            switch(this.§]m§)
            {
               case §,!9§:
                  _loc2_ = §0!8§.§!""§;
                  break;
               case §-" §:
                  _loc2_ = §0!8§.§3"'§;
                  break;
               case §'t§:
                  _loc2_ = §0!8§.§5"<§;
                  break;
               case §<"U§:
                  _loc2_ = §0!8§.§2"m§;
            }
         }
         if(_loc2_ != "")
         {
            §0!8§.§&"g§(_loc2_,param1);
         }
      }
   }
}
