package § 7§
{
   import §%!I§.§]!M§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§!!s§;
   import §,l§.§#!,§;
   import §,l§.§4"7§;
   import §,l§.§["K§;
   import §2!o§.§?r§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §30§.§'"+§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §5!Y§.§]!I§;
   import §9!2§.§[" §;
   import §9@§.§1!j§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   
   public class § else§ extends Popup implements §&!l§
   {
      
      protected static var §2"A§:§3d§;
      
      protected static var §@y§:Array;
      
      protected static var §+!Y§:§ else§;
      
      protected static var §0!b§:Array = [];
       
      
      protected var §function§:§?r§;
      
      protected var §3y§:Array;
      
      private var §4!u§:§6!F§;
      
      public function § else§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         this.§3y§ = [];
         §+!Y§ = this;
         if(param3)
         {
            §8!n§();
         }
         super(§ "<§.§%I§.Views.PopupView_GiftInbox[0],param1);
         this.§function§ = new §?r§(660,280,§@y§ || [],§@!#§,0,15);
         this.§function§.scrollerSprite.x = 34;
         this.§function§.scrollerSprite.y = 120;
         mClip.mcContainer.addChild(this.§function§.scrollerSprite);
         this.§`!n§();
         this.§6"E§();
         if(§each §)
         {
            mClip.mcStatuses.gotoAndStop(1);
         }
         else if(§@y§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§&q§();
      }
      
      public static function §8!n§() : void
      {
         if(§2"A§)
         {
            return;
         }
         §@y§ = [];
         §2"A§ = new §3d§();
         §2"A§.addEventListener(Event.COMPLETE,§]"0§);
         §2"A§.addEventListener(IOErrorEvent.IO_ERROR,§7"Q§);
         §2"A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§7"Q§);
         §2"A§.addEventListener(§9G§.§33§,§7"Q§);
         §2"A§.dataFormat = URLLoaderDataFormat.TEXT;
         §2"A§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/getrequests"));
      }
      
      protected static function §7"Q§(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         §2"A§ = null;
      }
      
      private static function §]"0§(param1:Event) : void
      {
         var dataObject:Object = null;
         var bragObject:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§2"A§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §2"A§.data,§1!j§.§%e§);
         }
         §0!b§ = §0!b§.concat(dataObject.brags);
         §@y§ = dataObject.gifts.concat(§0!b§);
         §2"A§ = null;
         if(§+!Y§)
         {
            §+!Y§.§6-§();
         }
         for each(bragObject in dataObject.brags)
         {
            §'"+§.§'!#§("flashDeleteRequest",bragObject.r);
         }
         §=R§();
      }
      
      public static function injectData(param1:Object) : void
      {
         §0!b§ = §0!b§.concat(param1.brags);
         §@y§ = param1.gifts.concat(§0!b§);
         if(§+!Y§)
         {
            §+!Y§.§6-§();
         }
      }
      
      public static function get §4O§() : Boolean
      {
         return §@y§.length > 0;
      }
      
      public static function get §each §() : Boolean
      {
         return §2"A§ != null;
      }
      
      protected static function §=R§() : void
      {
         (§?l§.§ "G§ as §%"S§).§'u§.§-!P§(§'N§);
      }
      
      public static function get §'N§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §@y§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §@!#§.§0!s§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(§+!Y§ == this)
         {
            §+!Y§ = null;
         }
         preClose();
         §'"+§.§"!6§("giftsSentToUsers",this.§6z§);
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      private function §`!n§() : void
      {
         this.§#!A§();
         this.§function§.scrollerSprite.addEventListener(§[" §.§!"[§,this.§?!L§);
         this.§function§.scrollerSprite.addEventListener(§[" §.§4"&§,this.§@",§);
         this.§function§.scrollerSprite.addEventListener(§[" §.§--§,this.§@7§);
         this.§function§.scrollerSprite.addEventListener(§[" §.§-G§,this.§#4§);
      }
      
      private function §#!A§() : void
      {
         this.§function§.scrollerSprite.removeEventListener(§[" §.§!"[§,this.§?!L§);
         this.§function§.scrollerSprite.removeEventListener(§[" §.§4"&§,this.§@",§);
         this.§function§.scrollerSprite.removeEventListener(§[" §.§--§,this.§@7§);
         this.§function§.scrollerSprite.removeEventListener(§[" §.§-G§,this.§#4§);
      }
      
      private function §6"E§() : void
      {
         this.§3"N§();
         mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§9c§);
         mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§#Z§);
         mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§,U§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§"!x§);
      }
      
      private function §3"N§() : void
      {
         mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§9c§);
         mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§#Z§);
         mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§,U§);
         mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§"!x§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
         if(!(AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-4"))
         {
            mClip.EasterEggButton4.visible = true;
         }
         else
         {
            mClip.EasterEggButton4.visible = false;
         }
         this.§?!f§(new §6!F§(this));
         §'"+§.addCallback("giftsSentToUsers",this.§6z§);
      }
      
      private function §?!L§(param1:§[" §) : void
      {
         param1.data.status = §@!#§.§#"0§;
         var _loc3_:int = 0;
         while(_loc3_ < 8)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            _loc3_++;
         }
         var _loc4_:§3d§ = new §3d§();
         this.§3y§.push({
            "loader":_loc4_,
            "data":param1.data,
            "point":new Point(460,param1.target.y + 140)
         });
         _loc4_.addEventListener(Event.COMPLETE,this.§]!1§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§switch§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§switch§);
         _loc4_.addEventListener(§9G§.§33§,this.§switch§);
         _loc4_.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/acceptrequest/" + param1.data.r));
      }
      
      protected function §switch§(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
      }
      
      private function §]!1§(param1:Event) : void
      {
         var responseData:Object = null;
         var giftData:Object = null;
         var itemDeltas:Array = null;
         var changedItem:§!!s§ = null;
         var e:Event = param1;
         var i:int = 0;
         while(i < this.§3y§.length)
         {
            if(this.§3y§[i].loader == e.target)
            {
               try
               {
                  responseData = JSON.parse((e.target as §3d§).data);
               }
               catch(error:Error)
               {
                  throw new Error("Error parsing JSON: " + (e.target as §3d§).data,§1!j§.§%e§);
               }
               giftData = this.§3y§[i].data;
               giftData.status = §@!#§.§=Y§;
               itemDeltas = §#!,§.§&"5§.§6"M§(responseData.items);
               if(itemDeltas && itemDeltas.length > 0)
               {
                  changedItem = itemDeltas[0];
               }
               if(changedItem.id == §["K§.§0#§ && changedItem.§4[§ > 0)
               {
                  this.§4!u§.§5!q§(changedItem.§4[§);
                  §@q§.§&?§(§@q§.§1§,§["K§.§0#§,changedItem.§4[§);
               }
               giftData.itemId = changedItem.id;
               giftData.quantity = changedItem.§4[§;
               §@q§.§[!_§(§@q§.§1§,giftData.itemId,giftData.quantity);
               this.§function§.§->§();
               §'"+§.§'!#§("flashDeleteRequest",giftData.completeFacebookRequestId);
               this.§3y§.splice(i,1);
               this.§ ?§(giftData.content,giftData.quantity);
               §=R§();
               break;
            }
            i++;
         }
      }
      
      public function §6-§() : void
      {
         this.§function§.data = §@y§;
         if(§@y§.length > 0)
         {
            mClip.mcStatuses.visible = false;
         }
         else
         {
            mClip.mcStatuses.gotoAndStop(2);
         }
         this.§&q§();
      }
      
      private function §"!x§(param1:MouseEvent) : void
      {
         this.close();
         §9"6§.§7![§();
      }
      
      private function §@",§(param1:§[" §) : void
      {
         AngryBirdsFP11.§>m§.§^X§();
         §'"+§.§'!#§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.i);
      }
      
      private function §6z§(param1:Array) : void
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
            for each(_loc4_ in this.§function§.data)
            {
               if(_loc3_ == _loc4_.i)
               {
                  _loc4_.status = §@!#§.§3!y§;
                  §4"7§.§&"5§.§0!Q§(_loc4_.i);
                  _loc2_ = true;
                  break;
               }
            }
         }
         if(_loc2_)
         {
            this.§function§.§->§();
         }
      }
      
      private function §@7§(param1:§[" §) : void
      {
         §@y§.splice(§@y§.indexOf(param1.data),1);
         if(§0!b§.indexOf(param1.data) != -1)
         {
            §0!b§.splice(§0!b§.indexOf(param1.data),1);
         }
         §=R§();
         this.§function§.data = §@y§;
         this.§&q§();
      }
      
      private function §#4§(param1:§[" §) : void
      {
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
         {
            §%"S§.§!C§.§5!N§(param1.data.lvl);
         }
         else if(param1.data.lvl.indexOf("2000-") > -1)
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         }
         this.§@7§(param1);
         this.deActivate();
      }
      
      private function §9c§(param1:MouseEvent) : void
      {
         mClip.EasterEggButton4.visible = false;
         (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-4");
      }
      
      private function §#Z§(param1:MouseEvent) : void
      {
         this.scroll(-this.§function§.§0"P§);
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         this.scroll(this.§function§.§0"P§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§function§.scroll(param1);
            this.§&q§();
         }
      }
      
      private function §&q§() : void
      {
         var _loc1_:* = this.§function§.offset != 0;
         var _loc2_:* = this.§function§.offset != this.§function§.data.length - this.§function§.§0"P§;
         mClip.btnUp.visible = _loc1_;
         mClip.btnDown.visible = _loc2_;
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         §=R§();
         this.deActivate();
      }
      
      override public function close() : void
      {
         this.§!U§(this.§4!u§);
         this.§3"N§();
         this.§#!A§();
         this.§function§.dispose();
         super.close();
      }
      
      private function § ?§(param1:String, param2:int) : void
      {
         §@q§.§,""§(param1,param2);
      }
   }
}
