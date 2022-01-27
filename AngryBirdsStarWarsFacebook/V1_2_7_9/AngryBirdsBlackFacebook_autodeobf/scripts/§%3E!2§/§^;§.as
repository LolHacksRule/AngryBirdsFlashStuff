package §>!2§
{
   import § 0§.§@Y§;
   import §"!P§.§?"7§;
   import §%!c§.§2![§;
   import §%!c§.§@!#§;
   import §,!_§.§2!%§;
   import §,!_§.§>!_§;
   import §,"v§.§@§;
   import §,#+§.§@"F§;
   import §4##§.§7!B§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §9!&§.§,!m§;
   import §<"s§.§0u§;
   import §<"s§.EnergyOutPopup;
   import §>"!§.§>D§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import §`"8§.§2"+§;
   import §`"8§.§9";§;
   import §`"8§.§@T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^;§ extends AbstractPopup
   {
       
      
      private var §[">§:§,!m§;
      
      private var §<!S§:§2"+§;
      
      private var §3+§:§?"7§;
      
      protected var §#!^§:Array;
      
      private var § !p§:§@"F§;
      
      private var §1!=§:int;
      
      private var §8"i§:§9";§;
      
      public function §^;§(param1:§@"F§, param2:int, param3:int)
      {
         this.§#!^§ = [];
         this.§ !p§ = param1;
         this.§8"i§ = §-!w§(§;"@§.singleton.dataModel).§#"9§;
         this.§<!S§ = §-!w§(§;"@§.singleton.dataModel).§'"l§;
         this.§3+§ = §-!w§(§;"@§.singleton.dataModel).§0!;§;
         super(param2,param3,§%n§.§ set§.Popups.Popup_Inbox[0],"inbox");
      }
      
      protected static function §@$§(param1:int) : void
      {
         §&"1§(§;"@§.singleton).§`!u§.§3!"§(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         §@Y§.addCallback("giftsSentToUsers",this.§>#2§);
         § ^§.§31§(this.§ !p§);
         this.§[">§ = new §,!m§(660,225,null,§ ^§,0,15);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§3'§,this.§2!b§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§#!w§,this.§5#"§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§<"8§,this.§;"+§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§="S§,this.§""a§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§7D§,this.§;§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§>!F§,this.§4"4§);
         this.§[">§.scrollerSprite.addEventListener(§6!4§.§`G§,this.§;-§);
         var _loc1_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc1_.mcStatuses.gotoAndStop(1);
         this.§8"i§.addEventListener(Event.CHANGE,this.§>"I§);
         if(!this.§8"i§.isLoading)
         {
            this.§8"i§.update();
         }
         _loc1_.itemsContainer.addChild(this.§[">§.scrollerSprite);
         var _loc2_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc3_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc3_.mask = _loc2_;
         _loc3_.tabChildren = false;
         _loc3_.tabEnabled = false;
         this.§ e§();
      }
      
      private function §2!b§(param1:§6!4§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         param1.data.status = § ^§.§4"E§;
         var _loc2_:§2!%§ = new §2!%§();
         this.§#!^§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§@"<§);
         _loc2_.load(§>!_§.§^O§(§;"@§.SERVER_ROOT + "/acceptrequest/" + param1.data.r));
      }
      
      private function §@"<§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§@T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!^§.length)
         {
            if(this.§#!^§[_loc2_].loader == param1.target)
            {
               _loc3_ = §2!%§(param1.target).data;
               (_loc4_ = this.§#!^§[_loc2_].data).status = § ^§.§-9§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§8"i§.gifts.splice(this.§8"i§.gifts.indexOf(_loc4_),1);
               if(_loc3_.itemId == "Energy")
               {
                  (_loc5_ = §-!w§(§;"@§.singleton.dataModel).§`!§).§&"?§(_loc3_.quantity);
                  §&"1§(§;"@§.singleton).§`!u§.§%!s§();
               }
               else
               {
                  §-!w§(§;"@§.singleton.dataModel).§=>§.§""e§(_loc3_.itemId,_loc3_.quantity);
               }
               this.§[">§.refresh();
               §@Y§.§7"H§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§#!^§.splice(_loc2_,1);
               §@$§(--this.§1!=§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §;-§(param1:§6!4§) : void
      {
         param1.data.status = § ^§.§3!W§;
         var _loc2_:§2!%§ = new §2!%§();
         this.§#!^§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§6!'§);
         _loc2_.load(§>!_§.§^O§(§;"@§.SERVER_ROOT + "/acceptrequest/" + param1.data.r + "/true"));
      }
      
      private function §6!'§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!^§.length)
         {
            if(this.§#!^§[_loc2_].loader == param1.target)
            {
               _loc3_ = §2!%§(param1.target).data;
               (_loc4_ = this.§#!^§[_loc2_].data).status = § ^§.§^e§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§8"i§.inviteGifts.splice(this.§8"i§.inviteGifts.indexOf(_loc4_),1);
               §-!w§(§;"@§.singleton.dataModel).§=>§.§""e§(_loc3_.itemId,_loc3_.quantity);
               this.§[">§.refresh();
               §@Y§.§7"H§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§#!^§.splice(_loc2_,1);
               §@$§(--this.§1!=§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §5#"§(param1:§6!4§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         §;"@§.singleton.§@_§();
         §@Y§.§7"H§("flashSendGiftFriend",this.§3+§.name,param1.data.i);
      }
      
      private function §;§(param1:§6!4§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         §;"@§.singleton.§@_§();
         §@Y§.§7"H§("flashSendGiftFriend",this.§3+§.name,param1.data.i);
      }
      
      private function §'D§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         if(this.§8"i§.§%"y§ && this.§8"i§.§%"y§.§&&§ > 0)
         {
            this.§8"i§.§%"y§.§="Q§ = true;
         }
         if(this.§8"i§.§<"^§ == 0)
         {
            _loc1_.mcStatuses.gotoAndStop(2);
            this.§1!=§ = 0;
            §@$§(0);
            §,r§.getItemByName("Button_InviteFriends").setVisibility(true);
         }
         else
         {
            §,r§.getItemByName("Button_InviteFriends").setVisibility(false);
            _loc2_ = this.§8"i§.§#$§();
            this.§1!=§ = _loc2_.length;
            if(this.§8"i§.§%"y§ && this.§8"i§.§%"y§.§&&§ == 0)
            {
               §@$§(_loc2_.length - 1);
            }
            else
            {
               §@$§(_loc2_.length);
            }
            _loc1_.mcStatuses.stop();
            _loc1_.mcStatuses.visible = false;
            this.§[">§.data = _loc2_;
         }
         this.§ e§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§5!R§ = null;
         if(param2)
         {
            §@§.§=Y§("misc_menubuttonproceed_1");
         }
         if(param2 == "CLOSE")
         {
            if(this.§8"i§.§%"y§)
            {
               this.§8"i§.§6"u§(false);
               if(this.§8"i§.§%"y§.§&&§ == 0)
               {
                  this.§8"i§.§%"y§ = null;
               }
            }
         }
         switch(param2)
         {
            case "UP":
               this.scroll(-this.§[">§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§[">§.visibleItemsCount);
               break;
            case "SENDGIFTS":
               _loc4_ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§,!9§);
               §;"@§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            case "INVITEFRIENDS":
               _loc4_ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§-" §);
               §;"@§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§[">§.scroll(param1);
            this.§ e§();
         }
      }
      
      private function § e§() : void
      {
         var _loc1_:Boolean = this.§[">§.data && this.§[">§.offset != 0;
         var _loc2_:Boolean = this.§[">§.data && this.§[">§.data.length > 0 && this.§[">§.offset != this.§[">§.data.length - this.§[">§.visibleItemsCount;
         §,r§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §,r§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
      
      private function §>"I§(param1:Event) : void
      {
         this.§'D§();
      }
      
      private function §>#2§(param1:Array) : void
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
            for each(_loc4_ in this.§[">§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  if(_loc4_.status == § ^§.§^e§)
                  {
                     _loc4_.status = § ^§.§!<§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == § ^§.§-9§)
                  {
                     _loc4_.status = § ^§.§>#5§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == § ^§.§<##§)
                  {
                     _loc4_.status = § ^§.§9#0§;
                     §@$§(--this.§1!=§);
                     _loc2_ = true;
                  }
                  this.§<!S§.§2!Y§(_loc4_.i);
               }
            }
         }
         if(_loc2_)
         {
            this.§[">§.refresh();
         }
      }
      
      private function §""a§(param1:§6!4§) : void
      {
         var _loc3_:Number = NaN;
         §@§.§=Y§("misc_menubuttonproceed_1");
         var _loc2_:§@T§ = §-!w§(§;"@§.singleton.dataModel).§`!§;
         if(§;"@§.singleton.dataModel.userProgress.isLevelOpen(param1.data.lvl))
         {
            if(param1.data.lvl.indexOf("2000-") >= 0)
            {
               _loc3_ = _loc2_.energy;
               if(_loc3_ <= 0)
               {
                  §;"@§.singleton.popupManager.openPopup(new EnergyOutPopup(§0u§.§1"J§,§^T§.TOP),true,true,true);
                  close(false);
                  return;
               }
               §&"1§(§;"@§.singleton).§5"K§(param1.data.lvl);
            }
            else
            {
               §&"1§(§;"@§.singleton).§5"K§(param1.data.lvl);
            }
         }
         this.removeRequest(param1.data);
         close(false);
      }
      
      private function §4"4§(param1:§6!4§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
         close(false);
         §&"1§(§;"@§.singleton).§0"B§(§@!#§.§'#2§);
      }
      
      private function get §%!d§() : Boolean
      {
         return §&"1§(§;"@§.singleton).§=#$§() == §2![§.§'#2§;
      }
      
      private function §;"+§(param1:§6!4§) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
      }
      
      private function removeRequest(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(this.§8"i§.brags.indexOf(param1) != -1)
         {
            this.§8"i§.brags.splice(this.§8"i§.brags.indexOf(param1),1);
         }
         if(this.§8"i§.challenges.indexOf(param1) != -1)
         {
            this.§8"i§.challenges.splice(this.§8"i§.challenges.indexOf(param1),1);
         }
         if(this.§[">§.data.indexOf(param1) != -1)
         {
            _loc2_ = this.§[">§.offset;
            this.§[">§.data.splice(this.§[">§.data.indexOf(param1),1);
            this.§[">§.§2!s§(this.§[">§.data,false);
            §@$§(--this.§1!=§);
            this.scroll(_loc2_);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         §@Y§.§0"<§("giftsSentToUsers",this.§>#2§);
         this.§8"i§.removeEventListener(Event.CHANGE,this.§>"I§);
      }
   }
}
