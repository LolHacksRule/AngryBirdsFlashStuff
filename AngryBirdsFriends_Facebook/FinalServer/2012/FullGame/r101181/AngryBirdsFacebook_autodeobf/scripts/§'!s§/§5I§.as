package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §+N§.§@!]§;
   import §,"2§.§;6§;
   import §-!+§.§!a§;
   import §]!>§.§0!!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §5I§ extends §+!4§
   {
       
      
      private var §'!t§:Dictionary;
      
      private var §5T§:Dictionary;
      
      private var §]!9§:Array;
      
      private var §"8§:§!a§;
      
      public function §5I§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupCustomInvite[0],param1);
         mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§#!0§);
         mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§#0§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§]!9§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§]!9§;
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
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc3_:§@!5§ = null;
         var _loc2_:Dictionary = §1z§.§^"4§();
         this.§'!t§ = new Dictionary();
         for each(_loc3_ in _loc2_)
         {
            this.§'!t§[_loc3_.§4v§] = _loc3_;
         }
         this.§5T§ = §0!!§.§;"§.§4!Z§();
         this.finalPlayerList = param1.filter(this.§"o§);
         this.finalPlayerList.sort(§?s§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §"o§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§'!t§[param1.id] == null && this.§5T§[param1.id] == null && !param1.sent;
      }
      
      private function §#0§(param1:MouseEvent) : void
      {
         this.§else §();
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         §"n§ = 0;
         this.§else §();
      }
      
      private function §else §() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
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
         §]"3§.dispatchEvent(new §;6§(§;6§.§;"E§,{"userId":_loc4_},true));
         §@!]§.addCallback("invitationBatchSent",this.§4!A§);
      }
      
      private function §4!A§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §@!]§.§[">§("invitationBatchSent",this.§4!A§);
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
            checkIfBatchInProgress();
            §%!,§(this.finalPlayerList,false);
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
      
      private function §@!a§(param1:MouseEvent) : void
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
