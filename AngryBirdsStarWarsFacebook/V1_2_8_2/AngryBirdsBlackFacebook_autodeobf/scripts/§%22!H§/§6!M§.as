package §"!H§
{
   import §%!G§.§0"V§;
   import §%!G§.§`?§;
   import §+"Y§.EnergyOutPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §5"Q§.§5"s§;
   import §8!h§.§-V§;
   import §8"'§.§0h§;
   import §8"'§.§4!T§;
   import §8§.§0>§;
   import §9"U§.§,!c§;
   import §9"U§.§5"T§;
   import §9"U§.§7"1§;
   import §9"U§.§>!Y§;
   import §;!3§.§^"z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"n§.§2J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§1"o§;
   
   public class §6!M§ extends AbstractPopup
   {
       
      
      private var §8!r§:§0>§;
      
      private var §4T§:§5"T§;
      
      private var §;6§:§2J§;
      
      protected var §!"c§:Array;
      
      private var §'""§:§1"o§;
      
      private var §,!t§:int;
      
      private var §2"1§:§>!Y§;
      
      public function §6!M§(param1:§1"o§, param2:int, param3:int)
      {
         this.§!"c§ = [];
         this.§'""§ = param1;
         this.§2"1§ = §7"1§(§4"#§.singleton.dataModel).§ "_§;
         this.§4T§ = §7"1§(§4"#§.singleton.dataModel).§6!I§;
         this.§;6§ = §7"1§(§4"#§.singleton.dataModel).§#"_§;
         super(param2,param3,§^x§.§ '§.Popups.Popup_Inbox[0],"inbox");
      }
      
      protected static function §`"5§(param1:int) : void
      {
         §throw§(§4"#§.singleton).§?"T§.§]!w§(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         §5"s§.addCallback("giftsSentToUsers",this.§'c§);
         §@!Y§.§"h§(this.§'""§);
         this.§8!r§ = new §0>§(660,225,null,§@!Y§,0,15);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§`"`§,this.§^#"§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§4",§,this.§5g§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§>v§,this.§7#3§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§="_§,this.§2!u§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§<"s§,this.§-">§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§&",§,this.§8i§);
         this.§8!r§.scrollerSprite.addEventListener(§3!p§.§-!A§,this.§?#!§);
         var _loc1_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc1_.mcStatuses.gotoAndStop(1);
         this.§2"1§.addEventListener(Event.CHANGE,this.§3"a§);
         if(!this.§2"1§.isLoading)
         {
            this.§2"1§.update();
         }
         _loc1_.itemsContainer.addChild(this.§8!r§.scrollerSprite);
         var _loc2_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc3_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc3_.mask = _loc2_;
         _loc3_.tabChildren = false;
         _loc3_.tabEnabled = false;
         this.§[U§();
      }
      
      private function §^#"§(param1:§3!p§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         param1.data.status = §@!Y§.§86§;
         var _loc2_:§`?§ = new §`?§();
         this.§!"c§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§2"]§);
         _loc2_.load(§0"V§.§2"r§(§4"#§.SERVER_ROOT + "/acceptrequest/" + param1.data.r));
      }
      
      private function §2"]§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§,!c§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"c§.length)
         {
            if(this.§!"c§[_loc2_].loader == param1.target)
            {
               _loc3_ = §`?§(param1.target).data;
               (_loc4_ = this.§!"c§[_loc2_].data).status = §@!Y§.§#!`§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§2"1§.gifts.splice(this.§2"1§.gifts.indexOf(_loc4_),1);
               if(_loc3_.itemId == "Energy")
               {
                  (_loc5_ = §7"1§(§4"#§.singleton.dataModel).§9"$§).§9!s§(_loc3_.quantity);
                  §throw§(§4"#§.singleton).§?"T§.§2!E§();
               }
               else
               {
                  §7"1§(§4"#§.singleton.dataModel).§@!K§.§2"q§(_loc3_.itemId,_loc3_.quantity);
               }
               this.§8!r§.refresh();
               §5"s§.§<!8§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§!"c§.splice(_loc2_,1);
               §`"5§(--this.§,!t§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §?#!§(param1:§3!p§) : void
      {
         param1.data.status = §@!Y§.§9p§;
         var _loc2_:§`?§ = new §`?§();
         this.§!"c§.push({
            "loader":_loc2_,
            "data":param1.data
         });
         _loc2_.addEventListener(Event.COMPLETE,this.§5!E§);
         _loc2_.load(§0"V§.§2"r§(§4"#§.SERVER_ROOT + "/acceptrequest/" + param1.data.r + "/true"));
      }
      
      private function §5!E§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"c§.length)
         {
            if(this.§!"c§[_loc2_].loader == param1.target)
            {
               _loc3_ = §`?§(param1.target).data;
               (_loc4_ = this.§!"c§[_loc2_].data).status = §@!Y§.§!!=§;
               _loc4_.content = _loc3_.itemId;
               _loc4_.quantity = _loc3_.quantity;
               _loc4_.receivedItems = _loc3_.receivedItems;
               this.§2"1§.inviteGifts.splice(this.§2"1§.inviteGifts.indexOf(_loc4_),1);
               §7"1§(§4"#§.singleton.dataModel).§@!K§.§2"q§(_loc3_.itemId,_loc3_.quantity);
               this.§8!r§.refresh();
               §5"s§.§<!8§("flashDeleteRequest",_loc4_.completeFacebookRequestId);
               this.§!"c§.splice(_loc2_,1);
               §`"5§(--this.§,!t§);
               break;
            }
            _loc2_++;
         }
      }
      
      private function §5g§(param1:§3!p§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         §4"#§.singleton.§,]§();
         §5"s§.§<!8§("flashSendGiftFriend",this.§;6§.name,param1.data.i);
      }
      
      private function §-">§(param1:§3!p§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         §4"#§.singleton.§,]§();
         §5"s§.§<!8§("flashSendGiftFriend",this.§;6§.name,param1.data.i);
      }
      
      private function §4!#§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         if(this.§2"1§.§#!N§ && this.§2"1§.§#!N§.§ "h§ > 0)
         {
            this.§2"1§.§#!N§.§5!7§ = true;
         }
         if(this.§2"1§.§"$§ == 0)
         {
            _loc1_.mcStatuses.gotoAndStop(2);
            this.§,!t§ = 0;
            §`"5§(0);
            §[#,§.getItemByName("Button_InviteFriends").setVisibility(true);
         }
         else
         {
            §[#,§.getItemByName("Button_InviteFriends").setVisibility(false);
            _loc2_ = this.§2"1§.§[P§();
            this.§,!t§ = _loc2_.length;
            if(this.§2"1§.§#!N§ && this.§2"1§.§#!N§.§ "h§ == 0)
            {
               §`"5§(_loc2_.length - 1);
            }
            else
            {
               §`"5§(_loc2_.length);
            }
            _loc1_.mcStatuses.stop();
            _loc1_.mcStatuses.visible = false;
            this.§8!r§.data = _loc2_;
         }
         this.§[U§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§3!§ = null;
         if(param2)
         {
            §=Q§.§`!A§("misc_menubuttonproceed_1");
         }
         if(param2 == "CLOSE")
         {
            if(this.§2"1§.§#!N§)
            {
               this.§2"1§.§#o§(false);
               if(this.§2"1§.§#!N§.§ "h§ == 0)
               {
                  this.§2"1§.§#!N§ = null;
               }
            }
         }
         switch(param2)
         {
            case "UP":
               this.scroll(-this.§8!r§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§8!r§.visibleItemsCount);
               break;
            case "SENDGIFTS":
               _loc4_ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§?!1§);
               §4"#§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            case "INVITEFRIENDS":
               _loc4_ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§&E§);
               §4"#§.singleton.popupManager.openPopup(_loc4_,false,false,false);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§8!r§.scroll(param1);
            this.§[U§();
         }
      }
      
      private function §[U§() : void
      {
         var _loc1_:Boolean = this.§8!r§.data && this.§8!r§.offset != 0;
         var _loc2_:Boolean = this.§8!r§.data && this.§8!r§.data.length > 0 && this.§8!r§.offset != this.§8!r§.data.length - this.§8!r§.visibleItemsCount;
         §[#,§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §[#,§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
      
      private function §3"a§(param1:Event) : void
      {
         this.§4!#§();
      }
      
      private function §'c§(param1:Array) : void
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
            for each(_loc4_ in this.§8!r§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  if(_loc4_.status == §@!Y§.§!!=§)
                  {
                     _loc4_.status = §@!Y§.§7!x§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == §@!Y§.§#!`§)
                  {
                     _loc4_.status = §@!Y§.§0!6§;
                     _loc2_ = true;
                  }
                  else if(_loc4_.status == §@!Y§.§8#+§)
                  {
                     _loc4_.status = §@!Y§.§&?§;
                     §`"5§(--this.§,!t§);
                     _loc2_ = true;
                  }
                  this.§4T§.§<"j§(_loc4_.i);
               }
            }
         }
         if(_loc2_)
         {
            this.§8!r§.refresh();
         }
      }
      
      private function §2!u§(param1:§3!p§) : void
      {
         var _loc3_:Number = NaN;
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         var _loc2_:§,!c§ = §7"1§(§4"#§.singleton.dataModel).§9"$§;
         if(§4"#§.singleton.dataModel.userProgress.isLevelOpen(param1.data.lvl))
         {
            if(param1.data.lvl.indexOf("2000-") >= 0)
            {
               _loc3_ = _loc2_.energy;
               if(_loc3_ <= 0)
               {
                  §4"#§.singleton.popupManager.openPopup(new EnergyOutPopup(§^!S§.§'"c§,§2!s§.TOP),true,true,true);
                  close(false);
                  return;
               }
               §throw§(§4"#§.singleton).§4!O§(param1.data.lvl);
            }
            else
            {
               §throw§(§4"#§.singleton).§4!O§(param1.data.lvl);
            }
         }
         this.removeRequest(param1.data);
         close(false);
      }
      
      private function §8i§(param1:§3!p§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
         close(false);
         §throw§(§4"#§.singleton).§`0§(§4!T§.§-!U§);
      }
      
      private function get §,;§() : Boolean
      {
         return §throw§(§4"#§.singleton).§?!D§() == §0h§.§-!U§;
      }
      
      private function §7#3§(param1:§3!p§) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         this.removeRequest(param1.data);
      }
      
      private function removeRequest(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(this.§2"1§.brags.indexOf(param1) != -1)
         {
            this.§2"1§.brags.splice(this.§2"1§.brags.indexOf(param1),1);
         }
         if(this.§2"1§.challenges.indexOf(param1) != -1)
         {
            this.§2"1§.challenges.splice(this.§2"1§.challenges.indexOf(param1),1);
         }
         if(this.§8!r§.data.indexOf(param1) != -1)
         {
            _loc2_ = this.§8!r§.offset;
            this.§8!r§.data.splice(this.§8!r§.data.indexOf(param1),1);
            this.§8!r§.§2x§(this.§8!r§.data,false);
            §`"5§(--this.§,!t§);
            this.scroll(_loc2_);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         §5"s§.§@"-§("giftsSentToUsers",this.§'c§);
         this.§2"1§.removeEventListener(Event.CHANGE,this.§3"a§);
      }
   }
}
