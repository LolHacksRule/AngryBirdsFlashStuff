package § h§
{
   import § "v§.§4$4§;
   import §!!H§.§@"X§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §'q§.GiftInboxPopup;
   import §-"S§.§>#G§;
   import §2E§.§]!P§;
   import §7"1§.§="A§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §>#Y§.§!#?§;
   import §>#Y§.§6"k§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §&!x§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §#$,§:Dictionary;
      
      private var §?!Z§:Dictionary;
      
      private var §="R§:Array;
      
      private var §3`§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      override protected function init() : void
      {
         this.§3`§ = §'o§.mClip;
         §&H§ = true;
         super.init();
         this.§3`§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§&#2§);
         this.§3`§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§##B§);
         this.§3`§.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         this.§3`§.friendsCounterBar.gotoAndStop(0);
         §4#W§.displayObject.y = 222;
         §'"N§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§="R§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§="R§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§3`§.friendsCounter.text = param1 + "/" + param2 + " " + §`!z§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§3`§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §7" § = 0;
         §1!x§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§9$§ = null;
         var _loc1_:Vector.<§9$§> = §-#]§.§0#9§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§@"X§.§+!'§(_loc3_.name)
            });
         }
         §@#n§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§3`§.btnSendMoreGifts.visible = false;
            this.§3`§.btnSendGifts.visible = false;
         }
         else if(this.§3`§.btnSendMoreGifts.visible)
         {
            this.§3`§.btnSendMoreGifts.visible = true;
            this.§3`§.btnSendGifts.visible = false;
         }
         else
         {
            this.§3`§.btnSendMoreGifts.visible = false;
            this.§3`§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§^"]§ > 0)
         {
            this.§3`§.btnSendMoreGifts.visible = true;
            this.§3`§.btnSendGifts.visible = false;
         }
         else
         {
            this.§3`§.btnSendMoreGifts.visible = false;
            this.§3`§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§#$,§ = §6"k§.§3"1§.§?"T§();
         this.§?!Z§ = §6"k§.§3"1§.§0!o§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§#!2§);
         }
         this.§#$,§ = null;
         this.§?!Z§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§3`§.cantFindGiftFriend;
      }
      
      private function §#!2§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§#$,§[param1.id] == null && this.§?!Z§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §##B§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§1#§();
      }
      
      private function §&#2§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         §]#5§ = 0;
         this.§1#§();
      }
      
      private function §1#§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §]#5§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §&#5§ + §]#5§)
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
         §7" § += _loc1_.length;
         §=#c§.§<!t§("updateSessionToken",§="A§.§<!9§);
         §=#c§.§<!t§("flashSendGiftToFriends",userProgress.userName,_loc4_,§!#?§.§]!2§(§!#?§.§<y§));
         §=#c§.addCallback("giftsSentToUsers",this.§-" §);
      }
      
      private function §-" §(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         §=#c§.§`$ §("giftsSentToUsers",this.§-" §);
         if(param1 != null)
         {
            this.§3`§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §]#5§;
            _loc3_ = 0;
            _loc4_ = §]#5§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §&#5§ + §]#5§)
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
            §]#5§ = _loc5_;
            if(_loc3_ > 0)
            {
               §]!P§.§1!7§().§1o§(_loc3_,"INBOX");
            }
            §1!x§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §@#n§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§?!y§ = new GiftInboxPopup(§-!S§.NORMAL,§## §.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
