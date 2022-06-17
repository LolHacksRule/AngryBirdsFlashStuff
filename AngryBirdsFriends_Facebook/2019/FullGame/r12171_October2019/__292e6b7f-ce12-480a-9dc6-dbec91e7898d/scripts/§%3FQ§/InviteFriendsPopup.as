package §?Q§
{
   import §"#X§.§8#g§;
   import §"#X§.static;
   import §";§.§false§;
   import §#$?§.§7!b§;
   import §,#,§.§4!g§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7"X§.§2"R§;
   import §`"t§.§9§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §@!B§ implements §1k§
   {
      
      private static const §5"I§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §'$'§:Dictionary;
      
      private var §!"8§:Array;
      
      private var §8#M§:MovieClip;
      
      private var §!n§:Boolean = true;
      
      private var §%!_§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §[a§.§8#k§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§false§.§4#;§.Views.PopupCustomInvite[0],ID,§5"I§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§8#M§ = §;#'§.mClip;
         this.§8#M§.btnInvite.addEventListener(MouseEvent.CLICK,this.§0#f§);
         this.§8#M§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§3!3§);
         this.§8#M§.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         this.§8#M§.friendsCounterBar.gotoAndStop(0);
         §'"!§ = true;
         this.§!n§ = true;
         this.§%!_§ = null;
         this.§8#M§.WaitingForReply.visible = false;
         super.init();
         §%!R§.displayObject.y = 254;
         §2#!§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§!"8§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§!"8§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§5"I§,param2);
         this.§8#M§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §=$+§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§8#M§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §7#^§ = 0;
         §@b§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:static = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<static> = §8#g§.§5!9§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§9#0§.§9!1§(_loc3_.name),
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §3#L§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§'$'§ = §4!g§.§+!,§.§;"q§();
         param1 = param1.filter(this.§%"V§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§8#M§.cantFindInviteFriend;
      }
      
      private function §%"V§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§'$'§[param1.id] == null && !param1.sent;
      }
      
      private function §3!3§(param1:MouseEvent) : void
      {
         if(!this.§%!_§)
         {
            this.§%!_§ = new Timer(1000);
            this.§%!_§.addEventListener(TimerEvent.TIMER,this.§8!y§);
            this.§%!_§.start();
            § b§.playSound("Menu_Confirm",§ b§.§;$5§);
            this.§8#-§();
         }
      }
      
      private function §0#f§(param1:MouseEvent) : void
      {
         if(!this.§%!_§)
         {
            this.§%!_§ = new Timer(1000);
            this.§%!_§.addEventListener(TimerEvent.TIMER,this.§8!y§);
            this.§%!_§.start();
            § b§.playSound("Menu_Confirm",§ b§.§;$5§);
            this.§8#-§();
         }
      }
      
      private function §8!y§(param1:TimerEvent) : void
      {
         if(this.§%!_§)
         {
            this.§%!_§.stop();
            this.§%!_§.removeEventListener(TimerEvent.TIMER,this.§8!y§);
            this.§%!_§ = null;
         }
      }
      
      private function §8#-§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§!n§)
         {
            return;
         }
         this.§!n§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §!#U§)
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
            §7#^§ += _loc1_.length;
            §7!b§.addCallback("inviteRequestReceived",this.§@"2§);
            §7!b§.addCallback("invitationBatchSent",this.§@"8§);
            §7!b§.addCallback("invitationBatchCancel",this.§]"P§);
            dispatchEvent(new §2"R§(§2"R§.§##<§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§!n§ = true;
            §3#L§(this.finalPlayerList,false);
            §%!R§.selected = false;
         }
      }
      
      private function §]"P§() : void
      {
         §7!b§.§&#&§("invitationBatchCancel",this.§@"8§);
         §7!b§.§&#&§("invitationBatchSent",this.§@"8§);
         this.§!n§ = true;
         §3#L§(this.finalPlayerList,false);
         TextField(this.§8#M§.searchbar).text = "Search...";
      }
      
      private function §@"8§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         §7!b§.§&#&§("invitationBatchSent",this.§@"8§);
         §7!b§.§&#&§("invitationBatchCancel",this.§@"8§);
         this.§!n§ = true;
         if(param1 != null)
         {
            this.§8#M§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §!#U§)
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
            for each(_loc5_ in _loc2_)
            {
               _loc6_ = 0;
               while(_loc6_ < this.finalPlayerList.length)
               {
                  if(this.finalPlayerList[_loc6_].id == _loc5_.id)
                  {
                     this.finalPlayerList.splice(_loc6_,1);
                     break;
                  }
                  _loc6_++;
               }
            }
            §@b§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §2"R§(§2"R§.§&!S§,_loc2_,true));
            this.§8#-§();
         }
         else
         {
            §3#L§(this.finalPlayerList,false);
         }
      }
      
      private function §@"2§() : void
      {
         §7!b§.§&#&§("inviteRequestReceived",this.§@"2§);
         this.§!n§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§8#M§.btnInviteMore.visible = false;
            this.§8#M§.btnInvite.visible = false;
         }
         else if(this.§8#M§.btnInviteMore.visible)
         {
            this.§8#M§.btnInviteMore.visible = true;
            this.§8#M§.btnInvite.visible = false;
         }
         else
         {
            this.§8#M§.btnInviteMore.visible = false;
            this.§8#M§.btnInvite.visible = true;
         }
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
   }
}
