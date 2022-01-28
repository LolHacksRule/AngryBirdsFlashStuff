package §;"W§
{
   import § §.§,#l§;
   import §!#C§.§ $?§;
   import §!#C§.§1%§;
   import §!#C§.§5H§;
   import §!#C§.§null§;
   import §!O§.§?!7§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§ !>§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §1L§.§!!o§;
   import §1L§.§0#=§;
   import §1L§.§9#f§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §2";§.§3,§;
   import §3+§.§;!H§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §=§.§^6§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.GiftFriendsPopup;
   import §>z§.WarningPopup;
   import §?!a§.§2!-§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`"3§.§^!Z§;
   import §`#@§.§7n§;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §&>§, §%!#§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §?!k§:int = 25;
      
      private static const §]!-§:Boolean = true;
      
      protected static var §^X§:§!!o§;
      
      protected static var §%"?§:§!!o§;
      
      protected static var §1!Z§:Array;
      
      protected static var §1$8§:GiftInboxPopup;
      
      protected static var §3"Y§:Boolean;
      
      protected static var §#"8§:Array = [];
      
      private static var §0!8§:int = 0;
       
      
      protected var §]+§:§^6§;
      
      protected var §+#H§:Array;
      
      private var §1!B§:Wallet;
      
      private var §8[§:Boolean = false;
      
      private var §&r§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §6"4§:§ !>§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§+#H§ = [];
         super(param1,param2,§?l§.§3m§.Views.PopupView_GiftInbox[0],ID);
         this.§8[§ = param3;
      }
      
      public static function get §`"H§() : GiftInboxPopup
      {
         return §1$8§;
      }
      
      public static function §>#P§(param1:Boolean) : void
      {
         if(§^X§)
         {
            return;
         }
         §3"Y§ = param1;
         §1!Z§ = [];
         §^X§ = new §!!o§();
         §^X§.addEventListener(Event.COMPLETE,§^$,§);
         §^X§.addEventListener(IOErrorEvent.IO_ERROR,§-# §);
         §^X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§-# §);
         §^X§.addEventListener(§>5§.§@!@§,§-# §);
         §^X§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         §^X§.load(_loc2_);
      }
      
      protected static function §-# §(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §^X§ = null;
      }
      
      private static function §^$,§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§5!-§ = null;
         var _loc2_:Object = §^X§.data;
         §#"8§ = _loc2_.brags;
         §1!Z§ = _loc2_.gifts.concat(§#"8§);
         §^X§ = null;
         if(§1$8§)
         {
            §1$8§.§?U§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            § !+§.§>$%§("flashDeleteRequest",_loc3_.r);
         }
         §0m§();
         if(§3"Y§ && §'$7§)
         {
            §3"Y§ = false;
            _loc4_ = new GiftInboxPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §#"8§ = param1.brags;
         §1!Z§ = param1.gifts.concat(§#"8§);
         if(§1$8§)
         {
            §1$8§.§?U§();
         }
      }
      
      public static function get §'$7§() : Boolean
      {
         return §1!Z§.length > 0;
      }
      
      public static function get §6#J§() : Boolean
      {
         return §^X§ != null;
      }
      
      protected static function §0m§() : void
      {
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.§&"Z§(§1Z§);
         }
      }
      
      public static function get §1Z§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §1!Z§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §0#w§.§%$=§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      override protected function init() : void
      {
         §1$8§ = this;
         if(this.§8[§)
         {
            §>#P§(false);
         }
         this.§]+§ = new §^6§(678,285,§1!Z§ || [],§0#w§,5,10);
         this.§]+§.scrollerSprite.x = 16;
         this.§]+§.scrollerSprite.y = 111;
         this.§&r§ = §&!M§.mClip;
         this.§&r§.mcContainer.addChild(this.§]+§.scrollerSprite);
         this.§0!J§();
         this.§>"7§();
         this.§6"4§ = § !>§(§&!M§.getItemByName("Button_ClaimAll"));
         if(§6#J§)
         {
            this.§&r§.mcStatuses.gotoAndStop(1);
         }
         else if(§1!Z§.length > 0)
         {
            this.§&r§.mcStatuses.visible = false;
         }
         else
         {
            this.§&r§.mcStatuses.gotoAndStop(2);
         }
         this.§[!P§();
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§&r§.mcContainer;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      private function §0!J§() : void
      {
         this.§6$+§();
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§?"Z§,this.§]0§);
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§]!i§,this.§ #9§);
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§!2§,this.§@#@§);
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§>"]§,this.§2#`§);
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§9!J§,this.§[#u§);
         this.§]+§.scrollerSprite.addEventListener(§?!7§.§5!>§,this.§^!§);
      }
      
      private function §6$+§() : void
      {
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§?"Z§,this.§]0§);
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§]!i§,this.§ #9§);
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§!2§,this.§@#@§);
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§>"]§,this.§2#`§);
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§9!J§,this.§[#u§);
         this.§]+§.scrollerSprite.removeEventListener(§?!7§.§5!>§,this.§^!§);
      }
      
      private function §>"7§() : void
      {
         this.§5"O§();
         this.§&r§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§!"$§);
         this.§&r§.btnUp.addEventListener(MouseEvent.CLICK,this.§>!H§);
         this.§&r§.btnDown.addEventListener(MouseEvent.CLICK,this.§4!a§);
         this.§&r§.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
      }
      
      private function §5"O§() : void
      {
         this.§&r§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§!"$§);
         this.§&r§.btnUp.removeEventListener(MouseEvent.CLICK,this.§>!H§);
         this.§&r§.btnDown.removeEventListener(MouseEvent.CLICK,this.§4!a§);
         this.§&r§.btnClose.removeEventListener(MouseEvent.CLICK,this.§@!2§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§^!^§("1000-4"))
         {
            this.§&r§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§&r§.EasterEggButton4.visible = false;
         }
         this.§!!7§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§0!A§(_loc2_);
         § !+§.addCallback("giftsSentToUsers",this.§3C§);
      }
      
      public function §=#3§() : void
      {
         var _loc2_:Object = null;
         if(§%"?§)
         {
            return;
         }
         §0!8§ = 0;
         if(§1!Z§)
         {
            for each(_loc2_ in §1!Z§)
            {
               if(_loc2_.status && _loc2_.status == §0#w§.§%$=§)
               {
                  ++§0!8§;
               }
            }
         }
         §%"?§ = new §!!o§();
         §%"?§.addEventListener(Event.COMPLETE,this.§`"G§);
         §%"?§.addEventListener(ErrorEvent.ERROR,this.§&H§);
         §%"?§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §%"?§.load(_loc1_);
      }
      
      private function §]0§(param1:§?!7§) : void
      {
         this.§<"q§(§0#w§(param1.target),param1.data.uid);
         §0I§.§+!N§();
         §!!K§.§%#S§().§9"g§(1,false);
      }
      
      private function § #9§(param1:§?!7§) : void
      {
         §0I§.§1$-§();
         §!!K§.§%#S§().§9"g§(1,true);
         this.§<"q§(§0#w§(param1.target),null);
      }
      
      private function §@#@§(param1:§?!7§) : void
      {
         this.§<"q§(§0#w§(param1.target),null);
      }
      
      private function §<"q§(param1:§0#w§, param2:String) : void
      {
         param1.data.status = §0#w§.§`"7§;
         this.§!!7§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§&r§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§<$-§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §<$-§(param1:§0#w§, param2:String) : Function
      {
         var inboxItem:§0#w§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §0#w§.§'!,§;
            var _loc3_:* = new §!!o§();
            §+#H§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§=#K§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§=#K§);
            _loc3_.addEventListener(§>5§.§@!@§,§=#K§);
            var _loc4_:*;
            (_loc4_ = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §=#K§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+#H§.length)
         {
            this.§+#H§[_loc3_].loader.close();
            this.§+#H§[_loc3_] = null;
            _loc3_++;
         }
         this.§+#H§.length = 0;
      }
      
      private function onGiftClaimed(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:Array = null;
         var _loc10_:Object = null;
         var _loc11_:§^!Z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+#H§.length)
         {
            if(this.§+#H§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §9#f§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§+#H§[_loc2_].data is Array ? this.§+#H§[_loc2_].data : [this.§+#H§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §0#w§.§"#`§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §0#w§.§3"a§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §null§.§%l§ && _loc10_.quantity > 0)
                     {
                        §0I§.§^!L§(§0I§.§'j§,§null§.§%l§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §0I§.§3#A§(§0I§.§'j§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §^!Z§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §null§.§%l§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§`"x§ = §!!K§.§3#C§;
                           break;
                        case "GIFT":
                           _loc11_.§`"x§ = §!!K§.§3!V§;
                           break;
                        default:
                           _loc11_.§`"x§ = §!!K§.§5#6§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     § !+§.§>$%§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§ b§(_loc8_.content,_loc8_.quantity);
               }
               _loc9_ = § $?§.§`"H§.§ !t§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§]+§.refresh();
            this.§+#H§[_loc2_].loader.close();
            this.§+#H§[_loc2_] = null;
            this.§+#H§.splice(_loc2_,1);
            §0m§();
            _loc2_++;
            break;
         }
         this.§7",§();
      }
      
      public function §?U§() : void
      {
         this.§]+§.data = §1!Z§;
         if(§1!Z§.length > 0)
         {
            this.§&r§.mcStatuses.visible = false;
            this.§7",§();
         }
         else
         {
            this.§&r§.mcStatuses.gotoAndStop(2);
            this.§!!7§(false);
         }
         this.§[!P§();
      }
      
      private function §7",§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§]+§.data)
         {
            if(!_loc1_.status || _loc1_.status == §0#w§.§%$=§)
            {
               if(!_loc1_.lvl)
               {
                  this.§!!7§(true);
                  break;
               }
            }
         }
      }
      
      private function §2#Q§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§!!7§(false);
         this.§]+§.§=#8§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§]+§.data)
         {
            if(_loc3_ && _loc3_.status == §0#w§.§%$=§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new §?!7§(§?!7§.§2"_§,_loc3_,true));
            }
         }
         this.§]+§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§+#;§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §+#;§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §!!o§();
            §+#H§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§=#K§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§=#K§);
            _loc3_.addEventListener(§>5§.§@!@§,§=#K§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §0I§.§+!N§(mClaimedGiftsList.length);
            §!!K§.§%#S§().§9"g§(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §?!k§)
            {
               break;
            }
            if(§1%§.§`"H§.§&B§(this.mClaimedGiftsList[_loc3_].uid) && !§2!-§.§]"2§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §0I§.§`!k§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §!!K§.§%#S§().§&!r§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            § !+§.§>$%§("updateSessionToken",§0#=§.§+#!§);
            § !+§.§>$%§("flashSendGiftFriend",userProgress.userName,_loc4_,§5H§.§^"M§(§5H§.§'=§));
         }
      }
      
      private function §2#`§(param1:§?!7§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§2!-§.§]"2§(param1) && §1%§.§`"H§.§&B§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            § !+§.§>$%§("updateSessionToken",§0#=§.§+#!§);
            § !+§.§>$%§("flashSendGiftFriend",userProgress.userName,param1,§5H§.§^"M§(§5H§.§'=§));
            §0I§.§`!k§();
            §!!K§.§%#S§().§&!r§(1,"REGIFT");
         }
      }
      
      private function §3C§(param1:Array) : void
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
            for each(_loc4_ in this.§]+§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == §0#w§.§"#`§)
               {
                  _loc4_.status = §0#w§.§]9§;
                  §1%§.§`"H§.§ #x§(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§]+§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §[#u§(param1:§?!7§) : void
      {
         §1!Z§.splice(§1!Z§.indexOf(param1.data),1);
         this.§!!^§(param1);
         §0m§();
         this.§]+§.data = §1!Z§;
         this.scroll(this.§]+§.§=#V§);
         this.§[!P§();
         this.§7",§();
      }
      
      private function §!!^§(param1:§?!7§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§9#f§ = null;
         var _loc4_:URLRequest = null;
         if(§#"8§.indexOf(param1.data) != -1)
         {
            §#"8§.splice(§#"8§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §!!o§();
            _loc3_.addEventListener(Event.COMPLETE,this.§9#>§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§=#K§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#K§);
            _loc3_.addEventListener(§>5§.§@!@§,this.§=#K§);
            (_loc4_ = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §9#>§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.currentTarget && param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
         }
      }
      
      private function §^!§(param1:§?!7§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            § #v§.§1!!§.§+!r§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§,#l§.§`!x§(§,#l§.§,=§) != §,#l§.§<t§)
               {
                  (§7n§.§-$<§ as § #v§).§<z§(§`""§.§"!D§);
               }
            }
            else
            {
               (§7n§.§-$<§ as § #v§).§<z§(§`""§.§2"5§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§,#l§.§`!x§(§,#l§.§,=§) != §,#l§.§<t§)
            {
               § #v§.§1!!§.§1!L§(§3,§.STATE_NAME);
            }
         }
         else
         {
            § #v§.§1!!§.§1!L§(§;!H§.STATE_NAME);
         }
         this.§[#u§(param1);
         hide();
      }
      
      private function §!"$§(param1:MouseEvent) : void
      {
         this.§&r§.EasterEggButton4.visible = false;
         userProgress.§#y§("1000-4");
      }
      
      private function §>!H§(param1:MouseEvent) : void
      {
         this.scroll(-this.§]+§.§=#V§);
      }
      
      private function §4!a§(param1:MouseEvent) : void
      {
         this.scroll(this.§]+§.§=#V§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§]+§.scroll(param1);
            this.§[!P§();
         }
      }
      
      private function §[!P§() : void
      {
         var _loc1_:* = this.§]+§.offset != 0;
         var _loc2_:* = this.§]+§.offset != this.§]+§.data.length - this.§]+§.§=#V§;
         this.§&r§.btnUp.visible = _loc1_;
         this.§&r§.btnDown.visible = _loc2_;
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         §0m§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§1$8§ == this)
         {
            §1$8§ = null;
         }
         § !+§.§?!§("giftsSentToUsers",this.§3C§);
         this.§&!U§(this.§1!B§);
         this.§5"O§();
         this.§6$+§();
         this.§]+§.dispose();
         super.dispose();
      }
      
      private function § b§(param1:String, param2:int) : void
      {
         §0I§.§+"L§(param1,param2);
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
      
      private function §`"G§(param1:Event) : void
      {
         var _loc2_:Object = §%"?§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §%"?§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §0!8§)
         {
            _loc4_.result = false;
            dispatchEvent(new §?!7§(§?!7§.§9#3§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new §?!7§(§?!7§.§9#3§,_loc4_));
         }
      }
      
      private function §&H§(param1:Event) : void
      {
         §%"?§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new §?!7§(§?!7§.§9#3§,_loc2_));
      }
      
      private function §!!7§(param1:Boolean) : void
      {
         this.§6"4§.setEnabled(param1);
         this.§6"4§.setComponentState(param1 == true ? §+!2§.COMPONENT_STATE_ACTIVE_DEFAULT : §+!2§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§2#Q§(true);
               break;
            case "SEND_GIFTS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§#"l§.NORMAL,§]"Y§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
