package §5!Y§
{
   import §,l§.§4"7§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §4"O§ extends § Q§
   {
       
      
      private var §#0§:Dictionary;
      
      private var §<"?§:Dictionary;
      
      private var §7"I§:Array;
      
      public function §4"O§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupCustomGifting[0],param1);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§0A§);
         mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§6x§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§7"I§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§7"I§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §4$§;
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §<§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         mClip.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§@"E§ = null;
         var _loc1_:Dictionary = §&k§.§]v§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.§5!0§,
               "name":_loc3_.name
            });
         }
         §#I§(_loc2_);
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
         if(§0^§ > 0)
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
         this.§#0§ = §4"7§.§&"5§.§9"T§();
         this.§<"?§ = §4"7§.§&"5§.§4!h§();
         this.finalPlayerList = param1.filter(this.§8!b§);
         this.finalPlayerList.sort(§&"#§);
         this.§#0§ = null;
         this.§<"?§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §8!b§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§#0§[param1.id] == null && this.§<"?§[param1.id] == null && !param1.sent && param1.id != (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §6x§(param1:MouseEvent) : void
      {
         this.§?!V§();
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         §;f§ = 0;
         this.§?!V§();
      }
      
      private function §?!V§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsFP11.§>m§.§^X§();
         var _loc1_:Array = [];
         var _loc2_:int = §;f§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §@!o§ + §;f§)
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
         §'"+§.§'!#§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §#!$§).userName,_loc4_);
         §'"+§.addCallback("giftsSentToUsers",this.§,N§);
      }
      
      private function §,N§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §'"+§.§"!6§("giftsSentToUsers",this.§,N§);
         if(param1 != null)
         {
            mClip.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §;f§;
            _loc3_ = §;f§;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §@!o§ + §;f§)
               {
                  §;f§ = _loc3_;
                  break;
               }
               if(_loc4_.selected)
               {
                  _loc4_.selected = false;
                  _loc4_.sent = true;
                  _loc3_++;
               }
            }
            §'r§ += _loc3_ - _loc2_;
            this.checkIfBatchInProgress();
            §#I§(this.finalPlayerList,false);
         }
      }
      
      override public function close() : void
      {
         super.close();
         §9"6§.§8+§(true,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
