package §>z§
{
   import §!#C§.§1%§;
   import §!#C§.§5H§;
   import §"!n§.§"!^§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §1L§.§0#=§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §;"W§.GiftInboxPopup;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §]C§.§ !+§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §4!%§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §8H§:Dictionary;
      
      private var §#"`§:Dictionary;
      
      private var §7!K§:Array;
      
      private var §&r§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      override protected function init() : void
      {
         this.§&r§ = §&!M§.mClip;
         §6#G§ = true;
         super.init();
         this.§&r§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§<$%§);
         this.§&r§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§!z§);
         this.§&r§.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         this.§&r§.friendsCounterBar.gotoAndStop(0);
         §+#=§.displayObject.y = 222;
         §@z§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§7!K§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§7!K§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§&r§.friendsCounter.text = param1 + "/" + param2 + " " + §4#H§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§&r§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §%#p§ = 0;
         §1#M§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§@u§ = null;
         var _loc1_:Vector.<§@u§> = §<T§.§8"5§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§"!^§.§%"D§(_loc3_.name)
            });
         }
         §%#<§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§&r§.btnSendMoreGifts.visible = false;
            this.§&r§.btnSendGifts.visible = false;
         }
         else if(this.§&r§.btnSendMoreGifts.visible)
         {
            this.§&r§.btnSendMoreGifts.visible = true;
            this.§&r§.btnSendGifts.visible = false;
         }
         else
         {
            this.§&r§.btnSendMoreGifts.visible = false;
            this.§&r§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§#%§ > 0)
         {
            this.§&r§.btnSendMoreGifts.visible = true;
            this.§&r§.btnSendGifts.visible = false;
         }
         else
         {
            this.§&r§.btnSendMoreGifts.visible = false;
            this.§&r§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§8H§ = §1%§.§`"H§.§0"=§();
         this.§#"`§ = §1%§.§`"H§.§+!V§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§[!>§);
         }
         this.§8H§ = null;
         this.§#"`§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§&r§.cantFindGiftFriend;
      }
      
      private function §[!>§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§8H§[param1.id] == null && this.§#"`§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §!z§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§[!]§();
      }
      
      private function §<$%§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         §&"W§ = 0;
         this.§[!]§();
      }
      
      private function §[!]§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §&"W§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §?!k§ + §&"W§)
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
         §%#p§ += _loc1_.length;
         § !+§.§>$%§("updateSessionToken",§0#=§.§+#!§);
         § !+§.§>$%§("flashSendGiftToFriends",userProgress.userName,_loc4_,§5H§.§^"M§(§5H§.§'=§));
         § !+§.addCallback("giftsSentToUsers",this.§1u§);
      }
      
      private function §1u§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         § !+§.§?!§("giftsSentToUsers",this.§1u§);
         if(param1 != null)
         {
            this.§&r§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §&"W§;
            _loc3_ = 0;
            _loc4_ = §&"W§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §?!k§ + §&"W§)
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
            §&"W§ = _loc5_;
            if(_loc3_ > 0)
            {
               §!!K§.§%#S§().§&!r§(_loc3_,"INBOX");
            }
            §1#M§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §%#<§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§5!-§ = new GiftInboxPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
