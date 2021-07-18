package §?"R§
{
   import §%$!§.§0"F§;
   import §%$!§.§1#`§;
   import §+"%§.§6X§;
   import §1!@§.§&#u§;
   import §4q§.§!#Q§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §<!O§.§@#`§;
   import §>!#§.§-#A§;
   import §]$9§.§9"+§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §`#?§.GiftInboxPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §?z§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §[" §:Dictionary;
      
      private var §!#&§:Dictionary;
      
      private var §@#M§:Array;
      
      private var §8!J§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      override protected function init() : void
      {
         this.§8!J§ = §7!j§.mClip;
         §@!c§ = true;
         super.init();
         this.§8!J§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§8!y§);
         this.§8!J§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§<h§);
         this.§8!J§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         this.§8!J§.friendsCounterBar.gotoAndStop(0);
         §!#3§.displayObject.y = 222;
         §6!P§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§@#M§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§@#M§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§8!J§.friendsCounter.text = param1 + "/" + param2 + " " + §;#O§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§8!J§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         § &§ = 0;
         §'#z§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§2"U§ = null;
         var _loc1_:Vector.<§2"U§> = §7"m§.§=#p§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§&#u§.§^!q§(_loc3_.name)
            });
         }
         §0!e§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§8!J§.btnSendMoreGifts.visible = false;
            this.§8!J§.btnSendGifts.visible = false;
         }
         else if(this.§8!J§.btnSendMoreGifts.visible)
         {
            this.§8!J§.btnSendMoreGifts.visible = true;
            this.§8!J§.btnSendGifts.visible = false;
         }
         else
         {
            this.§8!J§.btnSendMoreGifts.visible = false;
            this.§8!J§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§1!E§ > 0)
         {
            this.§8!J§.btnSendMoreGifts.visible = true;
            this.§8!J§.btnSendGifts.visible = false;
         }
         else
         {
            this.§8!J§.btnSendMoreGifts.visible = false;
            this.§8!J§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§[" § = §1#`§.§3!]§.§"#+§();
         this.§!#&§ = §1#`§.§3!]§.§ #j§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§"!6§);
         }
         this.§[" § = null;
         this.§!#&§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§8!J§.cantFindGiftFriend;
      }
      
      private function §"!6§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§[" §[param1.id] == null && this.§!#&§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §<h§(param1:MouseEvent) : void
      {
         this.§>G§();
      }
      
      private function §8!y§(param1:MouseEvent) : void
      {
         §0D§ = 0;
         this.§>G§();
      }
      
      private function §>G§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §0D§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §@s§ + §0D§)
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
         § &§ += _loc1_.length;
         §6X§.§3U§("updateSessionToken",§9"+§.§"C§);
         §6X§.§3U§("flashSendGiftToFriends",userProgress.userName,_loc4_,§0"F§.§7#"§(§0"F§.§31§));
         §6X§.addCallback("giftsSentToUsers",this.§&"%§);
      }
      
      private function §&"%§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         §6X§.§5!3§("giftsSentToUsers",this.§&"%§);
         if(param1 != null)
         {
            this.§8!J§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §0D§;
            _loc3_ = 0;
            _loc4_ = §0D§;
            for each(_loc5_ in this.finalPlayerList)
            {
               if(_loc4_ >= §@s§ + §0D§)
               {
                  §0D§ = _loc4_;
                  break;
               }
               if(_loc5_.selected)
               {
                  _loc5_.selected = false;
                  _loc5_.sent = true;
                  _loc4_++;
                  _loc3_++;
               }
            }
            if(_loc3_ > 0)
            {
               §-#A§.§6$2§().§#!6§(_loc3_,"INBOX");
            }
            §'#z§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §0!e§(this.finalPlayerList,false);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§8!H§ = new GiftInboxPopup(§[W§.NORMAL,§<d§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
