package §2"§
{
   import § "4§.§4!?§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §,!,§.§4§;
   import §,"N§.§=!1§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §,"N§.§^"o§;
   import §7!$§.§&$§;
   import §7#W§.§2&§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §"u§ extends AbstractPopup
   {
       
      
      private var §-r§:§4#9§;
      
      private var §&"-§:§=!1§;
      
      private var §^"V§:§4!?§;
      
      protected var §>!x§:Array;
      
      private var §+!b§:§[#;§;
      
      private var §!L§:int;
      
      private var §2z§:§^"o§;
      
      public function §"u§(param1:§[#;§, param2:int, param3:int)
      {
         this.§>!x§ = [];
         this.§+!b§ = param1;
         this.§2z§ = §@#B§(§4#;§.singleton.dataModel).§6!G§;
         this.§&"-§ = §@#B§(§4#;§.singleton.dataModel).§;!A§;
         this.§^"V§ = §@#B§(§4#;§.singleton.dataModel).§9!N§;
         super(param2,param3,§&$§.§@8§.Popups.Popup_Inbox[0],"inbox");
      }
      
      protected static function §"!8§(param1:int) : void
      {
         §@!m§(§4#;§.singleton).§""s§.§-"-§(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         §""v§.addCallback("giftsSentToUsers",this.§+#F§);
         §5!"§.§;y§(this.§+!b§);
         this.§-r§ = new §4#9§(660,225,null,§5!"§,0,15);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§4#U§,this.§+t§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§>#N§,this.§,#"§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§]x§,this.§@#V§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§+!j§,this.§1G§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§'""§,this.§`#]§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§1"l§,this.§'l§);
         this.§-r§.scrollerSprite.addEventListener(§%r§.§8"L§,this.§2##§);
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc1_.mcStatuses.gotoAndStop(1);
         this.§2z§.addEventListener(Event.CHANGE,this.§2!h§);
         if(!this.§2z§.isLoading)
         {
            this.§2z§.update();
         }
         _loc1_.itemsContainer.addChild(this.§-r§.scrollerSprite);
         var _loc2_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc3_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc3_.mask = _loc2_;
         _loc3_.tabChildren = false;
         _loc3_.tabEnabled = false;
         this.§9!V§();
      }
      
      private function §+t§(param1:§%r§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         param1.data.status = §5!"§.§!!i§;
         var _loc2_:§+"k§ = new §+"k§();
         this.§>!x§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§^n§);
         _loc2_.load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/acceptrequest/" + param1.data.r));
      }
      
      private function §^n§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§?v§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!x§.length)
         {
            if(this.§>!x§[_loc2_].loader == param1.target)
            {
               _loc3_ = §+"k§(param1.target).data;
               (_loc4_ = this.§>!x§[_loc2_].data).status = §5!"§.§]K§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§2z§.gifts.splice(this.§2z§.gifts.indexOf(_loc4_),1);
               if(_loc3_.itemId == "Energy")
               {
                  (_loc5_ = §@#B§(§4#;§.singleton.dataModel).§^"J§).§@#K§(_loc3_.quantity);
                  §@!m§(§4#;§.singleton).§""s§.§5!Z§();
               }
               else
               {
                  §@#B§(§4#;§.singleton.dataModel).§]"<§.§#!+§(_loc3_.itemId,_loc3_.quantity);
               }
               this.§-r§.refresh();
               §""v§.§&R§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§>!x§.splice(_loc2_,1);
               §"!8§(--this.§!L§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §2##§(param1:§%r§) : void
      {
         param1.data.status = §5!"§.§2!N§;
         var _loc2_:§+"k§ = new §+"k§();
         this.§>!x§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§6j§);
         _loc2_.load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/acceptrequest/" + param1.data.r + "/true"));
      }
      
      private function §6j§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!x§.length)
         {
            if(this.§>!x§[_loc2_].loader == param1.target)
            {
               _loc3_ = §+"k§(param1.target).data;
               (_loc4_ = this.§>!x§[_loc2_].data).status = §5!"§.§8l§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§2z§.inviteGifts.splice(this.§2z§.inviteGifts.indexOf(_loc4_),1);
               §@#B§(§4#;§.singleton.dataModel).§]"<§.§#!+§(_loc3_.itemId,_loc3_.quantity);
               this.§-r§.refresh();
               §""v§.§&R§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§>!x§.splice(_loc2_,1);
               §"!8§(--this.§!L§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §,#"§(param1:§%r§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         §4#;§.singleton.§<#'§();
         §""v§.§&R§("flashSendGiftFriend",this.§^"V§.name,param1.data.i);
      }
      
      private function §`#]§(param1:§%r§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         §4#;§.singleton.§<#'§();
         §""v§.§&R§("flashSendGiftFriend",this.§^"V§.name,param1.data.i);
      }
      
      private function §!"1§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(this.§2z§.§7#X§ && this.§2z§.§7#X§.§8!Q§ > 0)
         {
            this.§2z§.§7#X§.§%5§ = true;
         }
         if(this.§2z§.§#";§ == 0)
         {
            _loc1_.mcStatuses.gotoAndStop(2);
            this.§!L§ = 0;
            §"!8§(0);
            §^c§.getItemByName("Button_InviteFriends").setVisibility(true);
         }
         else
         {
            §^c§.getItemByName("Button_InviteFriends").setVisibility(false);
            _loc2_ = this.§2z§.§4!s§();
            this.§!L§ = _loc2_.length;
            if(this.§2z§.§7#X§ && this.§2z§.§7#X§.§8!Q§ == 0)
            {
               §"!8§(_loc2_.length - 1);
            }
            else
            {
               §"!8§(_loc2_.length);
            }
            _loc1_.mcStatuses.stop();
            _loc1_.mcStatuses.visible = false;
            this.§-r§.data = _loc2_;
         }
         this.§9!V§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§[!j§ = null;
         if(param2)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         if(param2 == "CLOSE")
         {
            if(this.§2z§.§7#X§)
            {
               this.§2z§.§2#L§(false);
               if(this.§2z§.§7#X§.§8!Q§ == 0)
               {
                  this.§2z§.§7#X§ = null;
               }
            }
         }
         switch(param2)
         {
            case "UP":
               this.scroll(-this.§-r§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§-r§.visibleItemsCount);
               break;
            case "SENDGIFTS":
               _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§%?§);
               §4#;§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            case "INVITEFRIENDS":
               _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§<s§);
               §4#;§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§-r§.scroll(param1);
            this.§9!V§();
         }
      }
      
      private function §9!V§() : void
      {
         var _loc1_:Boolean = this.§-r§.data && this.§-r§.offset != 0;
         var _loc2_:Boolean = this.§-r§.data && this.§-r§.data.length > 0 && this.§-r§.offset != this.§-r§.data.length - this.§-r§.visibleItemsCount;
         §^c§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §^c§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
      
      private function §2!h§(param1:Event) : void
      {
         this.§!"1§();
      }
      
      private function §+#F§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in this.§-r§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  if(_loc4_.status == §5!"§.§8l§)
                  {
                     _loc4_.status = §5!"§.§?S§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == §5!"§.§]K§)
                  {
                     _loc4_.status = §5!"§.§>!s§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == §5!"§.§8!!§)
                  {
                     _loc4_.status = §5!"§.§["D§;
                     §"!8§(--this.§!L§);
                     _loc2_ = true;
                  }
                  this.§&"-§.§!7§(_loc4_.i);
               }
            }
         }
         if(_loc2_)
         {
            this.§-r§.refresh();
         }
      }
      
      private function §1G§(param1:§%r§) : void
      {
         var _loc3_:Number = NaN;
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         var _loc2_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         if(§4#;§.singleton.dataModel.userProgress.isLevelOpen(param1.data.lvl))
         {
            if(param1.data.lvl.indexOf("2000-") >= 0)
            {
               _loc3_ = _loc2_.energy;
               if(_loc3_ <= 0)
               {
                  §4#;§.singleton.popupManager.openPopup(new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP),true,true,true);
                  close(false);
                  return;
               }
               §@!m§(§4#;§.singleton).§%"#§(param1.data.lvl);
            }
            else
            {
               §@!m§(§4#;§.singleton).§%"#§(param1.data.lvl);
            }
         }
         this.removeRequest(param1.data);
         close(false);
      }
      
      private function §'l§(param1:§%r§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
         close(false);
         §@!m§(§4#;§.singleton).§ g§(§6!W§.§^!7§);
      }
      
      private function get §^T§() : Boolean
      {
         return §@!m§(§4#;§.singleton).§]?§() == §2&§.§^!7§;
      }
      
      private function §@#V§(param1:§%r§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
      }
      
      private function removeRequest(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(this.§2z§.brags.indexOf(param1) != -1)
         {
            this.§2z§.brags.splice(this.§2z§.brags.indexOf(param1),1);
         }
         if(this.§2z§.challenges.indexOf(param1) != -1)
         {
            this.§2z§.challenges.splice(this.§2z§.challenges.indexOf(param1),1);
         }
         if(this.§-r§.data.indexOf(param1) != -1)
         {
            _loc2_ = this.§-r§.offset;
            this.§-r§.data.splice(this.§-r§.data.indexOf(param1),1);
            this.§-r§.setData(this.§-r§.data,false);
            §"!8§(--this.§!L§);
            this.scroll(_loc2_);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         §""v§.§&z§("giftsSentToUsers",this.§+#F§);
         this.§2z§.removeEventListener(Event.CHANGE,this.§2!h§);
      }
   }
}
