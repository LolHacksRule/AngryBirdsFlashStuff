package §=#`§
{
   import § "L§.§1"r§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §!!L§.§ !8§;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §&=§.§<#V§;
   import §+W§.§'!e§;
   import §,#,§.§4!g§;
   import §,#,§.§>#g§;
   import §,#,§.§@§;
   import §,#,§.§]§;
   import §2G§.§"A§;
   import §3"V§.§ b§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§1!Y§;
   import §4S§.§?#l§;
   import §4S§.§@§;
   import §7"&§.§1k§;
   import §>!f§.§>#-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.GiftFriendsPopup;
   import §?Q§.WarningPopup;
   import §]§.§`!^§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`O§.§[f§;
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
   
   public class GiftInboxPopup extends AbstractPopup implements §+#?§, §1k§
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const §!#U§:int = 25;
      
      private static const §#!8§:Boolean = true;
      
      protected static var §>#E§:§-$C§;
      
      protected static var §>8§:§-$C§;
      
      protected static var §["#§:Array;
      
      protected static var §+#!§:GiftInboxPopup;
      
      protected static var §>"y§:Boolean;
      
      protected static var §>#D§:Array = [];
      
      private static var §=!d§:int = 0;
       
      
      protected var §+""§:§'!e§;
      
      protected var §1"6§:Array;
      
      private var §"#W§:Wallet;
      
      private var §3#a§:Boolean = false;
      
      private var §8#M§:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var §]2§:§1"r§;
      
      public function GiftInboxPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§1"6§ = [];
         super(param1,param2,§false§.§4#;§.Views.PopupView_GiftInbox[0],ID);
         this.§3#a§ = param3;
      }
      
      public static function get §+!,§() : GiftInboxPopup
      {
         return §+#!§;
      }
      
      public static function §=k§(param1:Boolean) : void
      {
         if(§>#E§)
         {
            return;
         }
         §>"y§ = param1;
         §["#§ = [];
         §>#E§ = new §-$C§();
         §>#E§.addEventListener(Event.COMPLETE,§>$?§);
         §>#E§.addEventListener(IOErrorEvent.IO_ERROR,§1!J§);
         §>#E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§1!J§);
         §>#E§.addEventListener(§+!p§.§2$9§,§1!J§);
         §>#E§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         §>#E§.load(_loc2_);
      }
      
      protected static function §1!J§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         §>#E§ = null;
      }
      
      private static function §>$?§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§,#@§ = null;
         var _loc2_:Object = §>#E§.data;
         §>#D§ = _loc2_.brags;
         §["#§ = _loc2_.gifts.concat(§>#D§);
         §>#E§ = null;
         if(§+#!§)
         {
            §+#!§.§?"H§();
         }
         for each(_loc3_ in _loc2_.brags)
         {
            §7!b§.§7@§("flashDeleteRequest",_loc3_.r);
         }
         §!"H§();
         if(§>"y§ && §+"F§)
         {
            §>"y§ = false;
            _loc4_ = new GiftInboxPopup(§@#D§.NORMAL,§5R§.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         §>#D§ = param1.brags;
         §["#§ = param1.gifts.concat(§>#D§);
         if(§+#!§)
         {
            §+#!§.§?"H§();
         }
      }
      
      public static function get §+"F§() : Boolean
      {
         return §["#§.length > 0;
      }
      
      public static function get §9$$§() : Boolean
      {
         return §>#E§ != null;
      }
      
      protected static function §!"H§() : void
      {
         if((§]$?§.§;u§ as §@z§).§8!;§)
         {
            (§]$?§.§;u§ as §@z§).§8!;§.§'[§(§+#G§);
         }
      }
      
      public static function get §+#G§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §["#§)
         {
            if(_loc2_.lvl)
            {
               _loc1_++;
            }
            else if(!_loc2_.status || _loc2_.status == §6#k§.§0g§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      override protected function init() : void
      {
         §+#!§ = this;
         if(this.§3#a§)
         {
            §=k§(false);
         }
         this.§+""§ = new §'!e§(678,285,§["#§ || [],§6#k§,5,10);
         this.§+""§.scrollerSprite.x = 16;
         this.§+""§.scrollerSprite.y = 111;
         this.§8#M§ = §;#'§.mClip;
         this.§8#M§.mcContainer.addChild(this.§+""§.scrollerSprite);
         this.§1G§();
         this.§<#d§();
         this.§]2§ = §1"r§(§;#'§.getItemByName("Button_ClaimAll"));
         if(§9$$§)
         {
            this.§8#M§.mcStatuses.gotoAndStop(1);
         }
         else if(§["#§.length > 0)
         {
            this.§8#M§.mcStatuses.visible = false;
         }
         else
         {
            this.§8#M§.mcStatuses.gotoAndStop(2);
         }
         this.§?#p§();
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§8#M§.mcContainer;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      private function §1G§() : void
      {
         this.§@"5§();
         this.§+""§.scrollerSprite.addEventListener(§[f§.§@=§,this.§&m§);
         this.§+""§.scrollerSprite.addEventListener(§[f§.§!"L§,this.§1"]§);
         this.§+""§.scrollerSprite.addEventListener(§[f§.§0!'§,this.§9!G§);
         this.§+""§.scrollerSprite.addEventListener(§[f§.§@$A§,this.§<q§);
         this.§+""§.scrollerSprite.addEventListener(§[f§.§+!k§,this.§%#2§);
         this.§+""§.scrollerSprite.addEventListener(§[f§.§5!"§,this.§1%§);
      }
      
      private function §@"5§() : void
      {
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§@=§,this.§&m§);
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§!"L§,this.§1"]§);
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§0!'§,this.§9!G§);
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§@$A§,this.§<q§);
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§+!k§,this.§%#2§);
         this.§+""§.scrollerSprite.removeEventListener(§[f§.§5!"§,this.§1%§);
      }
      
      private function §<#d§() : void
      {
         this.§1#v§();
         this.§8#M§.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§=!o§);
         this.§8#M§.btnUp.addEventListener(MouseEvent.CLICK,this.§4"0§);
         this.§8#M§.btnDown.addEventListener(MouseEvent.CLICK,this.§5#G§);
         this.§8#M§.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
      }
      
      private function §1#v§() : void
      {
         this.§8#M§.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§=!o§);
         this.§8#M§.btnUp.removeEventListener(MouseEvent.CLICK,this.§4"0§);
         this.§8#M§.btnDown.removeEventListener(MouseEvent.CLICK,this.§5#G§);
         this.§8#M§.btnClose.removeEventListener(MouseEvent.CLICK,this.§,!<§);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!userProgress.§`p§("1000-4"))
         {
            this.§8#M§.EasterEggButton4.visible = true;
         }
         else
         {
            this.§8#M§.EasterEggButton4.visible = false;
         }
         this.§'S§(false);
         var _loc2_:Wallet = new Wallet(this);
         this.§6"h§(_loc2_);
         §7!b§.addCallback("giftsSentToUsers",this.§4"y§);
      }
      
      public function §"T§() : void
      {
         var _loc2_:Object = null;
         if(§>8§)
         {
            return;
         }
         §=!d§ = 0;
         if(§["#§)
         {
            for each(_loc2_ in §["#§)
            {
               if(_loc2_.status && _loc2_.status == §6#k§.§0g§)
               {
                  ++§=!d§;
               }
            }
         }
         §>8§ = new §-$C§();
         §>8§.addEventListener(Event.COMPLETE,this.§'D§);
         §>8§.addEventListener(ErrorEvent.ERROR,this.§<x§);
         §>8§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         §>8§.load(_loc1_);
      }
      
      private function §&m§(param1:§[f§) : void
      {
         this.§5" §(§6#k§(param1.target),param1.data.uid);
         §<"G§.§1#Z§();
         §3";§.§#"'§().§`#N§(1,false);
      }
      
      private function §1"]§(param1:§[f§) : void
      {
         §<"G§.§1!w§();
         §3";§.§#"'§().§`#N§(1,true);
         this.§5" §(§6#k§(param1.target),null);
      }
      
      private function §9!G§(param1:§[f§) : void
      {
         this.§5" §(§6#k§(param1.target),null);
      }
      
      private function §5" §(param1:§6#k§, param2:String) : void
      {
         param1.data.status = §6#k§.§`#w§;
         this.§'S§(false);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            this.§8#M§.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,param1.y + 140 + Math.random() * 20));
            _loc4_++;
         }
         var _loc5_:Timer;
         (_loc5_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§]`§(param1,param2),false,0,true);
         _loc5_.start();
      }
      
      private function §]`§(param1:§6#k§, param2:String) : Function
      {
         var inboxItem:§6#k§ = param1;
         var sendGiftBackToFBUserId:String = param2;
         return function(param1:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = §6#k§.§7I§;
            var _loc3_:* = new §-$C§();
            §1"6§.push({
               "loader":_loc3_,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§<#z§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§<#z§);
            _loc3_.addEventListener(§+!p§.§2$9§,§<#z§);
            var _loc4_:*;
            (_loc4_ = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc4_.contentType = "application/json";
            _loc4_.data = JSON.stringify([inboxItem.data.r]);
            _loc3_.load(_loc4_);
            sendBackGift(sendGiftBackToFBUserId);
            param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function §<#z§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this.§1"6§.length)
         {
            this.§1"6§[_loc3_].loader.close();
            this.§1"6§[_loc3_] = null;
            _loc3_++;
         }
         this.§1"6§.length = 0;
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
         var _loc11_:§<#V§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"6§.length)
         {
            if(this.§1"6§[_loc2_].loader == param1.target)
            {
               _loc3_ = (param1.target as §4S§.§@#1§).data;
               _loc4_ = _loc3_.fbGiftRequests;
               _loc5_ = this.§1"6§[_loc2_].data is Array ? this.§1"6§[_loc2_].data : [this.§1"6§[_loc2_].data];
               _loc6_ = 0;
               _loc7_ = null;
               for each(_loc8_ in _loc5_)
               {
                  _loc8_.status = §6#k§.§;#8§;
                  if(_loc3_.errorCode)
                  {
                     _loc8_.status = §6#k§.§7#j§;
                     _loc8_.error = _loc3_.errorMessage;
                  }
                  if(_loc6_ < _loc4_.length)
                  {
                     if((_loc10_ = _loc4_[_loc6_]).itemId == §>#g§.§=-§ && _loc10_.quantity > 0)
                     {
                        §<"G§.§%!V§(§<"G§.§8"0§,§>#g§.§=-§,_loc10_.quantity);
                     }
                     else if(_loc10_.quantity > 0)
                     {
                        §<"G§.§16§(§<"G§.§8"0§,_loc10_.itemId,_loc10_.quantity);
                     }
                     _loc8_.itemId = _loc10_.itemId;
                     _loc8_.quantity = _loc10_.quantity;
                     (_loc11_ = new §<#V§()).screen = ID;
                     _loc11_.amount = _loc8_.quantity;
                     if(_loc10_.itemId == §>#g§.§=-§ && _loc10_.quantity > 0)
                     {
                        _loc11_.currency = "IVC";
                     }
                     _loc11_.itemType = _loc10_.itemId;
                     switch(_loc8_.t)
                     {
                        case "INVITATION":
                           _loc11_.§]#=§ = §3";§.§?O§;
                           break;
                        case "GIFT":
                           _loc11_.§]#=§ = §3";§.§=$0§;
                           break;
                        default:
                           _loc11_.§]#=§ = §3";§.§]4§;
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new Array();
                     }
                     _loc7_.push(_loc11_);
                     §7!b§.§7@§("flashDeleteRequest",_loc10_.facebookRequestId);
                     _loc6_++;
                  }
                  this.§?"]§(_loc8_.content,_loc8_.quantity);
               }
               _loc9_ = §]#0§.§+!,§.§&$@§(_loc3_.items,false,_loc7_);
            }
            continue;
            this.§+""§.refresh();
            this.§1"6§[_loc2_].loader.close();
            this.§1"6§[_loc2_] = null;
            this.§1"6§.splice(_loc2_,1);
            §!"H§();
            _loc2_++;
            break;
         }
         this.§-"§();
      }
      
      public function §?"H§() : void
      {
         this.§+""§.data = §["#§;
         if(§["#§.length > 0)
         {
            this.§8#M§.mcStatuses.visible = false;
            this.§-"§();
         }
         else
         {
            this.§8#M§.mcStatuses.gotoAndStop(2);
            this.§'S§(false);
         }
         this.§?#p§();
      }
      
      private function §-"§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§+""§.data)
         {
            if(!_loc1_.status || _loc1_.status == §6#k§.§0g§)
            {
               if(!_loc1_.lvl)
               {
                  this.§'S§(true);
                  break;
               }
            }
         }
      }
      
      private function §="8§(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Timer = null;
         this.§'S§(false);
         this.§+""§.§^!6§();
         this.mClaimedGiftsList = new Array();
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§+""§.data)
         {
            if(_loc3_ && _loc3_.status == §6#k§.§0g§)
            {
               this.mClaimedGiftsList.push(_loc3_);
               _loc2_.push(_loc3_);
               dispatchEvent(new §[f§(§[f§.§@8§,_loc3_,true));
            }
         }
         this.§+""§.updatePositions();
         (_loc4_ = new Timer(500,1)).addEventListener(TimerEvent.TIMER_COMPLETE,this.§&!=§(param1,_loc2_),false,0,true);
         _loc4_.start();
      }
      
      private function §&!=§(param1:Boolean, param2:Array) : Function
      {
         var sendGiftBack:Boolean = param1;
         var claimedGiftsListLocal:Array = param2;
         return function(param1:TimerEvent):void
         {
            var _loc3_:* = new §-$C§();
            §1"6§.push({
               "loader":_loc3_,
               "data":claimedGiftsListLocal
            });
            _loc3_.addEventListener(Event.COMPLETE,onGiftClaimed);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§<#z§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§<#z§);
            _loc3_.addEventListener(§+!p§.§2$9§,§<#z§);
            var _loc4_:* = new Array();
            var _loc5_:* = 0;
            while(_loc5_ < mClaimedGiftsList.length)
            {
               _loc4_.push(mClaimedGiftsList[_loc5_].r);
               _loc5_++;
            }
            var _loc6_:*;
            (_loc6_ = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/")).method = URLRequestMethod.POST;
            _loc6_.contentType = "application/json";
            _loc6_.data = JSON.stringify(_loc4_);
            _loc3_.load(_loc6_);
            §<"G§.§1#Z§(mClaimedGiftsList.length);
            §3";§.§#"'§().§`#N§(mClaimedGiftsList.length,!sendGiftBack);
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
            if(_loc2_ >= §!#U§)
            {
               break;
            }
            if(§4!g§.§+!,§.§8$§(this.mClaimedGiftsList[_loc3_].uid) && !§"A§.§<$!§(this.mClaimedGiftsList[_loc3_].uid))
            {
               _loc1_.push(this.mClaimedGiftsList[_loc3_].uid);
               §<"G§.§%!<§();
               _loc2_++;
               this.mClaimedGiftsList.splice(_loc3_,1);
            }
            _loc3_--;
         }
         if(_loc2_ > 0)
         {
            §3";§.§#"'§().§`2§(_loc2_,"REGIFT");
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §7!b§.§7@§("updateSessionToken",§1!Y§.§?!j§);
            §7!b§.§7@§("flashSendGiftFriend",userProgress.userName,_loc4_,§,#,§.§@#5§.§=D§(§,#,§.§@#5§.§^$'§));
         }
      }
      
      private function §<q§(param1:§[f§) : void
      {
         this.sendBackGift(param1.data.uid);
      }
      
      private function sendBackGift(param1:String) : void
      {
         if(param1 && !§"A§.§<$!§(param1) && §4!g§.§+!,§.§8$§(param1))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            §7!b§.§7@§("updateSessionToken",§1!Y§.§?!j§);
            §7!b§.§7@§("flashSendGiftFriend",userProgress.userName,param1,§,#,§.§@#5§.§=D§(§,#,§.§@#5§.§^$'§));
            §<"G§.§%!<§();
            §3";§.§#"'§().§`2§(1,"REGIFT");
         }
      }
      
      private function §4"y§(param1:Array) : void
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
            for each(_loc4_ in this.§+""§.data)
            {
               if(_loc3_ == _loc4_.uid && _loc4_.status == §6#k§.§;#8§)
               {
                  _loc4_.status = §6#k§.§3"F§;
                  §4!g§.§+!,§.§?" §(_loc4_.uid);
                  _loc2_ = true;
               }
            }
         }
         if(_loc2_)
         {
            this.§+""§.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function §%#2§(param1:§[f§) : void
      {
         §["#§.splice(§["#§.indexOf(param1.data),1);
         this.§5!h§(param1);
         §!"H§();
         this.§+""§.data = §["#§;
         this.scroll(this.§+""§.§["j§);
         this.§?#p§();
         this.§-"§();
      }
      
      private function §5!h§(param1:§[f§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§4S§.§@#1§ = null;
         var _loc4_:URLRequest = null;
         if(§>#D§.indexOf(param1.data) != -1)
         {
            §>#D§.splice(§>#D§.indexOf(param1.data),1);
            _loc2_ = param1.data.r as String;
            _loc3_ = new §-$C§();
            _loc3_.addEventListener(Event.COMPLETE,this.§%!K§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§<#z§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<#z§);
            _loc3_.addEventListener(§+!p§.§2$9§,this.§<#z§);
            (_loc4_ = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + _loc2_)).method = URLRequestMethod.GET;
            _loc4_.contentType = "application/json";
            _loc3_.load(_loc4_);
         }
      }
      
      protected function §%!K§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.currentTarget && param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
         }
      }
      
      private function §1%§(param1:§[f§) : void
      {
         if(userProgress.isLevelOpen(param1.data.lvl))
         {
            §@z§.§ !D§.§"#g§(param1.data.lvl);
            if(param1.data.lvl.indexOf("2000-") == -1)
            {
               if(§>#-§.§5$<§(§>#-§.§4$0§) != §>#-§.§9"§)
               {
                  (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§1#O§);
               }
            }
            else
            {
               (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§#!3§);
            }
         }
         else if(param1.data.lvl.indexOf("2000-") == -1)
         {
            if(§>#-§.§5$<§(§>#-§.§4$0§) != §>#-§.§9"§)
            {
               §@z§.§ !D§.§3#§(§`!^§.STATE_NAME);
            }
         }
         else
         {
            §@z§.§ !D§.§3#§(§ !8§.STATE_NAME);
         }
         this.§%#2§(param1);
         hide();
      }
      
      private function §=!o§(param1:MouseEvent) : void
      {
         this.§8#M§.EasterEggButton4.visible = false;
         userProgress.§0a§("1000-4");
      }
      
      private function §4"0§(param1:MouseEvent) : void
      {
         this.scroll(-this.§+""§.§["j§);
      }
      
      private function §5#G§(param1:MouseEvent) : void
      {
         this.scroll(this.§+""§.§["j§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§+""§.scroll(param1);
            this.§?#p§();
         }
      }
      
      private function §?#p§() : void
      {
         var _loc1_:* = this.§+""§.offset != 0;
         var _loc2_:* = this.§+""§.offset != this.§+""§.data.length - this.§+""§.§["j§;
         this.§8#M§.btnUp.visible = _loc1_;
         this.§8#M§.btnDown.visible = _loc2_;
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         §!"H§();
         close();
      }
      
      override public function dispose() : void
      {
         if(§+#!§ == this)
         {
            §+#!§ = null;
         }
         §7!b§.§&#&§("giftsSentToUsers",this.§4"y§);
         this.§7=§(this.§"#W§);
         this.§1#v§();
         this.§@"5§();
         this.§+""§.dispose();
         super.dispose();
      }
      
      private function §?"]§(param1:String, param2:int) : void
      {
         §<"G§.§2$%§(param1,param2);
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
      
      private function §'D§(param1:Event) : void
      {
         var _loc2_:Object = §>8§.data;
         var _loc3_:int = 0;
         if(_loc2_.brags)
         {
            _loc3_ += _loc2_.brags.length;
         }
         if(_loc2_.gifts)
         {
            _loc3_ += _loc2_.gifts.length;
         }
         §>8§ = null;
         var _loc4_:Object = new Object();
         if(_loc3_ == §=!d§)
         {
            _loc4_.result = false;
            dispatchEvent(new §[f§(§[f§.§+$%§,_loc4_));
         }
         else
         {
            _loc4_.result = true;
            dispatchEvent(new §[f§(§[f§.§+$%§,_loc4_));
         }
      }
      
      private function §<x§(param1:Event) : void
      {
         §>8§ = null;
         var _loc2_:Object = new Object();
         _loc2_.result = false;
         dispatchEvent(new §[f§(§[f§.§+$%§,_loc2_));
      }
      
      private function §'S§(param1:Boolean) : void
      {
         this.§]2§.setEnabled(param1);
         this.§]2§.setComponentState(param1 == true ? § #&§.COMPONENT_STATE_ACTIVE_DEFAULT : § #&§.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "CLAIM_ALL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§="8§(true);
               break;
            case "SEND_GIFTS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(§@#D§.NORMAL,§5R§.TOP));
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
