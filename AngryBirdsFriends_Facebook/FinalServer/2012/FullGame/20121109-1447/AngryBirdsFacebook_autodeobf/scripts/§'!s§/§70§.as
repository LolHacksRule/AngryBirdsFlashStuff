package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §+N§.§@!]§;
   import §]!>§.§0!!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §70§ extends §+!4§
   {
       
      
      private var §7!8§:Dictionary;
      
      private var §5T§:Dictionary;
      
      private var §%!`§:Array;
      
      public function §70§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupCustomGifting[0],param1);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§-t§);
         mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§`"4§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§%!`§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§%!`§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = § ",§;
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §2^§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         mClip.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§@!5§ = null;
         var _loc1_:Dictionary = §1z§.§^"4§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.§4v§,
               "name":_loc3_.name
            });
         }
         §%!,§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            mClip.btnSendMoreGifts.visible = false;
            mClip.btnSendGifts.visible = false;
         }
         else if(mClip.btnSendMoreGifts.visible)
         {
            mClip.btnSendMoreGifts.visible = true;
            mClip.btnSendGifts.visible = false;
         }
         else
         {
            mClip.btnSendMoreGifts.visible = false;
            mClip.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§&v§ > 0)
         {
            mClip.btnSendMoreGifts.visible = true;
            mClip.btnSendGifts.visible = false;
         }
         else
         {
            mClip.btnSendMoreGifts.visible = false;
            mClip.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§7!8§ = §0!!§.§;"§.§'+§();
         this.§5T§ = §0!!§.§;"§.§4!Z§();
         this.finalPlayerList = param1.filter(this.§!![§);
         this.finalPlayerList.sort(§?s§);
         this.§7!8§ = null;
         this.§5T§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §!![§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§7!8§[param1.id] == null && this.§5T§[param1.id] == null && !param1.sent && param1.id != (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §`"4§(param1:MouseEvent) : void
      {
         this.§]!S§();
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         §"n§ = 0;
         this.§]!S§();
      }
      
      private function §]!S§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsFP11.§@<§.§#m§();
         var _loc1_:Array = [];
         var _loc2_:int = §"n§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §%@§ + §"n§)
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
         §@!]§.§9"'§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §[<§).userName,_loc4_);
         §@!]§.addCallback("giftsSentToUsers",this.§!"B§);
      }
      
      private function §!"B§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §@!]§.§[">§("giftsSentToUsers",this.§!"B§);
         if(param1 != null)
         {
            mClip.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §"n§;
            _loc3_ = §"n§;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §%@§ + §"n§)
               {
                  §"n§ = _loc3_;
                  break;
               }
               if(_loc4_.selected)
               {
                  _loc4_.selected = false;
                  _loc4_.sent = true;
                  _loc3_++;
               }
            }
            §;L§ += _loc3_ - _loc2_;
            this.checkIfBatchInProgress();
            §%!,§(this.finalPlayerList,false);
         }
      }
      
      override public function close() : void
      {
         super.close();
         §%?§.§?@§(true,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
