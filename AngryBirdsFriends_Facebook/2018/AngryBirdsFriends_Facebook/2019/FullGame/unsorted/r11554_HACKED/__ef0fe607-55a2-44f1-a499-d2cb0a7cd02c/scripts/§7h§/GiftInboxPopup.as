package §7h§
{
   import § "C§.§ !<§;
   import §!!t§.§'8§;
   import §!§.§="D§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-!"§.§7z§;
   import §2!u§.§!!q§;
   import §3=§.§1#Z§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §7#j§.§@"F§;
   import §8A§.§ b§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import §=#§.§0"V§;
   import §>"9§.§[#%§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§7"2§;
   import §>"Q§.§]Q§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.GiftFriendsPopup;
   import §?!N§.WarningPopup;
   import §]"'§.§#$D§;
   import §]"'§.§-!#§;
   import §]"'§.§>I§;
   import §]"'§.§[#!§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class GiftInboxPopup extends AbstractPopup implements §["b§, §="D§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §4#x§:int = 25;
      
      private static const § "U§:Boolean = true;
      
      protected static var §&"J§:§'!n§;
      
      protected static var §4Z§:§'!n§;
      
      protected static var §"$3§:Array;
      
      protected static var §#!5§:GiftInboxPopup;
      
      protected static var §9#`§:Boolean;
      
      protected static var §1#4§:Array = [];
      
      private static var §5!H§:int = 0;
       
      
      protected var §+%§:§!!q§;
      
      protected var §]"f§:Array;
      
      private var §?3§:Wallet;
      
      private var §;$A§:Boolean = false;
      
      private var §%§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §`v§:§"S§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§]"f§ = [];
         super(param1,param2,§0"j§.§-i§.Views.PopupView_GiftInbox[0],ID);
         this.§;$A§ = param3;
      }
      
      public static function get §?q§() : GiftInboxPopup
      {
         return §#!5§;
      }
      
      public static function §7!'§(param1:Boolean) : void
      {
         if(§&"J§)
         {
            return;
         }
         §9#`§ = param1;
         §"$3§ = [];
         §&"J§ = new §'!n§();
         §&"J§.addEventListener(Event.COMPLETE,§?Y§);
         §&"J§.addEventListener(IOErrorEvent.IO_ERROR,§#"§);
         §&"J§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#"§);
         §&"J§.addEventListener(§"!;§.§ #x§,§#"§);
         §&"J§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         §&"J§.load(_loc2_);
      }
      
      protected static function §#"§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §&"J§ = null;
      }
      
      private static function §?Y§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§@#G§ = null;
         var _loc2_:Object = §&"J§.data;
         §1#4§ = _loc2_.brags;
         §"$3§ = _loc2_.gifts.concat(§1#4§);
         §&"J§ = null;
         if(§#!5§)
         {
            §#!5§.§&$2§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            §@"F§.§^$#§("flashDeleteRequest",_loc3_.r);
         }
         §<!U§();
         if(§9#`§ && §&F§)
         {
            §9#`§ = false;
            _loc4_ = new GiftInboxPopup(§%#§.NORMAL,§9#5§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §1#4§ = param1.brags;
         §"$3§ = param1.gifts.concat(§1#4§);
         if(§#!5§)
         {
            §#!5§.§&$2§();
         }
      }
      
      public static function get §&F§() : Boolean
      {
         return §"$3§.length > 0;
      }
      
      public static function get §0"§() : Boolean
      {
         return §&"J§ != null;
      }
      
      protected static function §<!U§() : void
      {
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.§^!C§(§^e§);
         }
      }
      
      public static function get §^e§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §"$3§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §%X§.§6e§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      override protected function init() : void
      {
         §#!5§ = this;
         if(this.§;$A§)
         {
            §7!'§(false);
         }
         this.§+%§ = new §!!q§(678,285,§"$3§ || [],§%X§,5,10);
         this.§+%§.scrollerSprite.x = 16;
         this.§+%§.scrollerSprite.y = 111;
         this.§%§ = §8#Y§.mClip;
         this.§%§.mcContainer.addChild(this.§+%§.scrollerSprite);
         this.§`$@§();
         this.§0!p§();
         this.§`v§ = §"S§(§8#Y§.getItemByName("Button_ClaimAll"));
         if(§0"§)
         {
            this.§%§.mcStatuses.gotoAndStop(1);
         }
         else if(§"$3§.length > 0)
         {
            this.§%§.mcStatuses.visible = false;
         }
         else
         {
            this.§%§.mcStatuses.gotoAndStop(2);
         }
         this.§35§();
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§%§.mcContainer;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      private function §`$@§() : void
      {
         this.§3r§();
         this.§+%§.scrollerSprite.addEventListener(§ b§.§9$4§,this.§+#S§);
         this.§+%§.scrollerSprite.addEventListener(§ b§.§5O§,this.§[w§);
         this.§+%§.scrollerSprite.addEventListener(§ b§.§8"u§,this.§-"K§);
         this.§+%§.scrollerSprite.addEventListener(§ b§.§ !B§,this.§ ">§);
         this.§+%§.scrollerSprite.addEventListener(§ b§.§%!j§,this.§1$2§);
         this.§+%§.scrollerSprite.addEventListener(§ b§.§4A§,this.§[#J§);
      }
      
      private function §3r§() : void
      {
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§9$4§,this.§+#S§);
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§5O§,this.§[w§);
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§8"u§,this.§-"K§);
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§ !B§,this.§ ">§);
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§%!j§,this.§1$2§);
         this.§+%§.scrollerSprite.removeEventListener(§ b§.§4A§,this.§[#J§);
      }
      
      private function §0!p§() : void
      {
         this.§5!N§();
         this.§%§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§^!L§);
         this.§%§.btnUp.addEventListener(MouseEvent.CLICK,this.§;!X§);
         this.§%§.btnDown.addEventListener(MouseEvent.CLICK,this.§[C§);
         this.§%§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
      }
      
      private function §5!N§() : void
      {
         this.§%§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§^!L§);
         this.§%§.btnUp.removeEventListener(MouseEvent.CLICK,this.§;!X§);
         this.§%§.btnDown.removeEventListener(MouseEvent.CLICK,this.§[C§);
         this.§%§.btnClose.removeEventListener(MouseEvent.CLICK,this.§'#+§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§!#h§("1000-4"))
         {
            this.§%§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§%§.EasterEggButton4.visible = false;
         }
         this.§;!7§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§[D§(_loc2_);
         §@"F§.addCallback("giftsSentToUsers",this.§?"s§);
      }
      
      public function §?#i§() : void
      {
         var _loc2_:Object = null;
         if(§4Z§)
         {
            return;
         }
         §5!H§ = 0;
         if(§"$3§)
         {
            for each(_loc2_ in §"$3§)
            {
               if(_loc2_.status && _loc2_.status == §%X§.§6e§)
               {
                  ++§5!H§;
               }
            }
         }
         §4Z§ = new §'!n§();
         §4Z§.addEventListener(Event.COMPLETE,this.§?"^§);
         §4Z§.addEventListener(ErrorEvent.ERROR,this.§ "v§);
         §4Z§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §4Z§.load(_loc1_);
      }
      
      private function §+#S§(param1:§ b§) : void
      {
         this.§4'§(§%X§(param1.target),param1.data.uid);
         §5"w§.§+#C§();
         §+$A§.§@"i§().§=!I§(1,false);
      }
      
      private function §[w§(param1:§ b§) : void
      {
         §5"w§.§7!l§();
         §+$A§.§@"i§().§=!I§(1,true);
         this.§4'§(§%X§(param1.target),null);
      }
      
      private function §-"K§(param1:§ b§) : void
      {
         this.§4'§(§%X§(param1.target),null);
      }
      
      private function §4'§(param1:§%X§, param2:String) : void
      {
         param1.data.status = §%X§.§<$3§;
         this.§;!7§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§%§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§]H§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §]H§(param1:§%X§, param2:String) : Function
      {
         var inboxItem:§%X§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §%X§.§-"m§;
            var _loc3_:* = new §'!n§();
            §]"f§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§!$!§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§!$!§);
            _loc3_.addEventListener(§"!;§.§ #x§,§!$!§);
            var _loc4_:*;
            (_loc4_ = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §!$!§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§]"f§.length)
         {
            this.§]"f§[_loc3_].loader.close();
            this.§]"f§[_loc3_] = null;
            _loc3_++;
         }
         this.§]"f§.length = 0;
      }
      
      private function onGiftClaimed(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:§7z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"f§.length)
         {
            if(this.§]"f§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §7"2§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§]"f§[_loc2_].data is Array ? this.§]"f§[_loc2_].data : [this.§]"f§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §%X§.§,!1§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §%X§.§!!^§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §>I§.§ !C§ && _loc10_.quantity > 0)
                     {
                        §5"w§.§%!%§(§5"w§.§0"z§,§>I§.§ !C§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §5"w§.§1"R§(§5"w§.§0"z§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §7z§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §>I§.§ !C§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§+#;§ = §+$A§.§3#B§;
                           break;
                        case "GIFT":
                           _loc11_.§+#;§ = §+$A§.§5i§;
                           break;
                        default:
                           _loc11_.§+#;§ = §+$A§.§9#,§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     §@"F§.§^$#§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§+r§(_loc8_.content,_loc8_.quantity);
               }
               §#$D§.§?q§.§["a§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§+%§.refresh();
            this.§]"f§[_loc2_].loader.close();
            this.§]"f§[_loc2_] = null;
            this.§]"f§.splice(_loc2_,1);
            §<!U§();
            _loc2_++;
            break;
         }
         this.§^#W§();
      }
      
      public function §&$2§() : void
      {
         this.§+%§.data = §"$3§;
         if(§"$3§.length > 0)
         {
            this.§%§.mcStatuses.visible = false;
            this.§^#W§();
         }
         else
         {
            this.§%§.mcStatuses.gotoAndStop(2);
            this.§;!7§(false);
         }
         this.§35§();
      }
      
      private function §^#W§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§+%§.data)
         {
            if(!_loc1_.status || _loc1_.status == §%X§.§6e§)
            {
               if(!_loc1_.lvl)
               {
                  this.§;!7§(true);
                  break;
               }
            }
         }
      }
      
      private function §5y§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§;!7§(false);
         this.§+%§.§""4§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§+%§.data)
         {
            if(_loc3_ && _loc3_.status == §%X§.§6e§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new § b§(§ b§.§0"C§,_loc3_,true));
            }
         }
         this.§+%§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§1Y§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §1Y§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §'!n§();
            §]"f§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§!$!§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§!$!§);
            _loc3_.addEventListener(§"!;§.§ #x§,§!$!§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §5"w§.§+#C§(mClaimedGiftsList.length);
            §+$A§.§@"i§().§=!I§(mClaimedGiftsList.length,!sendGiftBack);
            if(sendGiftBack)
            {
               AngryBirdsBase.singleton.exitFullScreen();
               sendGiftBackToAll();
            }
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      private function sendGiftBackToAll() : void
      {
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         var _loc3_:int = this.mClaimedGiftsList.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ >= §4#x§)
            {
               break;
            }
            if(§-!#§.§?q§.§?!u§(this.mClaimedGiftsList[_loc3_].uid) && !§0"V§.§5#$§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §5"w§.§##[§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §+$A§.§@"i§().§[!E§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §@"F§.§^$#§("updateSessionToken",§]Q§.§="3§);
            §@"F§.§^$#§("flashSendGiftFriend",userProgress.userName,_loc4_,§[#!§.§1!'§(§[#!§.§^"_§));
         }
      }
      
      private function § ">§(param1:§ b§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§0"V§.§5#$§(param1) && §-!#§.§?q§.§?!u§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §@"F§.§^$#§("updateSessionToken",§]Q§.§="3§);
            §@"F§.§^$#§("flashSendGiftFriend",userProgress.userName,param1,§[#!§.§1!'§(§[#!§.§^"_§));
            §5"w§.§##[§();
            §+$A§.§@"i§().§[!E§(1,"REGIFT");
         }
      }
      
      private function §?"s§(param1:Array) : void
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
            for each(_loc4_ in this.§+%§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == §%X§.§,!1§)
               {
                  _loc4_.status = §%X§.§%u§;
                  §-!#§.§?q§.§!"1§(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§+%§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §1$2§(param1:§ b§) : void
      {
         §"$3§.splice(§"$3§.indexOf(param1.data),1);
         this.§7#u§(param1);
         §<!U§();
         this.§+%§.data = §"$3§;
         this.scroll(this.§+%§.§@"t§);
         this.§35§();
         this.§^#W§();
      }
      
      private function §7#u§(param1:§ b§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§7"2§ = null;
         var _loc4_:URLRequest = null;
         if(§1#4§.indexOf(param1.data) != -1)
         {
            §1#4§.splice(§1#4§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §'!n§();
            _loc3_.addEventListener(Event.COMPLETE,this.§?F§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§!$!§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!$!§);
            _loc3_.addEventListener(§"!;§.§ #x§,this.§!$!§);
            (_loc4_ = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §?F§(param1:Event) : void
      {
         if(param1.currentTarget && param1.currentTarget.data)
         {
            param1.currentTarget.data;
         }
      }
      
      private function §[#J§(param1:§ b§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §'"a§.§!!8§.§7!%§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§ !<§.§'!J§(§ !<§.§2#i§) != § !<§.§<_§)
               {
                  (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§]#3§);
               }
            }
            else
            {
               (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§!"d§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§ !<§.§'!J§(§ !<§.§2#i§) != § !<§.§<_§)
            {
               §'"a§.§!!8§.§%D§(§1#Z§.STATE_NAME);
            }
         }
         else
         {
            §'"a§.§!!8§.§%D§(§'8§.STATE_NAME);
         }
         this.§1$2§(param1);
         hide();
      }
      
      private function §^!L§(param1:MouseEvent) : void
      {
         this.§%§.EasterEggButton4.visible = false;
         userProgress.§?!7§("1000-4");
      }
      
      private function §;!X§(param1:MouseEvent) : void
      {
         this.scroll(-this.§+%§.§@"t§);
      }
      
      private function §[C§(param1:MouseEvent) : void
      {
         this.scroll(this.§+%§.§@"t§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§+%§.scroll(param1);
            this.§35§();
         }
      }
      
      private function §35§() : void
      {
         var _loc1_:* = this.§+%§.offset != 0;
         var _loc2_:* = this.§+%§.offset != this.§+%§.data.length - this.§+%§.§@"t§;
         this.§%§.btnUp.visible = _loc1_;
         this.§%§.btnDown.visible = _loc2_;
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         §<!U§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§#!5§ == this)
         {
            §#!5§ = null;
         }
         §@"F§.§=F§("giftsSentToUsers",this.§?"s§);
         this.§"[§(this.§?3§);
         this.§5!N§();
         this.§3r§();
         this.§+%§.dispose();
         super.dispose();
      }
      
      private function §+r§(param1:String, param2:int) : void
      {
         §5"w§.§7#C§(param1,param2);
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
      
      private function §?"^§(param1:Event) : void
      {
         var _loc2_:Object = §4Z§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §4Z§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §5!H§)
         {
            _loc4_.result = false;
            dispatchEvent(new § b§(§ b§.§ !-§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new § b§(§ b§.§ !-§,_loc4_));
         }
      }
      
      private function § "v§(param1:Event) : void
      {
         §4Z§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new § b§(§ b§.§ !-§,_loc2_));
      }
      
      private function §;!7§(param1:Boolean) : void
      {
         this.§`v§.setEnabled(param1);
         this.§`v§.setComponentState(param1 == true ? §'!V§.COMPONENT_STATE_ACTIVE_DEFAULT : §'!V§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§5y§(true);
               break;
            case "SEND_GIFTS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§%#§.NORMAL,§9#5§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
