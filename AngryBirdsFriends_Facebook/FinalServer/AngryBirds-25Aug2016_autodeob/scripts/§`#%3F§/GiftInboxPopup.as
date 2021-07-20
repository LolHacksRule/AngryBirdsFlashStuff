package §`#?§
{
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§0"F§;
   import §%$!§.§1#`§;
   import §%$!§.§=]§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §+"%§.§6X§;
   import §,n§.§`"d§;
   import §-"i§.§%!'§;
   import §2!X§.§?"D§;
   import §3!B§.§9##§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §;"z§.§'#b§;
   import §<!O§.§@#`§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.ErrorPopup;
   import §?"R§.GiftFriendsPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§9"+§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §@J§, §@#@§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §@s§:int = 25;
      
      private static const §!T§:Boolean = true;
      
      protected static var §=!^§:§5$!§;
      
      protected static var §[!L§:§5$!§;
      
      protected static var §4#`§:Array;
      
      protected static var §,!m§:GiftInboxPopup;
      
      protected static var §!I§:Boolean;
      
      protected static var §""d§:Array = [];
      
      private static var §]&§:int = 0;
       
      
      protected var §'#`§:§?"D§;
      
      protected var §##8§:Array;
      
      private var §^m§:Wallet;
      
      private var §+#k§:Boolean = false;
      
      private var §8!J§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §!4§:§=O§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§##8§ = [];
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_GiftInbox[0],ID);
         this.§+#k§ = param3;
      }
      
      public static function get §3!]§() : GiftInboxPopup
      {
         return §,!m§;
      }
      
      public static function §`!l§(param1:Boolean) : void
      {
         if(§=!^§)
         {
            return;
         }
         §!I§ = param1;
         §4#`§ = [];
         §=!^§ = new §5$!§();
         §=!^§.addEventListener(Event.COMPLETE,§^$%§);
         §=!^§.addEventListener(IOErrorEvent.IO_ERROR,§=#^§);
         §=!^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§=#^§);
         §=!^§.addEventListener(§>#J§.§-$%§,§=#^§);
         §=!^§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         §=!^§.load(_loc2_);
      }
      
      protected static function §=#^§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §=!^§ = null;
      }
      
      private static function §^$%§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§8!H§ = null;
         var _loc2_:Object = §=!^§.data;
         §""d§ = _loc2_.brags;
         §4#`§ = _loc2_.gifts.concat(§""d§);
         §=!^§ = null;
         if(§,!m§)
         {
            §,!m§.§!#H§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            §6X§.§3U§("flashDeleteRequest",_loc3_.r);
         }
         §5#s§();
         if(§!I§ && §5$9§)
         {
            §!I§ = false;
            _loc4_ = new GiftInboxPopup(§[W§.NORMAL,§<d§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §""d§ = param1.brags;
         §4#`§ = param1.gifts.concat(§""d§);
         if(§,!m§)
         {
            §,!m§.§!#H§();
         }
      }
      
      public static function get §5$9§() : Boolean
      {
         return §4#`§.length > 0;
      }
      
      public static function get §-#!§() : Boolean
      {
         return §=!^§ != null;
      }
      
      protected static function §5#s§() : void
      {
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.§4!$§(§0n§);
         }
      }
      
      public static function get §0n§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §4#`§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §8x§.§0!^§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      override protected function init() : void
      {
         §,!m§ = this;
         if(this.§+#k§)
         {
            §`!l§(false);
         }
         this.§'#`§ = new §?"D§(678,285,§4#`§ || [],§8x§,5,10);
         this.§'#`§.scrollerSprite.x = 16;
         this.§'#`§.scrollerSprite.y = 111;
         this.§8!J§ = §7!j§.mClip;
         this.§8!J§.mcContainer.addChild(this.§'#`§.scrollerSprite);
         this.§?!V§();
         this.§4"Q§();
         this.§!4§ = §=O§(§7!j§.getItemByName("Button_ClaimAll"));
         if(§-#!§)
         {
            this.§8!J§.mcStatuses.gotoAndStop(1);
         }
         else if(§4#`§.length > 0)
         {
            this.§8!J§.mcStatuses.visible = false;
         }
         else
         {
            this.§8!J§.mcStatuses.gotoAndStop(2);
         }
         this.§%"v§();
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§8!J§.mcContainer;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      private function §?!V§() : void
      {
         this.§#!E§();
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§5#^§,this.§%!q§);
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§?"§,this.§>L§);
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§4#u§,this.§4`§);
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§!>§,this.§+8§);
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§+P§,this.§<!b§);
         this.§'#`§.scrollerSprite.addEventListener(§'#b§.§&!O§,this.§5"f§);
      }
      
      private function §#!E§() : void
      {
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§5#^§,this.§%!q§);
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§?"§,this.§>L§);
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§4#u§,this.§4`§);
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§!>§,this.§+8§);
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§+P§,this.§<!b§);
         this.§'#`§.scrollerSprite.removeEventListener(§'#b§.§&!O§,this.§5"f§);
      }
      
      private function §4"Q§() : void
      {
         this.§7I§();
         this.§8!J§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§+"c§);
         this.§8!J§.btnUp.addEventListener(MouseEvent.CLICK,this.§ a§);
         this.§8!J§.btnDown.addEventListener(MouseEvent.CLICK,this.§0!u§);
         this.§8!J§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
      }
      
      private function §7I§() : void
      {
         this.§8!J§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§+"c§);
         this.§8!J§.btnUp.removeEventListener(MouseEvent.CLICK,this.§ a§);
         this.§8!J§.btnDown.removeEventListener(MouseEvent.CLICK,this.§0!u§);
         this.§8!J§.btnClose.removeEventListener(MouseEvent.CLICK,this.§'#p§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§9"C§("1000-4"))
         {
            this.§8!J§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§8!J§.EasterEggButton4.visible = false;
         }
         this.§^"o§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§%#,§(_loc2_);
         §6X§.addCallback("giftsSentToUsers",this.§""Y§);
      }
      
      public function §;#%§() : void
      {
         var _loc2_:Object = null;
         if(§[!L§)
         {
            return;
         }
         §]&§ = 0;
         if(§4#`§)
         {
            for each(_loc2_ in §4#`§)
            {
               if(_loc2_.status && _loc2_.status == §8x§.§0!^§)
               {
                  ++§]&§;
               }
            }
         }
         §[!L§ = new §5$!§();
         §[!L§.addEventListener(Event.COMPLETE,this.§#!&§);
         §[!L§.addEventListener(ErrorEvent.ERROR,this.§=#J§);
         §[!L§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §[!L§.load(_loc1_);
      }
      
      private function §%!q§(param1:§'#b§) : void
      {
         this.§20§(§8x§(param1.target),param1.data.i);
         §,"W§.§=u§();
         §-#A§.§6$2§().§&!j§(1,false);
      }
      
      private function §>L§(param1:§'#b§) : void
      {
         §,"W§.§=!w§();
         §-#A§.§6$2§().§&!j§(1,true);
         this.§20§(§8x§(param1.target),null);
      }
      
      private function §4`§(param1:§'#b§) : void
      {
         this.§20§(§8x§(param1.target),null);
      }
      
      private function §20§(param1:§8x§, param2:String) : void
      {
         param1.data.status = §8x§.§3i§;
         this.§^"o§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§8!J§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§4k§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §4k§(param1:§8x§, param2:String) : Function
      {
         var inboxItem:§8x§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §8x§.§+"Y§;
            var _loc3_:* = new §5$!§();
            §##8§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§4#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§4#_§);
            _loc3_.addEventListener(§>#J§.§-$%§,§4#_§);
            var _loc4_:*;
            (_loc4_ = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §4#_§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
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
         var _loc11_:§9##§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§##8§.length)
         {
            if(this.§##8§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §5$5§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§##8§[_loc2_].data is Array ? this.§##8§[_loc2_].data : [this.§##8§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §8x§.§`!=§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §8x§.§2!d§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §=]§.§;Q§ && _loc10_.quantity > 0)
                     {
                        §,"W§.§'&§(§,"W§.§"v§,§=]§.§;Q§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §,"W§.§!#k§(§,"W§.§"v§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §9##§()).§;"O§ = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §=]§.§;Q§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.gainType = §-#A§.§!<§;
                           break;
                        case "GIFT":
                           _loc11_.gainType = §-#A§.§1#D§;
                           break;
                        default:
                           _loc11_.gainType = §-#A§.§ 2§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     §6X§.§3U§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§=B§(_loc8_.content,_loc8_.quantity);
               }
            }
            continue;
            §%h§.§3!]§.§1!0§(_loc3_.items,false,_loc7_);
            this.§'#`§.refresh();
            this.§##8§.splice(_loc2_,1);
            §5#s§();
            _loc2_++;
            break;
         }
         this.§<!P§();
      }
      
      public function §!#H§() : void
      {
         this.§'#`§.data = §4#`§;
         if(§4#`§.length > 0)
         {
            this.§8!J§.mcStatuses.visible = false;
            this.§<!P§();
         }
         else
         {
            this.§8!J§.mcStatuses.gotoAndStop(2);
            this.§^"o§(false);
         }
         this.§%"v§();
      }
      
      private function §<!P§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§'#`§.data)
         {
            if(!_loc1_.status || _loc1_.status == §8x§.§0!^§)
            {
               if(!_loc1_.lvl)
               {
                  this.§^"o§(true);
               }
               continue;
               break;
            }
         }
      }
      
      private function §+"[§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§^"o§(false);
         this.§'#`§.§8!6§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§'#`§.data)
         {
            if(_loc3_ && _loc3_.status == §8x§.§0!^§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new §'#b§(§'#b§.§#!`§,_loc3_,true));
            }
         }
         this.§'#`§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§4"T§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §4"T§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §5$!§();
            §##8§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§4#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§4#_§);
            _loc3_.addEventListener(§>#J§.§-$%§,§4#_§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §,"W§.§=u§(mClaimedGiftsList.length);
            §-#A§.§6$2§().§&!j§(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §@s§)
            {
               break;
            }
            if(§1#`§.§3!]§.§"",§(this.mClaimedGiftsList[_loc3_].i) && !§`"d§.§0Y§(this.mClaimedGiftsList[_loc3_].i))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].i);
               §,"W§.§'$5§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §-#A§.§6$2§().§#!6§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §6X§.§3U§("updateSessionToken",§9"+§.§"C§);
            §6X§.§3U§("flashSendGiftFriend",userProgress.userName,_loc4_,§0"F§.§7#"§(§0"F§.§31§));
         }
      }
      
      private function §+8§(param1:§'#b§) : void
      {
         this.sendBackGift(param1.data.i);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§`"d§.§0Y§(param1) && §1#`§.§3!]§.§"",§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §6X§.§3U§("updateSessionToken",§9"+§.§"C§);
            §6X§.§3U§("flashSendGiftFriend",userProgress.userName,param1,§0"F§.§7#"§(§0"F§.§31§));
            §,"W§.§'$5§();
            §-#A§.§6$2§().§#!6§(1,"REGIFT");
         }
      }
      
      private function §""Y§(param1:Array) : void
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
            for each(_loc4_ in this.§'#`§.data)
            {
               if(_loc3_ == _loc4_.i && _loc4_.status == §8x§.§`!=§)
               {
                  _loc4_.status = §8x§.§[$$§;
                  §1#`§.§3!]§.§3!9§(_loc4_.i);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§'#`§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §<!b§(param1:§'#b§) : void
      {
         §4#`§.splice(§4#`§.indexOf(param1.data),1);
         this.§,"l§(param1);
         §5#s§();
         this.§'#`§.data = §4#`§;
         this.scroll(this.§'#`§.§9!D§);
         this.§%"v§();
         this.§<!P§();
      }
      
      private function §,"l§(param1:§'#b§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§5$5§ = null;
         var _loc4_:URLRequest = null;
         if(§""d§.indexOf(param1.data) != -1)
         {
            §""d§.splice(§""d§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §5$!§();
            _loc3_.addEventListener(Event.COMPLETE,this.§3$&§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§4#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4#_§);
            _loc3_.addEventListener(§>#J§.§-$%§,this.§4#_§);
            (_loc4_ = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §3$&§(param1:Event) : void
      {
         if(param1.currentTarget && param1.currentTarget.data)
         {
            param1.currentTarget.data;
         }
      }
      
      private function §5"f§(param1:§'#b§) : void
      {
         if(param1.data.lvl.indexOf("2000-") == -1)
         {
            (§>"$§.§<_§ as §8G§).§&#§.§!A§(false,false);
            (§>"$§.§<_§ as §8G§).§&#§.§`"n§(true);
         }
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §8G§.§%#S§.§<#m§(param1.data.lvl);
         }
         else if(param1.data.lvl.indexOf("2000-") > -1)
         {
            §8G§.§%#S§.§7P§(§%!'§.STATE_NAME);
         }
         this.§<!b§(param1);
         hide();
      }
      
      private function §+"c§(param1:MouseEvent) : void
      {
         this.§8!J§.EasterEggButton4.visible = false;
         userProgress.§ R§("1000-4");
      }
      
      private function § a§(param1:MouseEvent) : void
      {
         this.scroll(-this.§'#`§.§9!D§);
      }
      
      private function §0!u§(param1:MouseEvent) : void
      {
         this.scroll(this.§'#`§.§9!D§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§'#`§.scroll(param1);
            this.§%"v§();
         }
      }
      
      private function §%"v§() : void
      {
         var _loc1_:* = this.§'#`§.offset != 0;
         var _loc2_:* = this.§'#`§.offset != this.§'#`§.data.length - this.§'#`§.§9!D§;
         this.§8!J§.btnUp.visible = _loc1_;
         this.§8!J§.btnDown.visible = _loc2_;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         §5#s§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§,!m§ == this)
         {
            §,!m§ = null;
         }
         §6X§.§5!3§("giftsSentToUsers",this.§""Y§);
         this.§]"]§(this.§^m§);
         this.§7I§();
         this.§#!E§();
         this.§'#`§.dispose();
         super.dispose();
      }
      
      private function §=B§(param1:String, param2:int) : void
      {
         §,"W§.§"!`§(param1,param2);
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
      
      private function §#!&§(param1:Event) : void
      {
         var _loc2_:Object = §[!L§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §[!L§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §]&§)
         {
            _loc4_.result = false;
            dispatchEvent(new §'#b§(§'#b§.§<!$§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new §'#b§(§'#b§.§<!$§,_loc4_));
         }
      }
      
      private function §=#J§(param1:Event) : void
      {
         §[!L§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new §'#b§(§'#b§.§<!$§,_loc2_));
      }
      
      private function §^"o§(param1:Boolean) : void
      {
         this.§!4§.setEnabled(param1);
         this.§!4§.setComponentState(param1 == true ? §4P§.COMPONENT_STATE_ACTIVE_DEFAULT : §4P§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§+"[§(true);
               break;
            case "SEND_GIFTS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§[W§.NORMAL,§<d§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
