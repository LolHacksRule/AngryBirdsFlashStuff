package §?"R§
{
   import §%$!§.§1#`§;
   import §+"%§.§6X§;
   import §1!@§.§&#u§;
   import §4#%§.§@#@§;
   import §7z§.§7"m§;
   import §7z§.§[$,§;
   import §8§.§#$+§;
   import §9!s§.§!#d§;
   import §<!O§.§@#`§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §?z§ implements §@#@§
   {
      
      private static const §4!E§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §!#&§:Dictionary;
      
      private var §5!!§:Array;
      
      private var §8!J§:MovieClip;
      
      private var §>"u§:Boolean = true;
      
      private var §"#_§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §@`§.§4!i§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§@#`§.§#!c§.Views.PopupCustomInvite[0],ID,§4!E§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§8!J§ = §7!j§.mClip;
         this.§8!J§.btnInvite.addEventListener(MouseEvent.CLICK,this.§,!r§);
         this.§8!J§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§6#9§);
         this.§8!J§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         this.§8!J§.friendsCounterBar.gotoAndStop(0);
         §@!c§ = true;
         this.§>"u§ = true;
         this.§"#_§ = null;
         this.§8!J§.WaitingForReply.visible = false;
         super.init();
         §!#3§.displayObject.y = 254;
         §6!P§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§5!!§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§5!!§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§4!E§,param2);
         this.§8!J§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §;#O§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§8!J§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         § &§ = 0;
         §'#z§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§[$,§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§[$,§> = §7"m§.§6">§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§&#u§.§^!q§(_loc3_.name),
               "picture":_loc3_.§8#;§,
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §0!e§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§!#&§ = §1#`§.§3!]§.§ #j§();
         param1 = param1.filter(this.§&!9§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§8!J§.cantFindInviteFriend;
      }
      
      private function §&!9§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§!#&§[param1.id] == null && !param1.sent;
      }
      
      private function §6#9§(param1:MouseEvent) : void
      {
         if(!this.§"#_§)
         {
            this.§"#_§ = new Timer(1000);
            this.§"#_§.addEventListener(TimerEvent.TIMER,this.§>"3§);
            this.§"#_§.start();
            §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
            this.§!#p§();
         }
      }
      
      private function §,!r§(param1:MouseEvent) : void
      {
         if(!this.§"#_§)
         {
            this.§"#_§ = new Timer(1000);
            this.§"#_§.addEventListener(TimerEvent.TIMER,this.§>"3§);
            this.§"#_§.start();
            §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
            this.§!#p§();
         }
      }
      
      private function §>"3§(param1:TimerEvent) : void
      {
         if(this.§"#_§)
         {
            this.§"#_§.stop();
            this.§"#_§.removeEventListener(TimerEvent.TIMER,this.§>"3§);
            this.§"#_§ = null;
         }
      }
      
      private function §!#p§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§>"u§)
         {
            return;
         }
         this.§>"u§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §@s§)
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
            § &§ += _loc1_.length;
            §6X§.addCallback("inviteRequestReceived",this.§0!;§);
            §6X§.addCallback("invitationBatchSent",this.§9$-§);
            §6X§.addCallback("invitationBatchCancel",this.§-#F§);
            dispatchEvent(new §!#d§(§!#d§.§2!"§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§>"u§ = true;
            §0!e§(this.finalPlayerList,false);
            §!#3§.selected = false;
         }
      }
      
      private function §-#F§() : void
      {
         §6X§.§5!3§("invitationBatchCancel",this.§9$-§);
         §6X§.§5!3§("invitationBatchSent",this.§9$-§);
         this.§>"u§ = true;
         §0!e§(this.finalPlayerList,false);
         TextField(this.§8!J§.searchbar).text = "Search...";
         §!#3§.selected = false;
      }
      
      private function §9$-§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         §6X§.§5!3§("invitationBatchSent",this.§9$-§);
         §6X§.§5!3§("invitationBatchCancel",this.§9$-§);
         this.§>"u§ = true;
         if(param1 != null)
         {
            this.§8!J§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §@s§)
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
            §'#z§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §!#d§(§!#d§.§0!&§,_loc2_,true));
            this.§!#p§();
         }
         else
         {
            §0!e§(this.finalPlayerList,false);
         }
      }
      
      private function §0!;§() : void
      {
         §6X§.§5!3§("inviteRequestReceived",this.§0!;§);
         this.§>"u§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§8!J§.btnInviteMore.visible = false;
            this.§8!J§.btnInvite.visible = false;
         }
         else if(this.§8!J§.btnInviteMore.visible)
         {
            this.§8!J§.btnInviteMore.visible = true;
            this.§8!J§.btnInvite.visible = false;
         }
         else
         {
            this.§8!J§.btnInviteMore.visible = false;
            this.§8!J§.btnInvite.visible = true;
         }
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
   }
}
