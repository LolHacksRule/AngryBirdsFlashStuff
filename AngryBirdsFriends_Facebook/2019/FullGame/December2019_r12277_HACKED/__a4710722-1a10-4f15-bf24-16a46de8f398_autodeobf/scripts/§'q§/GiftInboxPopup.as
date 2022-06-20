package §'q§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.GiftFriendsPopup;
   import § h§.WarningPopup;
   import §&!A§.§7!8§;
   import §+!n§.§+!p§;
   import §,X§.§2"q§;
   import §-"S§.§>#G§;
   import §2$;§.§;!b§;
   import §2E§.§'@§;
   import §2E§.§]!P§;
   import §3#q§.§2!Z§;
   import §4$A§.§=$5§;
   import §7!3§.§-!>§;
   import §7"1§.§!"`§;
   import §7"1§.§"$D§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §7"1§.§="A§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §9x§.§1"^§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§!#?§;
   import §>#Y§.§2$8§;
   import §>#Y§.§6"k§;
   import §?_§.§9! §;
   import §[#A§.§&n§;
   import §[#v§.§4e§;
   import §]!4§.§=#c§;
   import §^1§.§@§;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §;"P§, §=$5§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §&#5§:int = 25;
      
      private static const §4"u§:Boolean = true;
      
      protected static var §3$#§:§5"f§;
      
      protected static var §,#7§:§5"f§;
      
      protected static var §8,§:Array;
      
      protected static var §!#m§:GiftInboxPopup;
      
      protected static var §3j§:Boolean;
      
      protected static var §-"d§:Array = [];
      
      private static var §%#r§:int = 0;
       
      
      protected var § 7§:§2!Z§;
      
      protected var §2$<§:Array;
      
      private var §1"w§:Wallet;
      
      private var §1x§:Boolean = false;
      
      private var §3`§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §@!5§:§;!b§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§2$<§ = [];
         super(param1,param2,§&n§.§7a§.Views.PopupView_GiftInbox[0],ID);
         this.§1x§ = param3;
      }
      
      public static function get §3"1§() : GiftInboxPopup
      {
         return §!#m§;
      }
      
      public static function §'!@§(param1:Boolean) : void
      {
         if(§3$#§)
         {
            return;
         }
         §3j§ = param1;
         §8,§ = [];
         §3$#§ = new §5"f§();
         §3$#§.addEventListener(Event.COMPLETE,§["W§);
         §3$#§.addEventListener(IOErrorEvent.IO_ERROR,§-$-§);
         §3$#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§-$-§);
         §3$#§.addEventListener(§;" §.§`S§,§-$-§);
         §3$#§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         §3$#§.load(_loc2_);
      }
      
      protected static function §-$-§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §3$#§ = null;
      }
      
      private static function §["W§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§?!y§ = null;
         var _loc2_:Object = §3$#§.data;
         §-"d§ = _loc2_.brags;
         §8,§ = _loc2_.gifts.concat(§-"d§);
         §3$#§ = null;
         if(§!#m§)
         {
            §!#m§.§;!V§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            §=#c§.§<!t§("flashDeleteRequest",_loc3_.r);
         }
         §=a§();
         if(§3j§ && §96§)
         {
            §3j§ = false;
            _loc4_ = new GiftInboxPopup(§-!S§.NORMAL,§## §.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §-"d§ = param1.brags;
         §8,§ = param1.gifts.concat(§-"d§);
         if(§!#m§)
         {
            §!#m§.§;!V§();
         }
      }
      
      public static function get §96§() : Boolean
      {
         return §8,§.length > 0;
      }
      
      public static function get §#!?§() : Boolean
      {
         return §3$#§ != null;
      }
      
      protected static function §=a§() : void
      {
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.§,&§(§6B§);
         }
      }
      
      public static function get §6B§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §8,§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §53§.§0"§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      override protected function init() : void
      {
         §!#m§ = this;
         if(this.§1x§)
         {
            §'!@§(false);
         }
         this.§ 7§ = new §2!Z§(678,285,§8,§ || [],§53§,5,10);
         this.§ 7§.scrollerSprite.x = 16;
         this.§ 7§.scrollerSprite.y = 111;
         this.§3`§ = §'o§.mClip;
         this.§3`§.mcContainer.addChild(this.§ 7§.scrollerSprite);
         this.§ use§();
         this.§5$-§();
         this.§@!5§ = §;!b§(§'o§.getItemByName("Button_ClaimAll"));
         if(§#!?§)
         {
            this.§3`§.mcStatuses.gotoAndStop(1);
         }
         else if(§8,§.length > 0)
         {
            this.§3`§.mcStatuses.visible = false;
         }
         else
         {
            this.§3`§.mcStatuses.gotoAndStop(2);
         }
         this.§-"A§();
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§3`§.mcContainer;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      private function § use§() : void
      {
         this.§2h§();
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§5!f§,this.§6$3§);
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§&#C§,this.§"f§);
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§"#8§,this.§-Q§);
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§4!Z§,this.§>6§);
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§9$8§,this.§<#!§);
         this.§ 7§.scrollerSprite.addEventListener(§2"q§.§1!D§,this.§##x§);
      }
      
      private function §2h§() : void
      {
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§5!f§,this.§6$3§);
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§&#C§,this.§"f§);
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§"#8§,this.§-Q§);
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§4!Z§,this.§>6§);
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§9$8§,this.§<#!§);
         this.§ 7§.scrollerSprite.removeEventListener(§2"q§.§1!D§,this.§##x§);
      }
      
      private function §5$-§() : void
      {
         this.§;!w§();
         this.§3`§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§3[§);
         this.§3`§.btnUp.addEventListener(MouseEvent.CLICK,this.§+y§);
         this.§3`§.btnDown.addEventListener(MouseEvent.CLICK,this.§`B§);
         this.§3`§.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
      }
      
      private function §;!w§() : void
      {
         this.§3`§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§3[§);
         this.§3`§.btnUp.removeEventListener(MouseEvent.CLICK,this.§+y§);
         this.§3`§.btnDown.removeEventListener(MouseEvent.CLICK,this.§`B§);
         this.§3`§.btnClose.removeEventListener(MouseEvent.CLICK,this.§1",§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§3"^§("1000-4"))
         {
            this.§3`§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§3`§.EasterEggButton4.visible = false;
         }
         this.§6"u§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§ "@§(_loc2_);
         §=#c§.addCallback("giftsSentToUsers",this.§4"?§);
      }
      
      public function §``§() : void
      {
         var _loc2_:Object = null;
         if(§,#7§)
         {
            return;
         }
         §%#r§ = 0;
         if(§8,§)
         {
            for each(_loc2_ in §8,§)
            {
               if(_loc2_.status && _loc2_.status == §53§.§0"§)
               {
                  ++§%#r§;
               }
            }
         }
         §,#7§ = new §5"f§();
         §,#7§.addEventListener(Event.COMPLETE,this.§@"Z§);
         §,#7§.addEventListener(ErrorEvent.ERROR,this.§9!?§);
         §,#7§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §,#7§.load(_loc1_);
      }
      
      private function §6$3§(param1:§2"q§) : void
      {
         this.§[#a§(§53§(param1.target),param1.data.uid);
         §'@§.§&"I§();
         §]!P§.§1!7§().§8!>§(1,false);
      }
      
      private function §"f§(param1:§2"q§) : void
      {
         §'@§.§1#2§();
         §]!P§.§1!7§().§8!>§(1,true);
         this.§[#a§(§53§(param1.target),null);
      }
      
      private function §-Q§(param1:§2"q§) : void
      {
         this.§[#a§(§53§(param1.target),null);
      }
      
      private function §[#a§(param1:§53§, param2:String) : void
      {
         param1.data.status = §53§.§;#n§;
         this.§6"u§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§3`§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§"7§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §"7§(param1:§53§, param2:String) : Function
      {
         var inboxItem:§53§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §53§.§@$-§;
            var _loc3_:* = new §5"f§();
            §2$<§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§6#]§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6#]§);
            _loc3_.addEventListener(§;" §.§`S§,§6#]§);
            var _loc4_:*;
            (_loc4_ = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §6#]§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§2$<§.length)
         {
            this.§2$<§[_loc3_].loader.close();
            this.§2$<§[_loc3_] = null;
            _loc3_++;
         }
         this.§2$<§.length = 0;
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
         var _loc11_:§-!>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2$<§.length)
         {
            if(this.§2$<§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §"$D§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§2$<§[_loc2_].data is Array ? this.§2$<§[_loc2_].data : [this.§2$<§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §53§.§!§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §53§.§0#Y§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §2$8§.§,"p§ && _loc10_.quantity > 0)
                     {
                        §'@§.§ "?§(§'@§.§<!g§,§2$8§.§,"p§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §'@§.§""N§(§'@§.§<!g§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §-!>§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §2$8§.§,"p§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§'#w§ = §]!P§.§#!X§;
                           break;
                        case "GIFT":
                           _loc11_.§'#w§ = §]!P§.§7$+§;
                           break;
                        default:
                           _loc11_.§'#w§ = §]!P§.§&#O§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     §=#c§.§<!t§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§##p§(_loc8_.content,_loc8_.quantity);
               }
               §!",§.§3"1§.§"#t§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§ 7§.refresh();
            this.§2$<§[_loc2_].loader.close();
            this.§2$<§[_loc2_] = null;
            this.§2$<§.splice(_loc2_,1);
            §=a§();
            _loc2_++;
            break;
         }
         this.§4"M§();
      }
      
      public function §;!V§() : void
      {
         this.§ 7§.data = §8,§;
         if(§8,§.length > 0)
         {
            this.§3`§.mcStatuses.visible = false;
            this.§4"M§();
         }
         else
         {
            this.§3`§.mcStatuses.gotoAndStop(2);
            this.§6"u§(false);
         }
         this.§-"A§();
      }
      
      private function §4"M§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§ 7§.data)
         {
            if(!_loc1_.status || _loc1_.status == §53§.§0"§)
            {
               if(!_loc1_.lvl)
               {
                  this.§6"u§(true);
                  break;
               }
            }
         }
      }
      
      private function §=$"§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§6"u§(false);
         this.§ 7§.§##d§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§ 7§.data)
         {
            if(_loc3_ && _loc3_.status == §53§.§0"§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new §2"q§(§2"q§.§'K§,_loc3_,true));
            }
         }
         this.§ 7§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§7!c§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §7!c§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §5"f§();
            §2$<§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§6#]§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6#]§);
            _loc3_.addEventListener(§;" §.§`S§,§6#]§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §'@§.§&"I§(mClaimedGiftsList.length);
            §]!P§.§1!7§().§8!>§(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §&#5§)
            {
               break;
            }
            if(§6"k§.§3"1§.§=#M§(this.mClaimedGiftsList[_loc3_].uid) && !§1"^§.§6f§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §'@§.§#H§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §]!P§.§1!7§().§1o§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §=#c§.§<!t§("updateSessionToken",§="A§.§<!9§);
            §=#c§.§<!t§("flashSendGiftFriend",userProgress.userName,_loc4_,§!#?§.§]!2§(§!#?§.§<y§));
         }
      }
      
      private function §>6§(param1:§2"q§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§1"^§.§6f§(param1) && §6"k§.§3"1§.§=#M§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §=#c§.§<!t§("updateSessionToken",§="A§.§<!9§);
            §=#c§.§<!t§("flashSendGiftFriend",userProgress.userName,param1,§!#?§.§]!2§(§!#?§.§<y§));
            §'@§.§#H§();
            §]!P§.§1!7§().§1o§(1,"REGIFT");
         }
      }
      
      private function §4"?§(param1:Array) : void
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
            for each(_loc4_ in this.§ 7§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == §53§.§!§)
               {
                  _loc4_.status = §53§.§0V§;
                  §6"k§.§3"1§.§`"5§(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§ 7§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §<#!§(param1:§2"q§) : void
      {
         §8,§.splice(§8,§.indexOf(param1.data),1);
         this.§6"Q§(param1);
         §=a§();
         this.§ 7§.data = §8,§;
         this.scroll(this.§ 7§.§-"7§);
         this.§-"A§();
         this.§4"M§();
      }
      
      private function §6"Q§(param1:§2"q§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§"$D§ = null;
         var _loc4_:URLRequest = null;
         if(§-"d§.indexOf(param1.data) != -1)
         {
            §-"d§.splice(§-"d§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §5"f§();
            _loc3_.addEventListener(Event.COMPLETE,this.§7!"§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§6#]§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6#]§);
            _loc3_.addEventListener(§;" §.§`S§,this.§6#]§);
            (_loc4_ = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §7!"§(param1:Event) : void
      {
         if(param1.currentTarget && param1.currentTarget.data)
         {
            param1.currentTarget.data;
         }
      }
      
      private function §##x§(param1:§2"q§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §^"a§.§9!h§.§[5§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§7!8§.§1"O§(§7!8§.§&$ §) != §7!8§.§'!N§)
               {
                  (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[@§);
               }
            }
            else
            {
               (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§5#O§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§7!8§.§1"O§(§7!8§.§&$ §) != §7!8§.§'!N§)
            {
               §^"a§.§9!h§.§%!?§(§@#4§.STATE_NAME);
            }
         }
         else
         {
            §^"a§.§9!h§.§%!?§(§4e§.STATE_NAME);
         }
         this.§<#!§(param1);
         hide();
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         this.§3`§.EasterEggButton4.visible = false;
         userProgress.§9#0§("1000-4");
      }
      
      private function §+y§(param1:MouseEvent) : void
      {
         this.scroll(-this.§ 7§.§-"7§);
      }
      
      private function §`B§(param1:MouseEvent) : void
      {
         this.scroll(this.§ 7§.§-"7§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§ 7§.scroll(param1);
            this.§-"A§();
         }
      }
      
      private function §-"A§() : void
      {
         var _loc1_:* = this.§ 7§.offset != 0;
         var _loc2_:* = this.§ 7§.offset != this.§ 7§.data.length - this.§ 7§.§-"7§;
         this.§3`§.btnUp.visible = _loc1_;
         this.§3`§.btnDown.visible = _loc2_;
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         §=a§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§!#m§ == this)
         {
            §!#m§ = null;
         }
         §=#c§.§`$ §("giftsSentToUsers",this.§4"?§);
         this.§+E§(this.§1"w§);
         this.§;!w§();
         this.§2h§();
         this.§ 7§.dispose();
         super.dispose();
      }
      
      private function §##p§(param1:String, param2:int) : void
      {
         §'@§.§0#i§(param1,param2);
      }
      
      public function §9M§() : String
      {
         return ID;
      }
      
      private function §@"Z§(param1:Event) : void
      {
         var _loc2_:Object = §,#7§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §,#7§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §%#r§)
         {
            _loc4_.result = false;
            dispatchEvent(new §2"q§(§2"q§.§2%§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new §2"q§(§2"q§.§2%§,_loc4_));
         }
      }
      
      private function §9!?§(param1:Event) : void
      {
         §,#7§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new §2"q§(§2"q§.§2%§,_loc2_));
      }
      
      private function §6"u§(param1:Boolean) : void
      {
         this.§@!5§.setEnabled(param1);
         this.§@!5§.setComponentState(param1 == true ? §;"k§.COMPONENT_STATE_ACTIVE_DEFAULT : §;"k§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§=$"§(true);
               break;
            case "SEND_GIFTS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§-!S§.NORMAL,§## §.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
