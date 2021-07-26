package §&!"§
{
   import §#!^§.§1!1§;
   import §#!^§.§2t§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-n§.§!h§;
   import §<<§.§=!L§;
   import §=E§.§@;§;
   import §^!U§.§7@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §>!'§ extends §7" §
   {
       
      
      private var §=![§:Dictionary;
      
      private var §2V§:Dictionary;
      
      private var §1$§:Array;
      
      private var §%!Y§:§@;§;
      
      public function §>!'§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupCustomInvite[0],param1);
         mClip.btnInvite.addEventListener(MouseEvent.CLICK,this.§#!_§);
         mClip.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§8h§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.friendsCounterBar.gotoAndStop(0);
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§1$§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§1$§;
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
      
      override protected function get facebookGraphCall() : String
      {
         return "https://graph.facebook.com/me/friends/";
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         var _loc3_:§2t§ = null;
         var _loc2_:Dictionary = §1!1§.§27§();
         this.§=![§ = new Dictionary();
         for each(_loc3_ in _loc2_)
         {
            this.§=![§[_loc3_.§;#§] = _loc3_;
         }
         this.§2V§ = §7@§.§1[§.§9O§();
         this.finalPlayerList = param1.filter(this.§>"G§);
         this.finalPlayerList.sort(§"C§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return mClip.cantFindInviteFriend;
      }
      
      private function §>"G§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§=![§[param1.id] == null && this.§2V§[param1.id] == null && !param1.sent;
      }
      
      private function §8h§(param1:MouseEvent) : void
      {
         this.§,!w§();
      }
      
      private function §#!_§(param1:MouseEvent) : void
      {
         §8!#§ = 0;
         this.§,!w§();
      }
      
      private function §,!w§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
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
         §&"D§.dispatchEvent(new §!h§(§!h§.§>!0§,{"userId":_loc4_},true));
         §=!L§.addCallback("invitationBatchSent",this.§!!v§);
      }
      
      private function §!!v§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         §=!L§.§>7§("invitationBatchSent",this.§!!v§);
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
            checkIfBatchInProgress();
            §,!$§(this.finalPlayerList,false);
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
      
      private function §2"%§(param1:MouseEvent) : void
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
