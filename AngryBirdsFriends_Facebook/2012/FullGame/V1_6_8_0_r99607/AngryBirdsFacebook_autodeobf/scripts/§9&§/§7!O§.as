package §9&§
{
   import §+"§.§'!0§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §2!,§.§!"§;
   import §7N§.§43§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §7N§.§]@§;
   import §7^§.§"![§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§%!#§;
   import §<!<§.§^!I§;
   import §<"1§.§,U§;
   import §<G§.§5w§;
   import §<m§.§9d§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §7!O§ extends Popup
   {
      
      protected static var §["!§:§,!S§;
      
      protected static var §<z§:Array;
      
      protected static var §#!O§:§7!O§;
      
      protected static var §2]§:Array = [];
       
      
      protected var §+!$§:§9d§;
      
      protected var §5"%§:Array;
      
      public function §7!O§(param1:§"!j§, param2:StatePopupManager, param3:Boolean)
      {
         this.§5"%§ = [];
         §#!O§ = this;
         if(param3)
         {
            §6;§();
         }
         super(§1"-§.§ !>§.Views.PopupView_GiftInbox[0],param1);
         this.§+!$§ = new §9d§(660,280,§<z§ || [],§@9§,0,15);
         this.§+!$§.scrollerSprite.x = 34;
         this.§+!$§.scrollerSprite.y = 120;
         mClip.mcContainer.addChild(this.§+!$§.scrollerSprite);
         this.§"!?§();
         this.§&"!§();
         if(§%!H§)
         {
            mClip.mcStatuses.gotoAndStop(1);
         }
         else if(§<z§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§=!U§();
      }
      
      public static function §6;§() : void
      {
         if(§["!§)
         {
            return;
         }
         §<z§ = [];
         §["!§ = new §,!S§();
         §["!§.addEventListener(Event.COMPLETE,§@!^§);
         §["!§.addEventListener(IOErrorEvent.IO_ERROR,§6!@§);
         §["!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!@§);
         §["!§.addEventListener(§"!n§.§"+§,§6!@§);
         §["!§.dataFormat = URLLoaderDataFormat.TEXT;
         §["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/getrequests"));
      }
      
      protected static function §6!@§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
         §["!§ = null;
      }
      
      private static function §@!^§(param1:Event) : void
      {
         var dataObject:Object = null;
         var bragObject:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§["!§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §["!§.data,§^!I§.§50§);
         }
         §2]§ = §2]§.concat(dataObject.brags);
         §<z§ = dataObject.gifts.concat(§2]§);
         §["!§ = null;
         if(§#!O§)
         {
            §#!O§.§]H§();
         }
         for each(bragObject in dataObject.brags)
         {
            §,U§.§53§("flashDeleteRequest",bragObject.r);
         }
         §#!j§();
      }
      
      public static function injectData(param1:Object) : void
      {
         §2]§ = §2]§.concat(param1.brags);
         §<z§ = param1.gifts.concat(§2]§);
         if(§#!O§)
         {
            §#!O§.§]H§();
         }
      }
      
      public static function get §@<§() : Boolean
      {
         return §<z§.length > 0;
      }
      
      public static function get §%!H§() : Boolean
      {
         return §["!§ != null;
      }
      
      protected static function §#!j§() : void
      {
         (§9!%§.§ !W§ as § W§).§[!E§.§9!O§(§ Q§);
      }
      
      public static function get § Q§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §<z§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §@9§.§!M§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(§#!O§ == this)
         {
            §#!O§ = null;
         }
         preClose();
         §,U§.§-!N§("giftsSentToUsers",this.§!!2§);
      }
      
      private function §"!?§() : void
      {
         this.§=!b§();
         this.§+!$§.scrollerSprite.addEventListener(§"![§.§!&§,this.§5b§);
         this.§+!$§.scrollerSprite.addEventListener(§"![§.§3%§,this.§#!h§);
         this.§+!$§.scrollerSprite.addEventListener(§"![§.§?!j§,this.§+!p§);
         this.§+!$§.scrollerSprite.addEventListener(§"![§.§ each§,this.§@![§);
      }
      
      private function §=!b§() : void
      {
         this.§+!$§.scrollerSprite.removeEventListener(§"![§.§!&§,this.§5b§);
         this.§+!$§.scrollerSprite.removeEventListener(§"![§.§3%§,this.§#!h§);
         this.§+!$§.scrollerSprite.removeEventListener(§"![§.§?!j§,this.§+!p§);
         this.§+!$§.scrollerSprite.removeEventListener(§"![§.§ each§,this.§@![§);
      }
      
      private function §&"!§() : void
      {
         this.§[!r§();
         mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§?T§);
         mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§3J§);
         mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§`";§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§]P§);
      }
      
      private function §[!r§() : void
      {
         mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§?T§);
         mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§3J§);
         mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§`";§);
         mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§]P§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
         if(!(AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked("1000-4"))
         {
            mClip.EasterEggButton4.visible = true;
         }
         else
         {
            mClip.EasterEggButton4.visible = false;
         }
         §,U§.addCallback("giftsSentToUsers",this.§!!2§);
      }
      
      private function §5b§(param1:§"![§) : void
      {
         param1.data.status = §@9§.§[!c§;
         var _loc3_:int = 0;
         while(_loc3_ < 15)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            _loc3_++;
         }
         var _loc4_:§,!S§ = new §,!S§();
         this.§5"%§.push({
            "loader":_loc4_,
            "data":param1.data
         });
         _loc4_.addEventListener(Event.COMPLETE,this.§5! §);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§?b§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?b§);
         _loc4_.addEventListener(§"!n§.§"+§,this.§?b§);
         _loc4_.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/acceptrequest/" + param1.data.r));
      }
      
      protected function §?b§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
      }
      
      private function §5! §(param1:Event) : void
      {
         var responseData:Object = null;
         var giftData:Object = null;
         var e:Event = param1;
         var i:int = 0;
         while(i < this.§5"%§.length)
         {
            if(this.§5"%§[i].loader == e.target)
            {
               try
               {
                  responseData = JSON.parse((e.target as §,!S§).data);
               }
               catch(error:Error)
               {
                  throw new Error("Error parsing JSON: " + (e.target as §,!S§).data,§^!I§.§50§);
               }
               giftData = this.§5"%§[i].data;
               giftData.status = §@9§.§^T§;
               giftData.content = responseData.itemId;
               giftData.quantity = responseData.quantity;
               giftData.receivedItems = responseData.receivedItems;
               §'!0§.§8c§.§'u§(responseData.itemId,responseData.quantity);
               this.§+!$§.§'!d§();
               §,U§.§53§("flashDeleteRequest",giftData.completeFacebookRequestId);
               this.§5"%§.splice(i,1);
               this.§1'§(responseData.itemId,responseData.quantity);
               §#!j§();
               break;
            }
            i++;
         }
      }
      
      public function §]H§() : void
      {
         this.§+!$§.data = §<z§;
         if(§<z§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§=!U§();
      }
      
      private function §]P§(param1:MouseEvent) : void
      {
         this.close();
         §43§.§'! §();
      }
      
      private function §#!h§(param1:§"![§) : void
      {
         AngryBirdsFP11.§`"B§.§'H§();
         §,U§.§53§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §2!P§).userName,param1.data.i);
      }
      
      private function §!!2§(param1:Array) : void
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
            for each(_loc4_ in this.§+!$§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  _loc4_.status = §@9§.§8!N§;
                  §!"§.§8c§.§1!0§(_loc4_.i);
                  _loc2_ = true;
                  break;
               }
            }
         }
         if(_loc2_)
         {
            this.§+!$§.§'!d§();
         }
      }
      
      private function §+!p§(param1:§"![§) : void
      {
         §<z§.splice(§<z§.indexOf(param1.data),1);
         if(§2]§.indexOf(param1.data) != -1)
         {
            §2]§.splice(§2]§.indexOf(param1.data),1);
         }
         §#!j§();
         this.§+!$§.data = §<z§;
         this.§=!U§();
      }
      
      private function §@![§(param1:§"![§) : void
      {
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
         {
            § W§.§%!y§.§!!Z§(param1.data.lvl);
         }
         else if(param1.data.lvl.indexOf("2000-") > -1)
         {
            § W§.§%!y§.§ !`§(§5w§.STATE_NAME);
         }
         this.§+!p§(param1);
         this.deActivate();
      }
      
      private function §?T§(param1:MouseEvent) : void
      {
         mClip.EasterEggButton4.visible = false;
         (AngryBirdsFP11.sUserProgress as §2!P§).setEggUnlocked("1000-4");
      }
      
      private function §3J§(param1:MouseEvent) : void
      {
         this.scroll(-this.§+!$§.§?3§);
      }
      
      private function §`";§(param1:MouseEvent) : void
      {
         this.scroll(this.§+!$§.§?3§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§+!$§.scroll(param1);
            this.§=!U§();
         }
      }
      
      private function §=!U§() : void
      {
         var _loc1_:* = this.§+!$§.offset != 0;
         var _loc2_:* = this.§+!$§.offset != this.§+!$§.data.length - this.§+!$§.§?3§;
         mClip.btnUp.visible = _loc1_;
         mClip.btnDown.visible = _loc2_;
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         §#!j§();
         this.deActivate();
      }
      
      override public function close() : void
      {
         this.§[!r§();
         this.§=!b§();
         this.§+!$§.dispose();
         super.close();
      }
      
      private function §1'§(param1:String, param2:int) : void
      {
         §%!#§.§`!C§(param1,param2);
      }
   }
}
