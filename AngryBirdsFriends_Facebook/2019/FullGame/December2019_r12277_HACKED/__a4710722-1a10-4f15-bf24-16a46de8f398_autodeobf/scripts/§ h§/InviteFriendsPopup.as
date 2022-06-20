package § h§
{
   import § "v§.§4$4§;
   import §!!H§.§@"X§;
   import §#!G§.§-#]§;
   import §#!G§.§?$,§;
   import §4$A§.§=$5§;
   import §8#^§.§-B§;
   import §>#Y§.§6"k§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §&!x§ implements §=$5§
   {
      
      private static const §8#§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §?!Z§:Dictionary;
      
      private var §["K§:Array;
      
      private var §3`§:MovieClip;
      
      private var §[#6§:Boolean = true;
      
      private var §'!q§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §=@§.§9!x§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§&n§.§7a§.Views.PopupCustomInvite[0],ID,§8#§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§3`§ = §'o§.mClip;
         this.§3`§.btnInvite.addEventListener(MouseEvent.CLICK,this.§%"O§);
         this.§3`§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§1"7§);
         this.§3`§.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         this.§3`§.friendsCounterBar.gotoAndStop(0);
         §&H§ = true;
         this.§[#6§ = true;
         this.§'!q§ = null;
         this.§3`§.WaitingForReply.visible = false;
         super.init();
         §4#W§.displayObject.y = 254;
         §'"N§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§["K§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§["K§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§8#§,param2);
         this.§3`§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §`!z§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§3`§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §7" § = 0;
         §1!x§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§?$,§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§?$,§> = §-#]§.§0$%§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§@"X§.§+!'§(_loc3_.name),
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §@#n§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§?!Z§ = §6"k§.§3"1§.§0!o§();
         param1 = param1.filter(this.§!!n§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§3`§.cantFindInviteFriend;
      }
      
      private function §!!n§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§?!Z§[param1.id] == null && !param1.sent;
      }
      
      private function §1"7§(param1:MouseEvent) : void
      {
         if(!this.§'!q§)
         {
            this.§'!q§ = new Timer(1000);
            this.§'!q§.addEventListener(TimerEvent.TIMER,this.§`"d§);
            this.§'!q§.start();
            §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
            this.§4!I§();
         }
      }
      
      private function §%"O§(param1:MouseEvent) : void
      {
         if(!this.§'!q§)
         {
            this.§'!q§ = new Timer(1000);
            this.§'!q§.addEventListener(TimerEvent.TIMER,this.§`"d§);
            this.§'!q§.start();
            §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
            this.§4!I§();
         }
      }
      
      private function §`"d§(param1:TimerEvent) : void
      {
         if(this.§'!q§)
         {
            this.§'!q§.stop();
            this.§'!q§.removeEventListener(TimerEvent.TIMER,this.§`"d§);
            this.§'!q§ = null;
         }
      }
      
      private function §4!I§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§[#6§)
         {
            return;
         }
         this.§[#6§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §&#5§)
            {
               break;
            }
            if(_loc3_.selected)
            {
               _loc1_.push(_loc3_.id);
               _loc2_++;
            }
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = JSON.stringify(_loc1_);
            §7" § += _loc1_.length;
            §=#c§.addCallback("inviteRequestReceived",this.§!3§);
            §=#c§.addCallback("invitationBatchSent",this.§%$C§);
            §=#c§.addCallback("invitationBatchCancel",this.§[^§);
            dispatchEvent(new §-B§(§-B§.§9#2§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§[#6§ = true;
            §@#n§(this.finalPlayerList,false);
            §4#W§.selected = false;
         }
      }
      
      private function §[^§() : void
      {
         §=#c§.§`$ §("invitationBatchCancel",this.§%$C§);
         §=#c§.§`$ §("invitationBatchSent",this.§%$C§);
         this.§[#6§ = true;
         §@#n§(this.finalPlayerList,false);
         TextField(this.§3`§.searchbar).text = "Search...";
      }
      
      private function §%$C§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         §=#c§.§`$ §("invitationBatchSent",this.§%$C§);
         §=#c§.§`$ §("invitationBatchCancel",this.§%$C§);
         this.§[#6§ = true;
         if(param1 != null)
         {
            this.§3`§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §&#5§)
               {
                  break;
               }
               if(_loc4_.selected)
               {
                  _loc4_.selected = false;
                  _loc4_.sent = true;
                  _loc2_.push(_loc4_);
                  _loc3_++;
               }
            }
            loop1:
            for each(_loc5_ in _loc2_)
            {
               _loc6_ = 0;
               while(_loc6_ < this.finalPlayerList.length)
               {
                  if(this.finalPlayerList[_loc6_].id == _loc5_.id)
                  {
                     this.finalPlayerList.splice(_loc6_,1);
                     continue loop1;
                  }
                  _loc6_++;
               }
            }
            §1!x§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §-B§(§-B§.§5J§,_loc2_,true));
            this.§4!I§();
         }
         else
         {
            §@#n§(this.finalPlayerList,false);
         }
      }
      
      private function §!3§() : void
      {
         §=#c§.§`$ §("inviteRequestReceived",this.§!3§);
         this.§[#6§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§3`§.btnInviteMore.visible = false;
            this.§3`§.btnInvite.visible = false;
         }
         else if(this.§3`§.btnInviteMore.visible)
         {
            this.§3`§.btnInviteMore.visible = true;
            this.§3`§.btnInvite.visible = false;
         }
         else
         {
            this.§3`§.btnInviteMore.visible = false;
            this.§3`§.btnInvite.visible = true;
         }
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §9M§() : String
      {
         return ID;
      }
   }
}
