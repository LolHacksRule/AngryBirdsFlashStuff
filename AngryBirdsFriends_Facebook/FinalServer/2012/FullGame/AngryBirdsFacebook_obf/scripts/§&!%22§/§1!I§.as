package §&!"§
{
   import §#!^§.§1!1§;
   import §#!^§.§2t§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §^!U§.§7@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §1!I§ extends §7" §
   {
       
      
      private var §=M§:Dictionary;
      
      private var §2V§:Dictionary;
      
      private var §0!o§:Array;
      
      public function §1!I§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupCustomGifting[0],param1);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§ E§);
         mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§[!u§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§0!o§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§0!o§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §'"!§;
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §+z§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         mClip.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§2t§ = null;
         var _loc1_:Dictionary = §1!1§.§27§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.§;#§,
               "name":_loc3_.name
            });
         }
         §,!$§(_loc2_);
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
         if(§'k§ > 0)
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
         this.§=M§ = §7@§.§1[§.§8I§();
         this.§2V§ = §7@§.§1[§.§9O§();
         this.finalPlayerList = param1.filter(this.§4;§);
         this.finalPlayerList.sort(§"C§);
         this.§=M§ = null;
         this.§2V§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §4;§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§=M§[param1.id] == null && this.§2V§[param1.id] == null && !param1.sent && param1.id != (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §[!u§(param1:MouseEvent) : void
      {
         this.§>@§();
      }
      
      private function § E§(param1:MouseEvent) : void
      {
         §8!#§ = 0;
         this.§>@§();
      }
      
      private function §>@§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsFP11.§#!4§.§1z§();
         var _loc1_:Array = [];
         var _loc2_:int = §8!#§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §"!;§ + §8!#§)
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
         §=!L§.§+">§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §'y§).userName,_loc4_);
         §=!L§.addCallback("giftsSentToUsers",this.§4D§);
      }
      
      private function §4D§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §=!L§.§>7§("giftsSentToUsers",this.§4D§);
         if(param1 != null)
         {
            mClip.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §8!#§;
            _loc3_ = §8!#§;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §"!;§ + §8!#§)
               {
                  §8!#§ = _loc3_;
                  break;
               }
               if(_loc4_.selected)
               {
                  _loc4_.selected = false;
                  _loc4_.sent = true;
                  _loc3_++;
               }
            }
            §+!1§ += _loc3_ - _loc2_;
            this.checkIfBatchInProgress();
            §,!$§(this.finalPlayerList,false);
         }
      }
      
      override public function close() : void
      {
         super.close();
         §`B§.§>v§(true,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
