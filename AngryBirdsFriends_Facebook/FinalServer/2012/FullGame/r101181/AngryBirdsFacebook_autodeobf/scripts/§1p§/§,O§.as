package §1p§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §-!+§.§5!!§;
   import §2`§.§`"'§;
   import §3!7§.§?!F§;
   import §<a§.§!!m§;
   import §<a§.§+!B§;
   import §[!K§.§-k§;
   import §]!>§.§0!!§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §,O§ extends Popup
   {
      
      protected static var §=F§:§0]§;
      
      protected static var §+!R§:Array;
      
      protected static var §2"<§:§,O§;
      
      protected static var §9j§:Array = [];
       
      
      protected var §8a§:§5!!§;
      
      protected var set:Array;
      
      public function §,O§(param1:§7!A§, param2:StatePopupManager, param3:Boolean)
      {
         this.set = [];
         §2"<§ = this;
         if(param3)
         {
            §,!?§();
         }
         super(§ "A§.§4[§.Views.PopupView_GiftInbox[0],param1);
         this.§8a§ = new §5!!§(660,280,§+!R§ || [],§]"E§,0,15);
         this.§8a§.scrollerSprite.x = 34;
         this.§8a§.scrollerSprite.y = 120;
         mClip.mcContainer.addChild(this.§8a§.scrollerSprite);
         this.§`H§();
         this.§9D§();
         if(§6I§)
         {
            mClip.mcStatuses.gotoAndStop(1);
         }
         else if(§+!R§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§@!&§();
      }
      
      public static function §,!?§() : void
      {
         if(§=F§)
         {
            return;
         }
         §+!R§ = [];
         §=F§ = new §0]§();
         §=F§.addEventListener(Event.COMPLETE,§5r§);
         §=F§.addEventListener(IOErrorEvent.IO_ERROR,§`!0§);
         §=F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§`!0§);
         §=F§.addEventListener(§+!D§.§25§,§`!0§);
         §=F§.dataFormat = URLLoaderDataFormat.TEXT;
         §=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/getrequests"));
      }
      
      protected static function §`!0§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
         §=F§ = null;
      }
      
      private static function §5r§(param1:Event) : void
      {
         var dataObject:Object = null;
         var bragObject:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§=F§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §=F§.data,§!!m§.§4H§);
         }
         §9j§ = §9j§.concat(dataObject.brags);
         §+!R§ = dataObject.gifts.concat(§9j§);
         §=F§ = null;
         if(§2"<§)
         {
            §2"<§.§0"4§();
         }
         for each(bragObject in dataObject.brags)
         {
            §@!]§.§9"'§("flashDeleteRequest",bragObject.r);
         }
         §=<§();
      }
      
      public static function injectData(param1:Object) : void
      {
         §9j§ = §9j§.concat(param1.brags);
         §+!R§ = param1.gifts.concat(§9j§);
         if(§2"<§)
         {
            §2"<§.§0"4§();
         }
      }
      
      public static function get §0"6§() : Boolean
      {
         return §+!R§.length > 0;
      }
      
      public static function get §6I§() : Boolean
      {
         return §=F§ != null;
      }
      
      protected static function §=<§() : void
      {
         (§#6§.§ q§ as §3T§).§0#§.§5!,§(§,!g§);
      }
      
      public static function get §,!g§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §+!R§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §]"E§.§<!p§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(§2"<§ == this)
         {
            §2"<§ = null;
         }
         preClose();
         §@!]§.§[">§("giftsSentToUsers",this.§<!_§);
      }
      
      private function §`H§() : void
      {
         this.§@o§();
         this.§8a§.scrollerSprite.addEventListener(§`"'§.§^!z§,this.§,!M§);
         this.§8a§.scrollerSprite.addEventListener(§`"'§.§!T§,this.§`$§);
         this.§8a§.scrollerSprite.addEventListener(§`"'§.§+x§,this.§-"0§);
         this.§8a§.scrollerSprite.addEventListener(§`"'§.§<#§,this.§@!,§);
      }
      
      private function §@o§() : void
      {
         this.§8a§.scrollerSprite.removeEventListener(§`"'§.§^!z§,this.§,!M§);
         this.§8a§.scrollerSprite.removeEventListener(§`"'§.§!T§,this.§`$§);
         this.§8a§.scrollerSprite.removeEventListener(§`"'§.§+x§,this.§-"0§);
         this.§8a§.scrollerSprite.removeEventListener(§`"'§.§<#§,this.§@!,§);
      }
      
      private function §9D§() : void
      {
         this.§'9§();
         mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§%n§);
         mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§2!d§);
         mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§!?§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§@"#§);
      }
      
      private function §'9§() : void
      {
         mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§%n§);
         mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§2!d§);
         mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§!?§);
         mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§@"#§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
         if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-4"))
         {
            mClip.EasterEggButton4.visible = true;
         }
         else
         {
            mClip.EasterEggButton4.visible = false;
         }
         §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
      }
      
      private function §,!M§(param1:§`"'§) : void
      {
         param1.data.status = §]"E§.§4!1§;
         var _loc3_:int = 0;
         while(_loc3_ < 15)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            _loc3_++;
         }
         var _loc4_:§0]§ = new §0]§();
         this.set.push({
            "loader":_loc4_,
            "data":param1.data
         });
         _loc4_.addEventListener(Event.COMPLETE,this.§[§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"D§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"D§);
         _loc4_.addEventListener(§+!D§.§25§,this.§5"D§);
         _loc4_.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/acceptrequest/" + param1.data.r));
      }
      
      protected function §5"D§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
      }
      
      private function §[§(param1:Event) : void
      {
         var responseData:Object = null;
         var giftData:Object = null;
         var e:Event = param1;
         var i:int = 0;
         while(i < this.set.length)
         {
            if(this.set[i].loader == e.target)
            {
               try
               {
                  responseData = JSON.parse((e.target as §0]§).data);
               }
               catch(error:Error)
               {
                  throw new Error("Error parsing JSON: " + (e.target as §0]§).data,§!!m§.§4H§);
               }
               giftData = this.set[i].data;
               giftData.status = §]"E§.§30§;
               giftData.content = responseData.itemId;
               giftData.quantity = responseData.quantity;
               giftData.receivedItems = responseData.receivedItems;
               §?!F§.§;"§.§4!J§(responseData.itemId,responseData.quantity);
               this.§8a§.§7C§();
               §@!]§.§9"'§("flashDeleteRequest",giftData.completeFacebookRequestId);
               this.set.splice(i,1);
               this.§&N§(responseData.itemId,responseData.quantity);
               §=<§();
               break;
            }
            i++;
         }
      }
      
      public function §0"4§() : void
      {
         this.§8a§.data = §+!R§;
         if(§+!R§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§@!&§();
      }
      
      private function §@"#§(param1:MouseEvent) : void
      {
         this.close();
         §%?§.§-'§();
      }
      
      private function §`$§(param1:§`"'§) : void
      {
         AngryBirdsFP11.§@<§.§#m§();
         §@!]§.§9"'§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §[<§).userName,param1.data.i);
      }
      
      private function §<!_§(param1:Array) : void
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
            for each(_loc4_ in this.§8a§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  _loc4_.status = §]"E§.§5"2§;
                  §0!!§.§;"§.§[!i§(_loc4_.i);
                  _loc2_ = true;
                  break;
               }
            }
         }
         if(_loc2_)
         {
            this.§8a§.§7C§();
         }
      }
      
      private function §-"0§(param1:§`"'§) : void
      {
         §+!R§.splice(§+!R§.indexOf(param1.data),1);
         if(§9j§.indexOf(param1.data) != -1)
         {
            §9j§.splice(§9j§.indexOf(param1.data),1);
         }
         §=<§();
         this.§8a§.data = §+!R§;
         this.§@!&§();
      }
      
      private function §@!,§(param1:§`"'§) : void
      {
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
         {
            §3T§.§67§.§5O§(param1.data.lvl);
         }
         else if(param1.data.lvl.indexOf("2000-") > -1)
         {
            §3T§.§67§.§=!w§(§-k§.STATE_NAME);
         }
         this.§-"0§(param1);
         this.deActivate();
      }
      
      private function §%n§(param1:MouseEvent) : void
      {
         mClip.EasterEggButton4.visible = false;
         (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-4");
      }
      
      private function §2!d§(param1:MouseEvent) : void
      {
         this.scroll(-this.§8a§.§1!a§);
      }
      
      private function §!?§(param1:MouseEvent) : void
      {
         this.scroll(this.§8a§.§1!a§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§8a§.scroll(param1);
            this.§@!&§();
         }
      }
      
      private function §@!&§() : void
      {
         var _loc1_:* = this.§8a§.offset != 0;
         var _loc2_:* = this.§8a§.offset != this.§8a§.data.length - this.§8a§.§1!a§;
         mClip.btnUp.visible = _loc1_;
         mClip.btnDown.visible = _loc2_;
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         §=<§();
         this.deActivate();
      }
      
      override public function close() : void
      {
         this.§'9§();
         this.§@o§();
         this.§8a§.dispose();
         super.close();
      }
      
      private function §&N§(param1:String, param2:int) : void
      {
         §+!B§.§2§(param1,param2);
      }
   }
}
