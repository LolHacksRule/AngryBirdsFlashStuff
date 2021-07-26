package §%$B§
{
   import § %§.§1Q§;
   import §"!@§.§>$<§;
   import §%!x§.§^!K§;
   import §&N§.§5#"§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §+$?§.§%!k§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§"G§;
   import §2G§.§&"+§;
   import §2G§.§-#+§;
   import §2G§.§9=§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3r§.§]!4§;
   import §5"7§.§+$"§;
   import §8!§.§!$1§;
   import §9#B§.§=!L§;
   import §9#J§.§&b§;
   import §;#D§.§3#U§;
   import §<h§.§>"0§;
   import §?P§.ErrorPopup;
   import §?P§.GiftFriendsPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§!"j§;
   import §@V§.§1"V§;
   import §@V§.§6"§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §`7§.§ try§;
   import §`7§.§`"x§;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §9#a§, §8#§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §+$&§:int = 25;
      
      private static const §3#+§:Boolean = true;
      
      protected static var § F§:§1"V§;
      
      protected static var §["8§:§1"V§;
      
      protected static var § #y§:Array;
      
      protected static var §!c§:GiftInboxPopup;
      
      protected static var §3l§:Boolean;
      
      protected static var §^j§:Array = [];
      
      private static var §4!7§:int = 0;
       
      
      protected var §4#A§:§!$1§;
      
      protected var §5!W§:Array;
      
      private var §&"K§:Wallet;
      
      private var §&#O§:Boolean = false;
      
      private var §0!Q§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §break§:§>"0§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§5!W§ = [];
         super(param1,param2,§1Q§.§5T§.Views.PopupView_GiftInbox[0],ID);
         this.§&#O§ = param3;
      }
      
      public static function get §6!§() : GiftInboxPopup
      {
         return §!c§;
      }
      
      public static function §8c§(param1:Boolean) : void
      {
         if(§ F§)
         {
            return;
         }
         §3l§ = param1;
         § #y§ = [];
         § F§ = new §1"V§();
         § F§.addEventListener(Event.COMPLETE,§?#&§);
         § F§.addEventListener(IOErrorEvent.IO_ERROR,§get §);
         § F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§get §);
         § F§.addEventListener(§;m§.§!$5§,§get §);
         § F§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         § F§.load(_loc2_);
      }
      
      protected static function §get §(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         § F§ = null;
      }
      
      private static function §?#&§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%#;§ = null;
         var _loc2_:Object = § F§.data;
         §^j§ = _loc2_.brags;
         § #y§ = _loc2_.gifts.concat(§^j§);
         § F§ = null;
         if(§!c§)
         {
            §!c§.§4!]§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            §^!K§.§+"D§("flashDeleteRequest",_loc3_.r);
         }
         §4o§();
         if(§3l§ && §9" §)
         {
            §3l§ = false;
            _loc4_ = new GiftInboxPopup(§]"$§.NORMAL,§^"U§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §^j§ = param1.brags;
         § #y§ = param1.gifts.concat(§^j§);
         if(§!c§)
         {
            §!c§.§4!]§();
         }
      }
      
      public static function get §9" §() : Boolean
      {
         return § #y§.length > 0;
      }
      
      public static function get §8R§() : Boolean
      {
         return § F§ != null;
      }
      
      protected static function §4o§() : void
      {
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.§+"_§(§`!7§);
         }
      }
      
      public static function get §`!7§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in § #y§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == § #a§.§27§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      override protected function init() : void
      {
         §!c§ = this;
         if(this.§&#O§)
         {
            §8c§(false);
         }
         this.§4#A§ = new §!$1§(678,285,§ #y§ || [],§ #a§,5,10);
         this.§4#A§.scrollerSprite.x = 16;
         this.§4#A§.scrollerSprite.y = 111;
         this.§0!Q§ = §,#2§.mClip;
         this.§0!Q§.mcContainer.addChild(this.§4#A§.scrollerSprite);
         this.§?$$§();
         this.§%"o§();
         this.§break§ = §>"0§(§,#2§.getItemByName("Button_ClaimAll"));
         if(§8R§)
         {
            this.§0!Q§.mcStatuses.gotoAndStop(1);
         }
         else if(§ #y§.length > 0)
         {
            this.§0!Q§.mcStatuses.visible = false;
         }
         else
         {
            this.§0!Q§.mcStatuses.gotoAndStop(2);
         }
         this.§0# §();
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§0!Q§.mcContainer;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      private function §?$$§() : void
      {
         this.§ !C§();
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§,#o§,this.§5!>§);
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§5"1§,this.§4!-§);
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§]!r§,this.§,!T§);
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§ null§,this.§`"+§);
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§6!h§,this.§""0§);
         this.§4#A§.scrollerSprite.addEventListener(§&b§.§!L§,this.§1!-§);
      }
      
      private function § !C§() : void
      {
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§,#o§,this.§5!>§);
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§5"1§,this.§4!-§);
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§]!r§,this.§,!T§);
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§ null§,this.§`"+§);
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§6!h§,this.§""0§);
         this.§4#A§.scrollerSprite.removeEventListener(§&b§.§!L§,this.§1!-§);
      }
      
      private function §%"o§() : void
      {
         this.§%j§();
         this.§0!Q§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§'"p§);
         this.§0!Q§.btnUp.addEventListener(MouseEvent.CLICK,this.§^!8§);
         this.§0!Q§.btnDown.addEventListener(MouseEvent.CLICK,this.§,!G§);
         this.§0!Q§.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
      }
      
      private function §%j§() : void
      {
         this.§0!Q§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§'"p§);
         this.§0!Q§.btnUp.removeEventListener(MouseEvent.CLICK,this.§^!8§);
         this.§0!Q§.btnDown.removeEventListener(MouseEvent.CLICK,this.§,!G§);
         this.§0!Q§.btnClose.removeEventListener(MouseEvent.CLICK,this.§="!§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§44§("1000-4"))
         {
            this.§0!Q§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§0!Q§.EasterEggButton4.visible = false;
         }
         this.§87§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§[?§(_loc2_);
         §^!K§.addCallback("giftsSentToUsers",this.§5$%§);
      }
      
      public function §^"7§() : void
      {
         var _loc2_:Object = null;
         if(§["8§)
         {
            return;
         }
         §4!7§ = 0;
         if(§ #y§)
         {
            for each(_loc2_ in § #y§)
            {
               if(_loc2_.status && _loc2_.status == § #a§.§27§)
               {
                  ++§4!7§;
               }
            }
         }
         §["8§ = new §1"V§();
         §["8§.addEventListener(Event.COMPLETE,this.§2#E§);
         §["8§.addEventListener(ErrorEvent.ERROR,this.§8!U§);
         §["8§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §["8§.load(_loc1_);
      }
      
      private function §5!>§(param1:§&b§) : void
      {
         this.§4!m§(§ #a§(param1.target),param1.data.uid);
         §`"x§.§ "^§();
         § try§.§!!t§().§?!^§(1,false);
      }
      
      private function §4!-§(param1:§&b§) : void
      {
         §`"x§.§0m§();
         § try§.§!!t§().§?!^§(1,true);
         this.§4!m§(§ #a§(param1.target),null);
      }
      
      private function §,!T§(param1:§&b§) : void
      {
         this.§4!m§(§ #a§(param1.target),null);
      }
      
      private function §4!m§(param1:§ #a§, param2:String) : void
      {
         param1.data.status = § #a§.§>! §;
         this.§87§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§0!Q§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§3#I§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §3#I§(param1:§ #a§, param2:String) : Function
      {
         var inboxItem:§ #a§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = § #a§.§8#E§;
            var _loc3_:* = new §1"V§();
            §5!W§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§,$B§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§,$B§);
            _loc3_.addEventListener(§;m§.§!$5§,§,$B§);
            var _loc4_:*;
            (_loc4_ = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §,$B§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!W§.length)
         {
            this.§5!W§[_loc3_].loader.close();
            this.§5!W§[_loc3_] = null;
            _loc3_++;
         }
         this.§5!W§.length = 0;
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
         var _loc11_:§+$"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!W§.length)
         {
            if(this.§5!W§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §6"§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§5!W§[_loc2_].data is Array ? this.§5!W§[_loc2_].data : [this.§5!W§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = § #a§.§5$3§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = § #a§.§=!R§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §"G§.§6!@§ && _loc10_.quantity > 0)
                     {
                        §`"x§.§[!d§(§`"x§.§[!H§,§"G§.§6!@§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §`"x§.§!`§(§`"x§.§[!H§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §+$"§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §"G§.§6!@§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§2>§ = § try§.§@""§;
                           break;
                        case "GIFT":
                           _loc11_.§2>§ = § try§.§""]§;
                           break;
                        default:
                           _loc11_.§2>§ = § try§.§3-§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     §^!K§.§+"D§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§3$2§(_loc8_.content,_loc8_.quantity);
               }
               _loc9_ = §-#+§.§6!§.§,"0§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§4#A§.refresh();
            this.§5!W§[_loc2_].loader.close();
            this.§5!W§[_loc2_] = null;
            this.§5!W§.splice(_loc2_,1);
            §4o§();
            _loc2_++;
            break;
         }
         this.§!!o§();
      }
      
      public function §4!]§() : void
      {
         this.§4#A§.data = § #y§;
         if(§ #y§.length > 0)
         {
            this.§0!Q§.mcStatuses.visible = false;
            this.§!!o§();
         }
         else
         {
            this.§0!Q§.mcStatuses.gotoAndStop(2);
            this.§87§(false);
         }
         this.§0# §();
      }
      
      private function §!!o§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§4#A§.data)
         {
            if(!_loc1_.status || _loc1_.status == § #a§.§27§)
            {
               if(!_loc1_.lvl)
               {
                  this.§87§(true);
               }
               continue;
               break;
            }
         }
      }
      
      private function §1I§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§87§(false);
         this.§4#A§.§<"p§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§4#A§.data)
         {
            if(_loc3_ && _loc3_.status == § #a§.§27§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new §&b§(§&b§.§"#$§,_loc3_,true));
            }
         }
         this.§4#A§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§,u§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §,u§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §1"V§();
            §5!W§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§,$B§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§,$B§);
            _loc3_.addEventListener(§;m§.§!$5§,§,$B§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §`"x§.§ "^§(mClaimedGiftsList.length);
            § try§.§!!t§().§?!^§(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §+$&§)
            {
               break;
            }
            if(§&"+§.§6!§.§^#n§(this.mClaimedGiftsList[_loc3_].uid) && !§%!k§.§@#A§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §`"x§.§@!'§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            § try§.§!!t§().§2m§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §^!K§.§+"D§("updateSessionToken",§!"j§.§-J§);
            §^!K§.§+"D§("flashSendGiftFriend",userProgress.userName,_loc4_,§9=§.§2#p§(§9=§.§0b§));
         }
      }
      
      private function §`"+§(param1:§&b§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§%!k§.§@#A§(param1) && §&"+§.§6!§.§^#n§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §^!K§.§+"D§("updateSessionToken",§!"j§.§-J§);
            §^!K§.§+"D§("flashSendGiftFriend",userProgress.userName,param1,§9=§.§2#p§(§9=§.§0b§));
            §`"x§.§@!'§();
            § try§.§!!t§().§2m§(1,"REGIFT");
         }
      }
      
      private function §5$%§(param1:Array) : void
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
            for each(_loc4_ in this.§4#A§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == § #a§.§5$3§)
               {
                  _loc4_.status = § #a§.§+#e§;
                  §&"+§.§6!§.§5#D§(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§4#A§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §""0§(param1:§&b§) : void
      {
         § #y§.splice(§ #y§.indexOf(param1.data),1);
         this.§+!Y§(param1);
         §4o§();
         this.§4#A§.data = § #y§;
         this.scroll(this.§4#A§.§,!a§);
         this.§0# §();
         this.§!!o§();
      }
      
      private function §+!Y§(param1:§&b§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§6"§ = null;
         var _loc4_:URLRequest = null;
         if(§^j§.indexOf(param1.data) != -1)
         {
            §^j§.splice(§^j§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §1"V§();
            _loc3_.addEventListener(Event.COMPLETE,this.§0#1§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§,$B§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,$B§);
            _loc3_.addEventListener(§;m§.§!$5§,this.§,$B§);
            (_loc4_ = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §0#1§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.currentTarget && param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
         }
      }
      
      private function §1!-§(param1:§&b§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §,A§.§2#O§.§&#!§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§5#"§.§+6§(§5#"§.§!#$§) != §5#"§.§2"r§)
               {
                  (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§0"7§);
               }
            }
            else
            {
               (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§5#"§.§+6§(§5#"§.§!#$§) != §5#"§.§2"r§)
            {
               §,A§.§2#O§.§1"h§(§>$<§.STATE_NAME);
            }
         }
         else
         {
            §,A§.§2#O§.§1"h§(§=!L§.STATE_NAME);
         }
         this.§""0§(param1);
         hide();
      }
      
      private function §'"p§(param1:MouseEvent) : void
      {
         this.§0!Q§.EasterEggButton4.visible = false;
         userProgress.§8$,§("1000-4");
      }
      
      private function §^!8§(param1:MouseEvent) : void
      {
         this.scroll(-this.§4#A§.§,!a§);
      }
      
      private function §,!G§(param1:MouseEvent) : void
      {
         this.scroll(this.§4#A§.§,!a§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§4#A§.scroll(param1);
            this.§0# §();
         }
      }
      
      private function §0# §() : void
      {
         var _loc1_:* = this.§4#A§.offset != 0;
         var _loc2_:* = this.§4#A§.offset != this.§4#A§.data.length - this.§4#A§.§,!a§;
         this.§0!Q§.btnUp.visible = _loc1_;
         this.§0!Q§.btnDown.visible = _loc2_;
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         §4o§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§!c§ == this)
         {
            §!c§ = null;
         }
         §^!K§.§,"i§("giftsSentToUsers",this.§5$%§);
         this.§8!3§(this.§&"K§);
         this.§%j§();
         this.§ !C§();
         this.§4#A§.dispose();
         super.dispose();
      }
      
      private function §3$2§(param1:String, param2:int) : void
      {
         §`"x§.§>!#§(param1,param2);
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
      
      private function §2#E§(param1:Event) : void
      {
         var _loc2_:Object = §["8§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §["8§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §4!7§)
         {
            _loc4_.result = false;
            dispatchEvent(new §&b§(§&b§.§#!E§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new §&b§(§&b§.§#!E§,_loc4_));
         }
      }
      
      private function §8!U§(param1:Event) : void
      {
         §["8§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new §&b§(§&b§.§#!E§,_loc2_));
      }
      
      private function §87§(param1:Boolean) : void
      {
         this.§break§.setEnabled(param1);
         this.§break§.setComponentState(param1 == true ? §,#[§.COMPONENT_STATE_ACTIVE_DEFAULT : §,#[§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§1I§(true);
               break;
            case "SEND_GIFTS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§]"$§.NORMAL,§^"U§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
