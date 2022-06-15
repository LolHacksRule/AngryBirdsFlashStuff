package §5!Y§
{
   import §,l§.§4"7§;
   import §2!o§.§[N§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §;!d§.§6"L§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §!E§ extends § Q§
   {
       
      
      private var §]"$§:Dictionary;
      
      private var §<"?§:Dictionary;
      
      private var §40§:Array;
      
      private var §`L§:§[N§;
      
      public function §!E§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupCustomInvite[0],param1);
         mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§""4§);
         mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§-!p§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§40§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§40§;
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
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc3_:§@"E§ = null;
         var _loc2_:Dictionary = §&k§.§]v§();
         this.§]"$§ = new Dictionary();
         for each(_loc3_ in _loc2_)
         {
            this.§]"$§[_loc3_.§5!0§] = _loc3_;
         }
         this.§<"?§ = §4"7§.§&"5§.§4!h§();
         this.finalPlayerList = param1.filter(this.§?-§);
         this.finalPlayerList.sort(§&"#§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §?-§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§]"$§[param1.id] == null && this.§<"?§[param1.id] == null && !param1.sent;
      }
      
      private function §-!p§(param1:MouseEvent) : void
      {
         this.§`"2§();
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         §;f§ = 0;
         this.§`"2§();
      }
      
      private function §`"2§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
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
         §[w§.dispatchEvent(new §6"L§(§6"L§.§ !1§,{"userId":_loc4_},true));
         §'"+§.addCallback("invitationBatchSent",this.§'!Y§);
      }
      
      private function §'!Y§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §'"+§.§"!6§("invitationBatchSent",this.§'!Y§);
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
            checkIfBatchInProgress();
            §#I§(this.finalPlayerList,false);
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
      
      private function §if §(param1:MouseEvent) : void
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
