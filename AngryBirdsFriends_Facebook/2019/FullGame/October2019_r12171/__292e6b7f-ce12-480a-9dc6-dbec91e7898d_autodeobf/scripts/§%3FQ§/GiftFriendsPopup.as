package §?Q§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#$?§.§7!b§;
   import §,#,§.§4!g§;
   import §,#,§.§@§;
   import §3"V§.§ b§;
   import §4S§.§1!Y§;
   import §=#`§.GiftInboxPopup;
   import §`"t§.§9§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends §@!B§
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var §6!J§:Dictionary;
      
      private var §'$'§:Dictionary;
      
      private var §#"M§:Array;
      
      private var §8#M§:MovieClip;
      
      public function GiftFriendsPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      override protected function init() : void
      {
         this.§8#M§ = §;#'§.mClip;
         §'"!§ = true;
         super.init();
         this.§8#M§.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§+"t§);
         this.§8#M§.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.§!"r§);
         this.§8#M§.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         this.§8#M§.friendsCounterBar.gotoAndStop(0);
         §%!R§.displayObject.y = 222;
         §2#!§.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§#"M§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§#"M§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         this.§8#M§.friendsCounter.text = param1 + "/" + param2 + " " + §=$+§;
         var _loc3_:int = Math.floor(param1 / param2 * 100);
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         this.§8#M§.friendsCounterBar.gotoAndStop(_loc3_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §7#^§ = 0;
         §@b§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§"5§ = null;
         var _loc1_:Vector.<§"5§> = §8#g§.§4"-§();
         var _loc2_:Array = [];
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push({
               "selected":false,
               "id":_loc3_.userID,
               "name":§9#0§.§9!1§(_loc3_.name)
            });
         }
         §3#L§(_loc2_);
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§8#M§.btnSendMoreGifts.visible = false;
            this.§8#M§.btnSendGifts.visible = false;
         }
         else if(this.§8#M§.btnSendMoreGifts.visible)
         {
            this.§8#M§.btnSendMoreGifts.visible = true;
            this.§8#M§.btnSendGifts.visible = false;
         }
         else
         {
            this.§8#M§.btnSendMoreGifts.visible = false;
            this.§8#M§.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(§&c§ > 0)
         {
            this.§8#M§.btnSendMoreGifts.visible = true;
            this.§8#M§.btnSendGifts.visible = false;
         }
         else
         {
            this.§8#M§.btnSendMoreGifts.visible = false;
            this.§8#M§.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§6!J§ = §4!g§.§+!,§.§'!J§();
         this.§'$'§ = §4!g§.§+!,§.§;"q§();
         if(param1)
         {
            this.finalPlayerList = param1.filter(this.§?#5§);
         }
         this.§6!J§ = null;
         this.§'$'§ = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§8#M§.cantFindGiftFriend;
      }
      
      private function §?#5§(param1:*, param2:int, param3:Array) : Boolean
      {
         return this.§6!J§[param1.id] == null && this.§'$'§[param1.id] == null && !param1.sent && param1.id != userProgress.userID;
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §!"r§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§]"!§();
      }
      
      private function §+"t§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         §5#S§ = 0;
         this.§]"!§();
      }
      
      private function §]"!§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:Array = [];
         var _loc2_:int = §5#S§;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §!#U§ + §5#S§)
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
         §7#^§ += _loc1_.length;
         §7!b§.§7@§("updateSessionToken",§1!Y§.§?!j§);
         §7!b§.§7@§("flashSendGiftToFriends",userProgress.userName,_loc4_,§@#5§.§=D§(§@#5§.§^$'§));
         §7!b§.addCallback("giftsSentToUsers",this.§6#a§);
      }
      
      private function §6#a§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         §7!b§.§&#&§("giftsSentToUsers",this.§6#a§);
         if(param1 != null)
         {
            this.§8#M§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = §5#S§;
            _loc3_ = 0;
            _loc4_ = §5#S§;
            _loc5_ = 0;
            _loc6_ = 0;
            for each(_loc7_ in this.finalPlayerList)
            {
               if(_loc4_ < §!#U§ + §5#S§)
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
            §5#S§ = _loc5_;
            if(_loc3_ > 0)
            {
               §3";§.§#"'§().§`2§(_loc3_,"INBOX");
            }
            §@b§ += _loc4_ - _loc2_;
            this.checkIfBatchInProgress();
            §3#L§(this.finalPlayerList,false);
            this.showFriendsCount(_loc6_,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         var _loc3_:§,#@§ = new GiftInboxPopup(§@#D§.NORMAL,§5R§.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
      }
   }
}
