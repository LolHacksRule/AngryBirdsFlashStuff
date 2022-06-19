package §7N§
{
   import §,"-§.§2!P§;
   import §2!,§.§!"§;
   import §<"1§.§,U§;
   import §?"#§.§%!X§;
   import §?"#§.§'@§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §>!=§ extends §&=§
   {
       
      
      private var §="<§:Dictionary;
      
      private var §%2§:Dictionary;
      
      private var §<x§:Array;
      
      public function §>!=§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupCustomGifting[0],param1);
         mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§0+§);
         mClip.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§]!N§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§<x§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§<x§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §1!§;
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         mClip.friendsCounter.text = param1 + "/" + param2;
         mClip.friendsSelectedText.text = §+f§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         mClip.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§'@§ = null;
         var _loc1_:Dictionary = §%!X§.§+X§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.§!!'§,
               "name":_loc3_.name
            });
         }
         §?'§(_loc2_);
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
         if(§%!'§ > 0)
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
         this.§="<§ = §!"§.§8c§.§-!U§();
         this.§%2§ = §!"§.§8c§.§]S§();
         this.finalPlayerList = param1.filter(this.§!!i§);
         this.finalPlayerList.sort(§'S§);
         this.§="<§ = null;
         this.§%2§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindGiftFriend;
      }
      
      private function §!!i§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§="<§[param1.id] == null && this.§%2§[param1.id] == null && !param1.sent && param1.id != (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function §]!N§(param1:MouseEvent) : void
      {
         this.§^!'§();
      }
      
      private function §0+§(param1:MouseEvent) : void
      {
         §;!r§ = 0;
         this.§^!'§();
      }
      
      private function §^!'§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsFP11.§`"B§.§'H§();
         var _loc1_:Array = [];
         var _loc2_:int = §;!r§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §]R§ + §;!r§)
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
         §,U§.§53§("flashSendGiftToFriends",(AngryBirdsFP11.sUserProgress as §2!P§).userName,_loc4_);
         §,U§.addCallback("giftsSentToUsers",this.§9";§);
      }
      
      private function §9";§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §,U§.§-!N§("giftsSentToUsers",this.§9";§);
         if(param1 != null)
         {
            mClip.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §;!r§;
            _loc3_ = §;!r§;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §]R§ + §;!r§)
               {
                  §;!r§ = _loc3_;
                  break;
               }
               if(_loc4_.selected)
               {
                  _loc4_.selected = false;
                  _loc4_.sent = true;
                  _loc3_++;
               }
            }
            §1n§ += _loc3_ - _loc2_;
            this.checkIfBatchInProgress();
            §?'§(this.finalPlayerList,false);
         }
      }
      
      override public function close() : void
      {
         super.close();
         §43§.§;§(true,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
