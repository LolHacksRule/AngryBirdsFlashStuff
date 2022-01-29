package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §%$B§.GiftInboxPopup;
   import §-!S§.§##>§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §2G§.§&"+§;
   import §2G§.§9=§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §@!M§.§!"p§;
   import §@V§.§!"j§;
   import §[#[§.§-^§;
   import §`7§.§ try§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §,"L§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §>!!§:Dictionary;
      
      private var §-$,§:Dictionary;
      
      private var §9G§:Array;
      
      private var §0!Q§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      override protected function init() : void
      {
         this.§0!Q§ = §,#2§.mClip;
         §;"L§ = true;
         super.init();
         this.§0!Q§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§=$2§);
         this.§0!Q§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§&"T§);
         this.§0!Q§.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         this.§0!Q§.friendsCounterBar.gotoAndStop(0);
         §]# §.displayObject.y = 222;
         §=!6§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§9G§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§9G§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§0!Q§.friendsCounter.text = param1 + "/" + param2 + " " + §&#<§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§0!Q§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §<[§ = 0;
         §1!w§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§,^§ = null;
         var _loc1_:Vector.<§,^§> = §4"I§.§8"T§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§-^§.§`#&§(_loc3_.name)
            });
         }
         §0#_§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§0!Q§.btnSendMoreGifts.visible = false;
            this.§0!Q§.btnSendGifts.visible = false;
         }
         else if(this.§0!Q§.btnSendMoreGifts.visible)
         {
            this.§0!Q§.btnSendMoreGifts.visible = true;
            this.§0!Q§.btnSendGifts.visible = false;
         }
         else
         {
            this.§0!Q§.btnSendMoreGifts.visible = false;
            this.§0!Q§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§0"u§ > 0)
         {
            this.§0!Q§.btnSendMoreGifts.visible = true;
            this.§0!Q§.btnSendGifts.visible = false;
         }
         else
         {
            this.§0!Q§.btnSendMoreGifts.visible = false;
            this.§0!Q§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§>!!§ = §&"+§.§6!§.§6!C§();
         this.§-$,§ = §&"+§.§6!§.§>?§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§-!+§);
         }
         this.§>!!§ = null;
         this.§-$,§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§0!Q§.cantFindGiftFriend;
      }
      
      private function §-!+§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§>!!§[param1.id] == null && this.§-$,§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §&"T§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§^C§();
      }
      
      private function §=$2§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         §"a§ = 0;
         this.§^C§();
      }
      
      private function §^C§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §"a§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §+$&§ + §"a§)
            {
               break;
            }
            if(_loc3_.selected)
            {
               _loc1_.push(_loc3_.id);
               _loc2_++;
            }
         }
         _loc4_ = JSON.stringify(_loc1_);
         §<[§ += _loc1_.length;
         §^!K§.§+"D§("updateSessionToken",§!"j§.§-J§);
         §^!K§.§+"D§("flashSendGiftToFriends",userProgress.userName,_loc4_,§9=§.§2#p§(§9=§.§0b§));
         §^!K§.addCallback("giftsSentToUsers",this.§?$!§);
      }
      
      private function §?$!§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         §^!K§.§,"i§("giftsSentToUsers",this.§?$!§);
         if(param1 != null)
         {
            this.§0!Q§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §"a§;
            _loc3_ = 0;
            _loc4_ = §"a§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §+$&§ + §"a§)
               {
                  if(_loc7_.selected)
                  {
                     _loc7_.selected = false;
                     _loc7_.sent = true;
                     _loc4_++;
                     _loc3_++;
                  }
               }
               else
               {
                  if(_loc5_ == 0)
                  {
                     _loc5_ = _loc4_;
                  }
                  if(_loc7_.selected)
                  {
                     _loc6_++;
                  }
               }
            }
            §"a§ = _loc5_;
            if(_loc3_ > 0)
            {
               § try§.§!!t§().§2m§(_loc3_,"INBOX");
            }
            §1!w§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §0#_§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§%#;§ = new GiftInboxPopup(§]"$§.NORMAL,§^"U§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
