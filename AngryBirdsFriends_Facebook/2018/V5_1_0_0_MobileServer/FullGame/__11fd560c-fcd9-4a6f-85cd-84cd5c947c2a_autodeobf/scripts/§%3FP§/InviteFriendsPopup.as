package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §0#m§.§8#§;
   import §2G§.§&"+§;
   import §7!%§.§&#k§;
   import §7!%§.§4"I§;
   import §@!M§.§!"p§;
   import §[#[§.§-^§;
   import §`!e§.§=Z§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §,"L§ implements §8#§
   {
      
      private static const §!"$§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §-$,§:Dictionary;
      
      private var §[!O§:Array;
      
      private var §0!Q§:MovieClip;
      
      private var §;#e§:Boolean = true;
      
      private var §+#g§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §!"f§.§##?§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§1Q§.§5T§.Views.PopupCustomInvite[0],ID,§!"$§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§0!Q§ = §,#2§.mClip;
         this.§0!Q§.btnInvite.addEventListener(MouseEvent.CLICK,this.§=O§);
         this.§0!Q§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§2!u§);
         this.§0!Q§.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         this.§0!Q§.friendsCounterBar.gotoAndStop(0);
         §;"L§ = true;
         this.§;#e§ = true;
         this.§+#g§ = null;
         this.§0!Q§.WaitingForReply.visible = false;
         super.init();
         §]# §.displayObject.y = 254;
         §=!6§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§[!O§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§[!O§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§!"$§,param2);
         this.§0!Q§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §&#<§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§0!Q§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §<[§ = 0;
         §1!w§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§&#k§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§&#k§> = §4"I§.§-!m§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§-^§.§`#&§(_loc3_.name),
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §0#_§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§-$,§ = §&"+§.§6!§.§>?§();
         param1 = param1.filter(this.§2#=§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§0!Q§.cantFindInviteFriend;
      }
      
      private function §2#=§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§-$,§[param1.id] == null && !param1.sent;
      }
      
      private function §2!u§(param1:MouseEvent) : void
      {
         if(!this.§+#g§)
         {
            this.§+#g§ = new Timer(1000);
            this.§+#g§.addEventListener(TimerEvent.TIMER,this.§4#j§);
            this.§+#g§.start();
            §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
            this.§`"7§();
         }
      }
      
      private function §=O§(param1:MouseEvent) : void
      {
         if(!this.§+#g§)
         {
            this.§+#g§ = new Timer(1000);
            this.§+#g§.addEventListener(TimerEvent.TIMER,this.§4#j§);
            this.§+#g§.start();
            §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
            this.§`"7§();
         }
      }
      
      private function §4#j§(param1:TimerEvent) : void
      {
         if(this.§+#g§)
         {
            this.§+#g§.stop();
            this.§+#g§.removeEventListener(TimerEvent.TIMER,this.§4#j§);
            this.§+#g§ = null;
         }
      }
      
      private function §`"7§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§;#e§)
         {
            return;
         }
         this.§;#e§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §+$&§)
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
            §<[§ += _loc1_.length;
            §^!K§.addCallback("inviteRequestReceived",this.§]#2§);
            §^!K§.addCallback("invitationBatchSent",this.§7#_§);
            §^!K§.addCallback("invitationBatchCancel",this.§30§);
            dispatchEvent(new §=Z§(§=Z§.§[V§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§;#e§ = true;
            §0#_§(this.finalPlayerList,false);
            §]# §.selected = false;
         }
      }
      
      private function §30§() : void
      {
         §^!K§.§,"i§("invitationBatchCancel",this.§7#_§);
         §^!K§.§,"i§("invitationBatchSent",this.§7#_§);
         this.§;#e§ = true;
         §0#_§(this.finalPlayerList,false);
         TextField(this.§0!Q§.searchbar).text = "Search...";
      }
      
      private function §7#_§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         §^!K§.§,"i§("invitationBatchSent",this.§7#_§);
         §^!K§.§,"i§("invitationBatchCancel",this.§7#_§);
         this.§;#e§ = true;
         if(param1 != null)
         {
            this.§0!Q§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §+$&§)
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
            §1!w§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §=Z§(§=Z§.§%#g§,_loc2_,true));
            this.§`"7§();
         }
         else
         {
            §0#_§(this.finalPlayerList,false);
         }
      }
      
      private function §]#2§() : void
      {
         §^!K§.§,"i§("inviteRequestReceived",this.§]#2§);
         this.§;#e§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§0!Q§.btnInviteMore.visible = false;
            this.§0!Q§.btnInvite.visible = false;
         }
         else if(this.§0!Q§.btnInviteMore.visible)
         {
            this.§0!Q§.btnInviteMore.visible = true;
            this.§0!Q§.btnInvite.visible = false;
         }
         else
         {
            this.§0!Q§.btnInviteMore.visible = false;
            this.§0!Q§.btnInvite.visible = true;
         }
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
   }
}
