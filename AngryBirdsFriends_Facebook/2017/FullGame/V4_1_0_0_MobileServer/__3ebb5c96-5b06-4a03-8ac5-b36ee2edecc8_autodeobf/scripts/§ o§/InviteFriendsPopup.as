package § o§
{
   import §&"J§.§"!F§;
   import §1#W§.§!#&§;
   import §6!0§.§ "8§;
   import §8#D§.§=>§;
   import §@!n§.§`$<§;
   import §[§.§]"w§;
   import §]#p§.§%!?§;
   import §]#p§.§1#]§;
   import §^#]§.§1#H§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends §6#=§ implements §]"w§
   {
      
      private static const §^#K§:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var §3!o§:Dictionary;
      
      private var §6#I§:Array;
      
      private var §>"g§:MovieClip;
      
      private var §<"3§:Boolean = true;
      
      private var §@#_§:Timer;
      
      public function InviteFriendsPopup(param1:int, param2:int)
      {
         var _loc3_:Class = §+$#§.§["`§("SelectMaxCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         super(param1,param2,§=>§.§%" §.Views.PopupCustomInvite[0],ID,§^#K§,_loc4_);
      }
      
      override protected function init() : void
      {
         this.§>"g§ = §1"6§.mClip;
         this.§>"g§.btnInvite.addEventListener(MouseEvent.CLICK,this.§;!#§);
         this.§>"g§.btnInviteMore.addEventListener(MouseEvent.CLICK,this.§5" §);
         this.§>"g§.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         this.§>"g§.friendsCounterBar.gotoAndStop(0);
         §6"H§ = true;
         this.§<"3§ = true;
         this.§@#_§ = null;
         this.§>"g§.WaitingForReply.visible = false;
         super.init();
         §+q§.displayObject.y = 254;
         §4#n§.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(param1:Array) : void
      {
         this.§6#I§ = param1;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.§6#I§;
      }
      
      override protected function showFriendsCount(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.min(§^#K§,param2);
         this.§>"g§.friendsCounter.text = param1 + "/" + _loc3_ + " " + §7$%§;
         var _loc4_:int = Math.floor(param1 / _loc3_ * 100);
         if(isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         this.§>"g§.friendsCounterBar.gotoAndStop(_loc4_);
      }
      
      override protected function showRequestsCount(param1:int, param2:int) : void
      {
         §]h§ = 0;
         §!"H§ = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var _loc3_:§1#]§ = null;
         var _loc4_:Object = null;
         var _loc1_:Vector.<§1#]§> = §%!?§.§?!x§();
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = {
               "id":_loc3_.userID,
               "name":§1#H§.§<"#§(_loc3_.name),
               "picture":_loc3_.§0#i§,
               "selected":false
            };
            _loc2_.push(_loc4_);
         }
         this.finalPlayerList = _loc2_;
         §0$'§(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(param1:Array) : void
      {
         this.§3!o§ = §"!F§.§ "D§.§>"Z§();
         param1 = param1.filter(this.§<"Q§);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.§>"g§.cantFindInviteFriend;
      }
      
      private function §<"Q§(param1:Object, param2:int, param3:Array) : Boolean
      {
         return this.§3!o§[param1.id] == null && !param1.sent;
      }
      
      private function §5" §(param1:MouseEvent) : void
      {
         if(!this.§@#_§)
         {
            this.§@#_§ = new Timer(1000);
            this.§@#_§.addEventListener(TimerEvent.TIMER,this.§>-§);
            this.§@#_§.start();
            §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
            this.§!"_§();
         }
      }
      
      private function §;!#§(param1:MouseEvent) : void
      {
         if(!this.§@#_§)
         {
            this.§@#_§ = new Timer(1000);
            this.§@#_§.addEventListener(TimerEvent.TIMER,this.§>-§);
            this.§@#_§.start();
            §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
            this.§!"_§();
         }
      }
      
      private function §>-§(param1:TimerEvent) : void
      {
         if(this.§@#_§)
         {
            this.§@#_§.stop();
            this.§@#_§.removeEventListener(TimerEvent.TIMER,this.§>-§);
            this.§@#_§ = null;
         }
      }
      
      private function §!"_§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(!this.§<"3§)
         {
            return;
         }
         this.§<"3§ = false;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc2_ >= §%#M§)
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
            §]h§ += _loc1_.length;
            § "8§.addCallback("inviteRequestReceived",this.§#$-§);
            § "8§.addCallback("invitationBatchSent",this.§"q§);
            § "8§.addCallback("invitationBatchCancel",this.§,t§);
            dispatchEvent(new §`$<§(§`$<§.§ V§,{
               "userId":_loc4_,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.§<"3§ = true;
            §0$'§(this.finalPlayerList,false);
            §+q§.selected = false;
         }
      }
      
      private function §,t§() : void
      {
         § "8§.§+#R§("invitationBatchCancel",this.§"q§);
         § "8§.§+#R§("invitationBatchSent",this.§"q§);
         this.§<"3§ = true;
         §0$'§(this.finalPlayerList,false);
         TextField(this.§>"g§.searchbar).text = "Search...";
      }
      
      private function §"q§(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         § "8§.§+#R§("invitationBatchSent",this.§"q§);
         § "8§.§+#R§("invitationBatchCancel",this.§"q§);
         this.§<"3§ = true;
         if(param1 != null)
         {
            this.§>"g§.CheckAnimation.gotoAndPlay(1);
            _loc2_ = [];
            _loc3_ = 0;
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc3_ >= §%#M§)
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
            §!"H§ += _loc3_;
            checkIfBatchInProgress();
            dispatchEvent(new §`$<§(§`$<§.§^#$§,_loc2_,true));
            this.§!"_§();
         }
         else
         {
            §0$'§(this.finalPlayerList,false);
         }
      }
      
      private function §#$-§() : void
      {
         § "8§.§+#R§("inviteRequestReceived",this.§#$-§);
         this.§<"3§ = true;
      }
      
      override protected function setSendButtonsVisibility(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.§>"g§.btnInviteMore.visible = false;
            this.§>"g§.btnInvite.visible = false;
         }
         else if(this.§>"g§.btnInviteMore.visible)
         {
            this.§>"g§.btnInviteMore.visible = true;
            this.§>"g§.btnInvite.visible = false;
         }
         else
         {
            this.§>"g§.btnInviteMore.visible = false;
            this.§>"g§.btnInvite.visible = true;
         }
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
   }
}
