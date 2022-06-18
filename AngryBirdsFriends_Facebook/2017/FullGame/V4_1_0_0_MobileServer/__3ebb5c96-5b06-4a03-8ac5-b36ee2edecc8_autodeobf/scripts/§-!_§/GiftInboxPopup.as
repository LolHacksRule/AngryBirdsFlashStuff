package §-!_§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import § $%§.§5h§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.GiftFriendsPopup;
   import § o§.WarningPopup;
   import §%#A§.§,#w§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§"!F§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §&"J§.§9N§;
   import §+#t§.§>J§;
   import §-#U§.§ !y§;
   import §1#=§.§@#F§;
   import §1#W§.§!#&§;
   import §2F§.§>§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.§^!E§;
   import §8#D§.§=>§;
   import §94§.§-!c§;
   import §;#r§.§"g§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §8[§, §]"w§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §%#M§:int = 25;
      
      private static const §%v§:Boolean = true;
      
      protected static var § S§:§4"v§;
      
      protected static var §28§:§4"v§;
      
      protected static var §=#3§:Array;
      
      protected static var §%#b§:GiftInboxPopup;
      
      protected static var §8!E§:Boolean;
      
      protected static var §4?§:Array = [];
      
      private static var §<#_§:int = 0;
       
      
      protected var §1#X§:§@#F§;
      
      protected var §+`§:Array;
      
      private var §3!B§:Wallet;
      
      private var §,"T§:Boolean = false;
      
      private var §>"g§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §^!J§:§,#w§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§+`§ = [];
         super(param1,param2,§=>§.§%" §.Views.PopupView_GiftInbox[0],ID);
         this.§,"T§ = param3;
      }
      
      public static function get § "D§() : GiftInboxPopup
      {
         return §%#b§;
      }
      
      public static function §'5§(param1:Boolean) : void
      {
         if(§ S§)
         {
            return;
         }
         §8!E§ = param1;
         §=#3§ = [];
         § S§ = new §4"v§();
         § S§.addEventListener(Event.COMPLETE,§1#!§);
         § S§.addEventListener(IOErrorEvent.IO_ERROR,§!"K§);
         § S§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§!"K§);
         § S§.addEventListener(§]e§.§5!;§,§!"K§);
         § S§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         § S§.load(_loc2_);
      }
      
      protected static function §!"K§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         § S§ = null;
      }
      
      private static function §1#!§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!"<§ = null;
         var _loc2_:Object = § S§.data;
         §4?§ = _loc2_.brags;
         §=#3§ = _loc2_.gifts.concat(§4?§);
         § S§ = null;
         if(§%#b§)
         {
            §%#b§.§!"C§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            § "8§.§ "§("flashDeleteRequest",_loc3_.r);
         }
         §else§();
         if(§8!E§ && §9"H§)
         {
            §8!E§ = false;
            _loc4_ = new GiftInboxPopup(§%"!§.NORMAL,§^#o§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §4?§ = param1.brags;
         §=#3§ = param1.gifts.concat(§4?§);
         if(§%#b§)
         {
            §%#b§.§!"C§();
         }
      }
      
      public static function get §9"H§() : Boolean
      {
         return §=#3§.length > 0;
      }
      
      public static function get §"$1§() : Boolean
      {
         return § S§ != null;
      }
      
      protected static function §else§() : void
      {
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.§^7§(§,"O§);
         }
      }
      
      public static function get §,"O§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §=#3§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §?!]§.§9!7§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      override protected function init() : void
      {
         §%#b§ = this;
         if(this.§,"T§)
         {
            §'5§(false);
         }
         this.§1#X§ = new §@#F§(678,285,§=#3§ || [],§?!]§,5,10);
         this.§1#X§.scrollerSprite.x = 16;
         this.§1#X§.scrollerSprite.y = 111;
         this.§>"g§ = §1"6§.mClip;
         this.§>"g§.mcContainer.addChild(this.§1#X§.scrollerSprite);
         this.§[P§();
         this.§=#F§();
         this.§^!J§ = §,#w§(§1"6§.getItemByName("Button_ClaimAll"));
         if(§"$1§)
         {
            this.§>"g§.mcStatuses.gotoAndStop(1);
         }
         else if(§=#3§.length > 0)
         {
            this.§>"g§.mcStatuses.visible = false;
         }
         else
         {
            this.§>"g§.mcStatuses.gotoAndStop(2);
         }
         this.§,#g§();
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§>"g§.mcContainer;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      private function §[P§() : void
      {
         this.§ "p§();
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§#!,§,this.§2i§);
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§8$&§,this.§0f§);
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§@#,§,this.§6!T§);
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§]#'§,this.§!!Q§);
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§&"v§,this.§]"J§);
         this.§1#X§.scrollerSprite.addEventListener(§ !y§.§&o§,this.§6#l§);
      }
      
      private function § "p§() : void
      {
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§#!,§,this.§2i§);
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§8$&§,this.§0f§);
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§@#,§,this.§6!T§);
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§]#'§,this.§!!Q§);
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§&"v§,this.§]"J§);
         this.§1#X§.scrollerSprite.removeEventListener(§ !y§.§&o§,this.§6#l§);
      }
      
      private function §=#F§() : void
      {
         this.§4"E§();
         this.§>"g§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§+!z§);
         this.§>"g§.btnUp.addEventListener(MouseEvent.CLICK,this.§2!$§);
         this.§>"g§.btnDown.addEventListener(MouseEvent.CLICK,this.§4!Y§);
         this.§>"g§.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
      }
      
      private function §4"E§() : void
      {
         this.§>"g§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§+!z§);
         this.§>"g§.btnUp.removeEventListener(MouseEvent.CLICK,this.§2!$§);
         this.§>"g§.btnDown.removeEventListener(MouseEvent.CLICK,this.§4!Y§);
         this.§>"g§.btnClose.removeEventListener(MouseEvent.CLICK,this.§4#Y§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§#!V§("1000-4"))
         {
            this.§>"g§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§>"g§.EasterEggButton4.visible = false;
         }
         this.§>!h§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§##Y§(_loc2_);
         § "8§.addCallback("giftsSentToUsers",this.§?!q§);
      }
      
      public function § #W§() : void
      {
         var _loc2_:Object = null;
         if(§28§)
         {
            return;
         }
         §<#_§ = 0;
         if(§=#3§)
         {
            for each(_loc2_ in §=#3§)
            {
               if(_loc2_.status && _loc2_.status == §?!]§.§9!7§)
               {
                  ++§<#_§;
               }
            }
         }
         §28§ = new §4"v§();
         §28§.addEventListener(Event.COMPLETE,this.§]!O§);
         §28§.addEventListener(ErrorEvent.ERROR,this.§<"_§);
         §28§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §28§.load(_loc1_);
      }
      
      private function §2i§(param1:§ !y§) : void
      {
         this.§,@§(§?!]§(param1.target),param1.data.uid);
         §`"5§.§-"2§();
         §?!=§.§3!q§().§,$ §(1,false);
      }
      
      private function §0f§(param1:§ !y§) : void
      {
         §`"5§.§4#T§();
         §?!=§.§3!q§().§,$ §(1,true);
         this.§,@§(§?!]§(param1.target),null);
      }
      
      private function §6!T§(param1:§ !y§) : void
      {
         this.§,@§(§?!]§(param1.target),null);
      }
      
      private function §,@§(param1:§?!]§, param2:String) : void
      {
         param1.data.status = §?!]§.§4",§;
         this.§>!h§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§>"g§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§;"3§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §;"3§(param1:§?!]§, param2:String) : Function
      {
         var inboxItem:§?!]§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §?!]§.§2!K§;
            var _loc3_:* = new §4"v§();
            §+`§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§%#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%#_§);
            _loc3_.addEventListener(§]e§.§5!;§,§%#_§);
            var _loc4_:*;
            (_loc4_ = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §%#_§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§+`§.length)
         {
            this.§+`§[_loc3_].loader.close();
            this.§+`§[_loc3_] = null;
            _loc3_++;
         }
         this.§+`§.length = 0;
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
         var _loc11_:§"g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+`§.length)
         {
            if(this.§+`§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §0#`§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§+`§[_loc2_].data is Array ? this.§+`§[_loc2_].data : [this.§+`§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §?!]§.§,!7§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §?!]§.§&&§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §6$0§.§3#j§ && _loc10_.quantity > 0)
                     {
                        §`"5§.§'!;§(§`"5§.§>!!§,§6$0§.§3#j§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §`"5§.§"#D§(§`"5§.§>!!§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §"g§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §6$0§.§3#j§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§>"j§ = §?!=§.§%]§;
                           break;
                        case "GIFT":
                           _loc11_.§>"j§ = §?!=§.§ §;
                           break;
                        default:
                           _loc11_.§>"j§ = §?!=§.§<!B§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     § "8§.§ "§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§#!i§(_loc8_.content,_loc8_.quantity);
               }
               _loc9_ = §4"W§.§ "D§.§+#<§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§1#X§.refresh();
            this.§+`§[_loc2_].loader.close();
            this.§+`§[_loc2_] = null;
            this.§+`§.splice(_loc2_,1);
            §else§();
            _loc2_++;
            break;
         }
         this.§!"5§();
      }
      
      public function §!"C§() : void
      {
         this.§1#X§.data = §=#3§;
         if(§=#3§.length > 0)
         {
            this.§>"g§.mcStatuses.visible = false;
            this.§!"5§();
         }
         else
         {
            this.§>"g§.mcStatuses.gotoAndStop(2);
            this.§>!h§(false);
         }
         this.§,#g§();
      }
      
      private function §!"5§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§1#X§.data)
         {
            if(!_loc1_.status || _loc1_.status == §?!]§.§9!7§)
            {
               if(!_loc1_.lvl)
               {
                  this.§>!h§(true);
                  break;
               }
            }
         }
      }
      
      private function §0#N§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§>!h§(false);
         this.§1#X§.§]V§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§1#X§.data)
         {
            if(_loc3_ && _loc3_.status == §?!]§.§9!7§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new § !y§(§ !y§.§[#d§,_loc3_,true));
            }
         }
         this.§1#X§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§>!g§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §>!g§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §4"v§();
            §+`§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§%#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%#_§);
            _loc3_.addEventListener(§]e§.§5!;§,§%#_§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §`"5§.§-"2§(mClaimedGiftsList.length);
            §?!=§.§3!q§().§,$ §(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §%#M§)
            {
               break;
            }
            if(§"!F§.§ "D§.§=!F§(this.mClaimedGiftsList[_loc3_].uid) && !§>J§.§7!;§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §`"5§.§>$%§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §?!=§.§3!q§().§ ##§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            § "8§.§ "§("updateSessionToken",§5h§.§0#,§);
            § "8§.§ "§("flashSendGiftFriend",userProgress.userName,_loc4_,§9N§.§^"?§(§9N§.§ "^§));
         }
      }
      
      private function §!!Q§(param1:§ !y§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§>J§.§7!;§(param1) && §"!F§.§ "D§.§=!F§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            § "8§.§ "§("updateSessionToken",§5h§.§0#,§);
            § "8§.§ "§("flashSendGiftFriend",userProgress.userName,param1,§9N§.§^"?§(§9N§.§ "^§));
            §`"5§.§>$%§();
            §?!=§.§3!q§().§ ##§(1,"REGIFT");
         }
      }
      
      private function §?!q§(param1:Array) : void
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
            for each(_loc4_ in this.§1#X§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == §?!]§.§,!7§)
               {
                  _loc4_.status = §?!]§.§1$6§;
                  §"!F§.§ "D§.§<$$§(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§1#X§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §]"J§(param1:§ !y§) : void
      {
         §=#3§.splice(§=#3§.indexOf(param1.data),1);
         this.§]_§(param1);
         §else§();
         this.§1#X§.data = §=#3§;
         this.scroll(this.§1#X§.§0#?§);
         this.§,#g§();
         this.§!"5§();
      }
      
      private function §]_§(param1:§ !y§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§0#`§ = null;
         var _loc4_:URLRequest = null;
         if(§4?§.indexOf(param1.data) != -1)
         {
            §4?§.splice(§4?§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §4"v§();
            _loc3_.addEventListener(Event.COMPLETE,this.§+#u§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§%#_§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%#_§);
            _loc3_.addEventListener(§]e§.§5!;§,this.§%#_§);
            (_loc4_ = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §+#u§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.currentTarget && param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
         }
      }
      
      private function §6#l§(param1:§ !y§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §-#+§.§;!$§.§'"=§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§>#0§.§5f§(§>#0§.§%,§) != §>#0§.§2!]§)
               {
                  (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+"o§);
               }
            }
            else
            {
               (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+!q§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§>#0§.§5f§(§>#0§.§%,§) != §>#0§.§2!]§)
            {
               §-#+§.§;!$§.§5"p§(§-!c§.STATE_NAME);
            }
         }
         else
         {
            §-#+§.§;!$§.§5"p§(§^!E§.STATE_NAME);
         }
         this.§]"J§(param1);
         hide();
      }
      
      private function §+!z§(param1:MouseEvent) : void
      {
         this.§>"g§.EasterEggButton4.visible = false;
         userProgress.§%#k§("1000-4");
      }
      
      private function §2!$§(param1:MouseEvent) : void
      {
         this.scroll(-this.§1#X§.§0#?§);
      }
      
      private function §4!Y§(param1:MouseEvent) : void
      {
         this.scroll(this.§1#X§.§0#?§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§1#X§.scroll(param1);
            this.§,#g§();
         }
      }
      
      private function §,#g§() : void
      {
         var _loc1_:* = this.§1#X§.offset != 0;
         var _loc2_:* = this.§1#X§.offset != this.§1#X§.data.length - this.§1#X§.§0#?§;
         this.§>"g§.btnUp.visible = _loc1_;
         this.§>"g§.btnDown.visible = _loc2_;
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         §else§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§%#b§ == this)
         {
            §%#b§ = null;
         }
         § "8§.§+#R§("giftsSentToUsers",this.§?!q§);
         this.§"#H§(this.§3!B§);
         this.§4"E§();
         this.§ "p§();
         this.§1#X§.dispose();
         super.dispose();
      }
      
      private function §#!i§(param1:String, param2:int) : void
      {
         §`"5§.§=!#§(param1,param2);
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
      
      private function §]!O§(param1:Event) : void
      {
         var _loc2_:Object = §28§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §28§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §<#_§)
         {
            _loc4_.result = false;
            dispatchEvent(new § !y§(§ !y§.§=5§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new § !y§(§ !y§.§=5§,_loc4_));
         }
      }
      
      private function §<"_§(param1:Event) : void
      {
         §28§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new § !y§(§ !y§.§=5§,_loc2_));
      }
      
      private function §>!h§(param1:Boolean) : void
      {
         this.§^!J§.setEnabled(param1);
         this.§^!J§.setComponentState(param1 == true ? §@!N§.COMPONENT_STATE_ACTIVE_DEFAULT : §@!N§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§0#N§(true);
               break;
            case "SEND_GIFTS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§%"!§.NORMAL,§^#o§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
