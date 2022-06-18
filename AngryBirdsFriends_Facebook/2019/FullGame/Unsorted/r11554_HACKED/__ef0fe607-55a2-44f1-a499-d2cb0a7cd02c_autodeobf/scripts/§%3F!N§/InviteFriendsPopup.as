package §?!N§
{
   import §!§.§="D§;
   import §"!>§.§'!x§;
   import §%#v§.§0"j§;
   import §-"h§.§2$;§;
   import §-"h§.§5!b§;
   import §7#j§.§@"F§;
   import §8"b§.§?$!§;
   import §>"9§.§[#%§;
   import §]"'§.§-!#§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §<!4§ implements §="D§
   {
      
      private static const §0#z§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §]!X§:Dictionary;
      
      private var §9!>§:Array;
      
      private var §%§:MovieClip;
      
      private var § #h§:Boolean = true;
      
      private var §9#@§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §2"O§.§`>§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§0"j§.§-i§.Views.PopupCustomInvite[0],ID,§0#z§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§%§ = §8#Y§.mClip;
         this.§%§.btnInvite.addEventListener(MouseEvent.CLICK,this.§5#8§);
         this.§%§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§-"b§);
         this.§%§.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         this.§%§.friendsCounterBar.gotoAndStop(0);
         §8!>§ = true;
         this.§ #h§ = true;
         this.§9#@§ = null;
         this.§%§.WaitingForReply.visible = false;
         super.init();
         §7#$§.displayObject.y = 254;
         §#";§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§9!>§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§9!>§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§0#z§,param2);
         this.§%§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §?!z§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§%§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §8""§ = 0;
         §+#3§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§2$;§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§2$;§> = §5!b§.§?"C§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§?$!§.§#"^§(_loc3_.name),
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §5!j§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§]!X§ = §-!#§.§?q§.§]#0§();
         param1 = param1.filter(this.§18§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§%§.cantFindInviteFriend;
      }
      
      private function §18§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§]!X§[param1.id] == null && !param1.sent;
      }
      
      private function §-"b§(param1:MouseEvent) : void
      {
         if(!this.§9#@§)
         {
            this.§9#@§ = new Timer(1000);
            this.§9#@§.addEventListener(TimerEvent.TIMER,this.§+!4§);
            this.§9#@§.start();
            §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
            this.§&Y§();
         }
      }
      
      private function §5#8§(param1:MouseEvent) : void
      {
         if(!this.§9#@§)
         {
            this.§9#@§ = new Timer(1000);
            this.§9#@§.addEventListener(TimerEvent.TIMER,this.§+!4§);
            this.§9#@§.start();
            §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
            this.§&Y§();
         }
      }
      
      private function §+!4§(param1:TimerEvent) : void
      {
         if(this.§9#@§)
         {
            this.§9#@§.stop();
            this.§9#@§.removeEventListener(TimerEvent.TIMER,this.§+!4§);
            this.§9#@§ = null;
         }
      }
      
      private function §&Y§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§ #h§)
         {
            return;
         }
         this.§ #h§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §4#x§)
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
            §8""§ += _loc1_.length;
            §@"F§.addCallback("inviteRequestReceived",this.§^J§);
            §@"F§.addCallback("invitationBatchSent",this.§5#K§);
            §@"F§.addCallback("invitationBatchCancel",this.§1"=§);
            dispatchEvent(new §'!x§(§'!x§.§!!_§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§ #h§ = true;
            §5!j§(this.finalPlayerList,false);
            §7#$§.selected = false;
         }
      }
      
      private function §1"=§() : void
      {
         §@"F§.§=F§("invitationBatchCancel",this.§5#K§);
         §@"F§.§=F§("invitationBatchSent",this.§5#K§);
         this.§ #h§ = true;
         §5!j§(this.finalPlayerList,false);
         TextField(this.§%§.searchbar).text = "Search...";
      }
      
      private function §5#K§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         §@"F§.§=F§("invitationBatchSent",this.§5#K§);
         §@"F§.§=F§("invitationBatchCancel",this.§5#K§);
         this.§ #h§ = true;
         if(param1 != null)
         {
            this.§%§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §4#x§)
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
            §+#3§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §'!x§(§'!x§.§2!E§,_loc2_,true));
            this.§&Y§();
         }
         else
         {
            §5!j§(this.finalPlayerList,false);
         }
      }
      
      private function §^J§() : void
      {
         §@"F§.§=F§("inviteRequestReceived",this.§^J§);
         this.§ #h§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§%§.btnInviteMore.visible = false;
            this.§%§.btnInvite.visible = false;
         }
         else if(this.§%§.btnInviteMore.visible)
         {
            this.§%§.btnInviteMore.visible = true;
            this.§%§.btnInvite.visible = false;
         }
         else
         {
            this.§%§.btnInviteMore.visible = false;
            this.§%§.btnInvite.visible = true;
         }
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
   }
}
