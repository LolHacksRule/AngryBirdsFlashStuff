package §?!N§
{
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §+#B§.§+$A§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §7#j§.§@"F§;
   import §7h§.GiftInboxPopup;
   import §8"b§.§?$!§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §>"9§.§[#%§;
   import §>"Q§.§]Q§;
   import §]"'§.§-!#§;
   import §]"'§.§[#!§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §<!4§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §%!§:Dictionary;
      
      private var §]!X§:Dictionary;
      
      private var §>"m§:Array;
      
      private var §%§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      override protected function init() : void
      {
         this.§%§ = §8#Y§.mClip;
         §8!>§ = true;
         super.init();
         this.§%§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§##_§);
         this.§%§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§[#A§);
         this.§%§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         this.§%§.friendsCounterBar.gotoAndStop(0);
         §7#$§.displayObject.y = 222;
         §#";§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§>"m§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§>"m§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§%§.friendsCounter.text = param1 + "/" + param2 + " " + §?!z§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§%§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §8""§ = 0;
         §+#3§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§8c§ = null;
         var _loc1_:Vector.<§8c§> = §5!b§.§4`§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§?$!§.§#"^§(_loc3_.name)
            });
         }
         §5!j§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§%§.btnSendMoreGifts.visible = false;
            this.§%§.btnSendGifts.visible = false;
         }
         else if(this.§%§.btnSendMoreGifts.visible)
         {
            this.§%§.btnSendMoreGifts.visible = true;
            this.§%§.btnSendGifts.visible = false;
         }
         else
         {
            this.§%§.btnSendMoreGifts.visible = false;
            this.§%§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§#"y§ > 0)
         {
            this.§%§.btnSendMoreGifts.visible = true;
            this.§%§.btnSendGifts.visible = false;
         }
         else
         {
            this.§%§.btnSendMoreGifts.visible = false;
            this.§%§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§%!§ = §-!#§.§?q§.§`"f§();
         this.§]!X§ = §-!#§.§?q§.§]#0§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§<!?§);
         }
         this.§%!§ = null;
         this.§]!X§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§%§.cantFindGiftFriend;
      }
      
      private function §<!?§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§%!§[param1.id] == null && this.§]!X§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §[#A§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§@"-§();
      }
      
      private function §##_§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         §+!?§ = 0;
         this.§@"-§();
      }
      
      private function §@"-§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §+!?§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §4#x§ + §+!?§)
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
         §8""§ += _loc1_.length;
         §@"F§.§^$#§("updateSessionToken",§]Q§.§="3§);
         §@"F§.§^$#§("flashSendGiftToFriends",userProgress.userName,_loc4_,§[#!§.§1!'§(§[#!§.§^"_§));
         §@"F§.addCallback("giftsSentToUsers",this.§%",§);
      }
      
      private function §%",§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         §@"F§.§=F§("giftsSentToUsers",this.§%",§);
         if(param1 != null)
         {
            this.§%§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §+!?§;
            _loc3_ = 0;
            _loc4_ = §+!?§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §4#x§ + §+!?§)
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
            §+!?§ = _loc5_;
            if(_loc3_ > 0)
            {
               §+$A§.§@"i§().§[!E§(_loc3_,"INBOX");
            }
            §+#3§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §5!j§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§@#G§ = new GiftInboxPopup(§%#§.NORMAL,§9#5§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
