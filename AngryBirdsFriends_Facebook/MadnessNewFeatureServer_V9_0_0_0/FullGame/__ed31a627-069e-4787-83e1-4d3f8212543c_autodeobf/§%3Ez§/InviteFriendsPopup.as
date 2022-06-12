package §>z§
{
   import §!#C§.§1%§;
   import §"!n§.§"!^§;
   import §%!-§.§?l§;
   import §8#K§.§3Z§;
   import §=E§.§0"9§;
   import §=E§.§<T§;
   import §?!]§.§6#k§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §4!%§ implements §%!#§
   {
      
      private static const §6x§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §#"`§:Dictionary;
      
      private var §<$,§:Array;
      
      private var §&r§:MovieClip;
      
      private var §4$'§:Boolean = true;
      
      private var §4$?§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §6$A§.§1!m§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§?l§.§3m§.Views.PopupCustomInvite[0],ID,§6x§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§&r§ = §&!M§.mClip;
         this.§&r§.btnInvite.addEventListener(MouseEvent.CLICK,this.§;!g§);
         this.§&r§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§ #6§);
         this.§&r§.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         this.§&r§.friendsCounterBar.gotoAndStop(0);
         §6#G§ = true;
         this.§4$'§ = true;
         this.§4$?§ = null;
         this.§&r§.WaitingForReply.visible = false;
         super.init();
         §+#=§.displayObject.y = 254;
         §@z§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§<$,§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§<$,§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§6x§,param2);
         this.§&r§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §4#H§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§&r§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §%#p§ = 0;
         §1#M§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§0"9§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§0"9§> = §<T§.§=$+§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§"!^§.§%"D§(_loc3_.name),
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §%#<§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§#"`§ = §1%§.§`"H§.§+!V§();
         param1 = param1.filter(this.§>!R§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§&r§.cantFindInviteFriend;
      }
      
      private function §>!R§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§#"`§[param1.id] == null && !param1.sent;
      }
      
      private function § #6§(param1:MouseEvent) : void
      {
         if(!this.§4$?§)
         {
            this.§4$?§ = new Timer(1000);
            this.§4$?§.addEventListener(TimerEvent.TIMER,this.§]"u§);
            this.§4$?§.start();
            §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
            this.§^%§();
         }
      }
      
      private function §;!g§(param1:MouseEvent) : void
      {
         if(!this.§4$?§)
         {
            this.§4$?§ = new Timer(1000);
            this.§4$?§.addEventListener(TimerEvent.TIMER,this.§]"u§);
            this.§4$?§.start();
            §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
            this.§^%§();
         }
      }
      
      private function §]"u§(param1:TimerEvent) : void
      {
         if(this.§4$?§)
         {
            this.§4$?§.stop();
            this.§4$?§.removeEventListener(TimerEvent.TIMER,this.§]"u§);
            this.§4$?§ = null;
         }
      }
      
      private function §^%§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§4$'§)
         {
            return;
         }
         this.§4$'§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §?!k§)
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
            §%#p§ += _loc1_.length;
            § !+§.addCallback("inviteRequestReceived",this.§7#F§);
            § !+§.addCallback("invitationBatchSent",this.§'#s§);
            § !+§.addCallback("invitationBatchCancel",this.§79§);
            dispatchEvent(new §6#k§(§6#k§.§"N§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§4$'§ = true;
            §%#<§(this.finalPlayerList,false);
            §+#=§.selected = false;
         }
      }
      
      private function §79§() : void
      {
         § !+§.§?!§("invitationBatchCancel",this.§'#s§);
         § !+§.§?!§("invitationBatchSent",this.§'#s§);
         this.§4$'§ = true;
         §%#<§(this.finalPlayerList,false);
         TextField(this.§&r§.searchbar).text = "Search...";
      }
      
      private function §'#s§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         § !+§.§?!§("invitationBatchSent",this.§'#s§);
         § !+§.§?!§("invitationBatchCancel",this.§'#s§);
         this.§4$'§ = true;
         if(param1 != null)
         {
            this.§&r§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §?!k§)
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
            §1#M§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §6#k§(§6#k§.§]"!§,_loc2_,true));
            this.§^%§();
         }
         else
         {
            §%#<§(this.finalPlayerList,false);
         }
      }
      
      private function §7#F§() : void
      {
         § !+§.§?!§("inviteRequestReceived",this.§7#F§);
         this.§4$'§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§&r§.btnInviteMore.visible = false;
            this.§&r§.btnInvite.visible = false;
         }
         else if(this.§&r§.btnInviteMore.visible)
         {
            this.§&r§.btnInviteMore.visible = true;
            this.§&r§.btnInvite.visible = false;
         }
         else
         {
            this.§&r§.btnInviteMore.visible = false;
            this.§&r§.btnInvite.visible = true;
         }
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
   }
}
