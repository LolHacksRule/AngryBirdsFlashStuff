package §[">§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §%!'§.§8o§;
   import §&!"§.§5"§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §&!"§.§`B§;
   import §2!6§.§`"J§;
   import §5!G§.§&2§;
   import §6k§.§-#§;
   import §8"#§.§,"H§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §=E§.§"!I§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §^!U§.§7@§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §4!j§ extends Popup
   {
      
      protected static var §?!-§:§9!S§;
      
      protected static var §!"C§:Array;
      
      protected static var §`"$§:§4!j§;
      
      protected static var §>!y§:Array = [];
       
      
      protected var §`"?§:§"!I§;
      
      protected var §>"H§:Array;
      
      public function §4!j§(param1:§^0§, param2:StatePopupManager, param3:Boolean)
      {
         this.§>"H§ = [];
         §`"$§ = this;
         if(param3)
         {
            §'! §();
         }
         super(§%^§.§?>§.Views.PopupView_GiftInbox[0],param1);
         this.§`"?§ = new §"!I§(660,280,§!"C§ || [],§`!G§,0,15);
         this.§`"?§.scrollerSprite.x = 34;
         this.§`"?§.scrollerSprite.y = 120;
         mClip.mcContainer.addChild(this.§`"?§.scrollerSprite);
         this.§`!C§();
         this.§<!v§();
         if(§@!o§)
         {
            mClip.mcStatuses.gotoAndStop(1);
         }
         else if(§!"C§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§@$§();
      }
      
      public static function §'! §() : void
      {
         if(§?!-§)
         {
            return;
         }
         §!"C§ = [];
         §?!-§ = new §9!S§();
         §?!-§.addEventListener(Event.COMPLETE,§6!s§);
         §?!-§.addEventListener(IOErrorEvent.IO_ERROR,§@m§);
         §?!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@m§);
         §?!-§.addEventListener(§="B§.§2"B§,§@m§);
         §?!-§.dataFormat = URLLoaderDataFormat.TEXT;
         §?!-§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/getrequests"));
      }
      
      protected static function §@m§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
         §?!-§ = null;
      }
      
      private static function §6!s§(param1:Event) : void
      {
         var dataObject:Object = null;
         var bragObject:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§?!-§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §?!-§.data,§8o§.§1!d§);
         }
         §>!y§ = §>!y§.concat(dataObject.brags);
         §!"C§ = dataObject.gifts.concat(§>!y§);
         §?!-§ = null;
         if(§`"$§)
         {
            §`"$§.§3e§();
         }
         for each(bragObject in dataObject.brags)
         {
            §=!L§.§+">§("flashDeleteRequest",bragObject.r);
         }
         §@"!§();
      }
      
      public static function injectData(param1:Object) : void
      {
         §>!y§ = §>!y§.concat(param1.brags);
         §!"C§ = param1.gifts.concat(§>!y§);
         if(§`"$§)
         {
            §`"$§.§3e§();
         }
      }
      
      public static function get §'B§() : Boolean
      {
         return §!"C§.length > 0;
      }
      
      public static function get §@!o§() : Boolean
      {
         return §?!-§ != null;
      }
      
      protected static function §@"!§() : void
      {
         (§&2§.§5!k§ as §,"I§).§6!b§.§&$§(§>!I§);
      }
      
      public static function get §>!I§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §!"C§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §`!G§.§"! §)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(§`"$§ == this)
         {
            §`"$§ = null;
         }
         preClose();
         §=!L§.§>7§("giftsSentToUsers",this.§-A§);
      }
      
      private function §`!C§() : void
      {
         this.§';§();
         this.§`"?§.scrollerSprite.addEventListener(§,"H§.§>!!§,this.§2!X§);
         this.§`"?§.scrollerSprite.addEventListener(§,"H§.§@!M§,this.§'c§);
         this.§`"?§.scrollerSprite.addEventListener(§,"H§.§%"!§,this.§'!_§);
         this.§`"?§.scrollerSprite.addEventListener(§,"H§.§2!5§,this.§`!§);
      }
      
      private function §';§() : void
      {
         this.§`"?§.scrollerSprite.removeEventListener(§,"H§.§>!!§,this.§2!X§);
         this.§`"?§.scrollerSprite.removeEventListener(§,"H§.§@!M§,this.§'c§);
         this.§`"?§.scrollerSprite.removeEventListener(§,"H§.§%"!§,this.§'!_§);
         this.§`"?§.scrollerSprite.removeEventListener(§,"H§.§2!5§,this.§`!§);
      }
      
      private function §<!v§() : void
      {
         this.§true §();
         mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§=!k§);
         mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§>"6§);
         mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§5§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§?!I§);
      }
      
      private function §true §() : void
      {
         mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§=!k§);
         mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§>"6§);
         mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§5§);
         mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§?!I§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
         if(!(AngryBirdsFP11.sUserProgress as §'y§).§#!e§("1000-4"))
         {
            mClip.EasterEggButton4.visible = true;
         }
         else
         {
            mClip.EasterEggButton4.visible = false;
         }
         §=!L§.addCallback("giftsSentToUsers",this.§-A§);
      }
      
      private function §2!X§(param1:§,"H§) : void
      {
         param1.data.status = §`!G§.§1!V§;
         var _loc3_:int = 0;
         while(_loc3_ < 15)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            _loc3_++;
         }
         var _loc4_:§9!S§ = new §9!S§();
         this.§>"H§.push({
            "loader":_loc4_,
            "data":param1.data
         });
         _loc4_.addEventListener(Event.COMPLETE,this.§,!r§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§6!X§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!X§);
         _loc4_.addEventListener(§="B§.§2"B§,this.§6!X§);
         _loc4_.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/acceptrequest/" + param1.data.r));
      }
      
      protected function §6!X§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
      }
      
      private function §,!r§(param1:Event) : void
      {
         var responseData:Object = null;
         var giftData:Object = null;
         var e:Event = param1;
         var i:int = 0;
         while(i < this.§>"H§.length)
         {
            if(this.§>"H§[i].loader == e.target)
            {
               try
               {
                  responseData = JSON.parse((e.target as §9!S§).data);
               }
               catch(error:Error)
               {
                  throw new Error("Error parsing JSON: " + (e.target as §9!S§).data,§8o§.§1!d§);
               }
               giftData = this.§>"H§[i].data;
               giftData.status = §`!G§.§4l§;
               giftData.content = responseData.itemId;
               giftData.quantity = responseData.quantity;
               giftData.receivedItems = responseData.receivedItems;
               §`"J§.§1[§.§0?§(responseData.itemId,responseData.quantity);
               §"!e§.§3"E§(§"!e§.§9;§,responseData.itemId,responseData.quantity);
               this.§`"?§.§#6§();
               §=!L§.§+">§("flashDeleteRequest",giftData.completeFacebookRequestId);
               this.§>"H§.splice(i,1);
               this.§,"+§(responseData.itemId,responseData.quantity);
               §@"!§();
               break;
            }
            i++;
         }
      }
      
      public function §3e§() : void
      {
         this.§`"?§.data = §!"C§;
         if(§!"C§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§@$§();
      }
      
      private function §?!I§(param1:MouseEvent) : void
      {
         this.close();
         §`B§.§2"H§();
      }
      
      private function §'c§(param1:§,"H§) : void
      {
         AngryBirdsFP11.§#!4§.§1z§();
         §=!L§.§+">§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §'y§).userName,param1.data.i);
      }
      
      private function §-A§(param1:Array) : void
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
            for each(_loc4_ in this.§`"?§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  _loc4_.status = §`!G§.§8!T§;
                  §7@§.§1[§.§^!-§(_loc4_.i);
                  _loc2_ = true;
                  break;
               }
            }
         }
         if(_loc2_)
         {
            this.§`"?§.§#6§();
         }
      }
      
      private function §'!_§(param1:§,"H§) : void
      {
         §!"C§.splice(§!"C§.indexOf(param1.data),1);
         if(§>!y§.indexOf(param1.data) != -1)
         {
            §>!y§.splice(§>!y§.indexOf(param1.data),1);
         }
         §@"!§();
         this.§`"?§.data = §!"C§;
         this.§@$§();
      }
      
      private function §`!§(param1:§,"H§) : void
      {
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
         {
            §,"I§.§&q§.§7-§(param1.data.lvl);
         }
         else if(param1.data.lvl.indexOf("2000-") > -1)
         {
            §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
         }
         this.§'!_§(param1);
         this.deActivate();
      }
      
      private function §=!k§(param1:MouseEvent) : void
      {
         mClip.EasterEggButton4.visible = false;
         (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("1000-4");
      }
      
      private function §>"6§(param1:MouseEvent) : void
      {
         this.scroll(-this.§`"?§.§-!v§);
      }
      
      private function §5§(param1:MouseEvent) : void
      {
         this.scroll(this.§`"?§.§-!v§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§`"?§.scroll(param1);
            this.§@$§();
         }
      }
      
      private function §@$§() : void
      {
         var _loc1_:* = this.§`"?§.offset != 0;
         var _loc2_:* = this.§`"?§.offset != this.§`"?§.data.length - this.§`"?§.§-!v§;
         mClip.btnUp.visible = _loc1_;
         mClip.btnDown.visible = _loc2_;
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         §@"!§();
         this.deActivate();
      }
      
      override public function close() : void
      {
         this.§true §();
         this.§';§();
         this.§`"?§.dispose();
         super.close();
      }
      
      private function §,"+§(param1:String, param2:int) : void
      {
         §"!e§.§-"J§(param1,param2);
      }
   }
}
