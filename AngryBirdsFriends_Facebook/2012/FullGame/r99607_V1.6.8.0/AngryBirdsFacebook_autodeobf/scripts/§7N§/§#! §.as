package §7N§
{
   import § !§.§?N§;
   import §2!,§.§!"§;
   import §<"1§.§,U§;
   import §<m§.§ !h§;
   import §?"#§.§%!X§;
   import §?"#§.§'@§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §#! § extends §&=§
   {
       
      
      private var §^"+§:Dictionary;
      
      private var §%2§:Dictionary;
      
      private var §8b§:Array;
      
      private var §""-§:§ !h§;
      
      public function §#! §(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupCustomInvite[0],param1);
         mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§if§);
         mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§^"6§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§8b§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§8b§;
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
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc3_:§'@§ = null;
         var _loc2_:Dictionary = §%!X§.§+X§();
         this.§^"+§ = new Dictionary();
         for each(_loc3_ in _loc2_)
         {
            this.§^"+§[_loc3_.§!!'§] = _loc3_;
         }
         this.§%2§ = §!"§.§8c§.§]S§();
         this.finalPlayerList = param1.filter(this.§?0§);
         this.finalPlayerList.sort(§'S§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §?0§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§^"+§[param1.id] == null && this.§%2§[param1.id] == null && !param1.sent;
      }
      
      private function §^"6§(param1:MouseEvent) : void
      {
         this.§##§();
      }
      
      private function §if§(param1:MouseEvent) : void
      {
         §;!r§ = 0;
         this.§##§();
      }
      
      private function §##§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
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
         §0!'§.dispatchEvent(new §?N§(§?N§.§,7§,{"userId":_loc4_},true));
         §,U§.addCallback("invitationBatchSent",this.native);
      }
      
      private function native(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §,U§.§-!N§("invitationBatchSent",this.native);
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
            checkIfBatchInProgress();
            §?'§(this.finalPlayerList,false);
         }
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            mClip.btnInviteMore.visible = false;
            mClip.btnInvite.visible = false;
         }
         else if(mClip.btnInviteMore.visible)
         {
            mClip.btnInviteMore.visible = true;
            mClip.btnInvite.visible = false;
         }
         else
         {
            mClip.btnInviteMore.visible = false;
            mClip.btnInvite.visible = true;
         }
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         preClose();
      }
   }
}
