package § o§
{
   import § $%§.§5h§;
   import §&"J§.§"!F§;
   import §&"J§.§9N§;
   import §-!_§.GiftInboxPopup;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6V§.§?!=§;
   import §8#D§.§=>§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §^#]§.§1#H§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §6#=§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §5!3§:Dictionary;
      
      private var §3!o§:Dictionary;
      
      private var §%#N§:Array;
      
      private var §>"g§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      override protected function init() : void
      {
         this.§>"g§ = §1"6§.mClip;
         §6"H§ = true;
         super.init();
         this.§>"g§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§&#E§);
         this.§>"g§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§[N§);
         this.§>"g§.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         this.§>"g§.friendsCounterBar.gotoAndStop(0);
         §+q§.displayObject.y = 222;
         §4#n§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§%#N§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§%#N§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§>"g§.friendsCounter.text = param1 + "/" + param2 + " " + §7$%§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§>"g§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §]h§ = 0;
         §!"H§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§4!J§ = null;
         var _loc1_:Vector.<§4!J§> = §%!?§.§@!i§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§1#H§.§<"#§(_loc3_.name)
            });
         }
         §0$'§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§>"g§.btnSendMoreGifts.visible = false;
            this.§>"g§.btnSendGifts.visible = false;
         }
         else if(this.§>"g§.btnSendMoreGifts.visible)
         {
            this.§>"g§.btnSendMoreGifts.visible = true;
            this.§>"g§.btnSendGifts.visible = false;
         }
         else
         {
            this.§>"g§.btnSendMoreGifts.visible = false;
            this.§>"g§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§9#e§ > 0)
         {
            this.§>"g§.btnSendMoreGifts.visible = true;
            this.§>"g§.btnSendGifts.visible = false;
         }
         else
         {
            this.§>"g§.btnSendMoreGifts.visible = false;
            this.§>"g§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§5!3§ = §"!F§.§ "D§.§># §();
         this.§3!o§ = §"!F§.§ "D§.§>"Z§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§!#t§);
         }
         this.§5!3§ = null;
         this.§3!o§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§>"g§.cantFindGiftFriend;
      }
      
      private function §!#t§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§5!3§[param1.id] == null && this.§3!o§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §[N§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§5"^§();
      }
      
      private function §&#E§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         §""z§ = 0;
         this.§5"^§();
      }
      
      private function §5"^§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §""z§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §%#M§ + §""z§)
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
         §]h§ += _loc1_.length;
         § "8§.§ "§("updateSessionToken",§5h§.§0#,§);
         § "8§.§ "§("flashSendGiftToFriends",userProgress.userName,_loc4_,§9N§.§^"?§(§9N§.§ "^§));
         § "8§.addCallback("giftsSentToUsers",this.§%#F§);
      }
      
      private function §%#F§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         § "8§.§+#R§("giftsSentToUsers",this.§%#F§);
         if(param1 != null)
         {
            this.§>"g§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §""z§;
            _loc3_ = 0;
            _loc4_ = §""z§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §%#M§ + §""z§)
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
            §""z§ = _loc5_;
            if(_loc3_ > 0)
            {
               §?!=§.§3!q§().§ ##§(_loc3_,"INBOX");
            }
            §!"H§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §0$'§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§!"<§ = new GiftInboxPopup(§%"!§.NORMAL,§^#o§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
