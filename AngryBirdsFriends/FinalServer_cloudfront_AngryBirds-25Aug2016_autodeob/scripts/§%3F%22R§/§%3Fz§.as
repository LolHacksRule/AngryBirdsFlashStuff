package §?"R§
{
   import §2!X§.§?"D§;
   import §2"-§.§@t§;
   import §6"r§.§9!0§;
   import §8§.§#$+§;
   import §]$9§.§5$5§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §?z§ extends AbstractPopup
   {
      
      public static const §@s§:int = 10;
      
      public static var §%i§:int = 10;
      
      public static const §@3§:String = "Requests sent";
      
      public static const §;#O§:String = "selected";
      
      public static var §@!c§:Boolean = true;
       
      
      private var § !<§:int = -1;
      
      private const §9%§:uint = 10066329;
      
      private const §`#9§:Number = 0.5;
      
      private var §&u§:int = 0;
      
      private var §2!H§:Array;
      
      protected var §6!P§:§?"D§;
      
      protected var §!#3§:§9!0§;
      
      protected var §'#z§:int;
      
      protected var § &§:int;
      
      protected var §1!E§:int;
      
      private var §8!J§:MovieClip;
      
      private var § O§:MovieClip;
      
      public function §?z§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§ !<§ = param5;
         this.§ O§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§8!J§ = §7!j§.mClip;
         this.§8!J§.CheckAnimation.gotoAndStop(0);
         this.§8!J§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§]d§);
         this.§8!J§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§+!e§);
         if(this.§ O§ == null)
         {
            _loc1_ = §@`§.§4!i§("SelectAllCheckBox");
            this.§ O§ = new _loc1_();
         }
         this.§!#3§ = new §9!0§(this.§ O§,false);
         this.§!#3§.displayObject.addEventListener(MouseEvent.CLICK,this.§#!!§);
         this.§!#3§.displayObject.addEventListener(Event.CHANGE,this.§^"5§);
         this.§8!J§.addChildAt(this.§!#3§.displayObject,this.§8!J§.numChildren - 1);
         this.§!#3§.displayObject.visible = §@!c§;
         this.§8!J§.inviteScrollbar.scrollbarArea.visible = false;
         this.§8!J§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§8!J§.searchbar).addEventListener(Event.CHANGE,this.§?"b§);
         TextField(this.§8!J§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§%#8§);
         this.§,#M§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§ &§ = 0;
         this.§!#3§.displayObject.x = 184;
         this.§!#3§.displayObject.y = 142;
         this.§6!P§.scrollerSprite.x = 184;
         this.§6!P§.scrollerSprite.y = 288;
      }
      
      public function get §0D§() : int
      {
         return this.§1!E§;
      }
      
      public function set §0D§(param1:int) : void
      {
         this.§1!E§ = param1;
      }
      
      private function §]d§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         this.§6!P§.scroll(-4);
         this.§<$5§();
      }
      
      private function §+!e§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         this.§6!P§.scroll(4);
         this.§<$5§();
      }
      
      private function §<$5§() : void
      {
         if(this.§6!P§.§6"Z§(1))
         {
            this.§';§(this.§8!J§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§';§(this.§8!J§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§6!P§.§6"Z§(-1))
         {
            this.§';§(this.§8!J§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§';§(this.§8!J§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §';§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§9%§,this.§`#9§);
            }
         }
         else if(!param1.mouseEnabled)
         {
            param1.mouseEnabled = true;
            setTint(param1,0,0);
         }
      }
      
      protected function checkIfBatchInProgress() : void
      {
         if(this.§1!E§ > 0)
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
      
      private function §%#8§(param1:FocusEvent) : void
      {
         if(TextField(this.§8!J§.searchbar).text == "Search...")
         {
            TextField(this.§8!J§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §?"b§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§8!J§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§4!B§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§4!B§(_loc3_);
      }
      
      private function §#!!§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
      }
      
      public function §3>§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§0!s§();
         var _loc2_:Boolean = this.§!#3§.selected;
         for each(_loc3_ in this.§2!H§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§ !<§)
                     {
                        _loc4_.selected = false;
                     }
                     else
                     {
                        _loc4_.selected = true;
                        _loc1_++;
                     }
                  }
                  else
                  {
                     _loc4_.selected = false;
                  }
               }
            }
         }
         this.§3"-§();
         this.§6!P§.refresh();
      }
      
      private function §0!s§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.finalPlayerList)
         {
            if(_loc2_ && _loc2_.selected)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected function §3"-§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc1_:int = 0;
         var _loc2_:Array = [];
         for each(_loc3_ in this.finalPlayerList)
         {
            if(_loc3_ && _loc3_.selected)
            {
               _loc1_++;
            }
            else if(this.§ !<§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§ !<§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§6!P§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§&u§ = _loc1_;
         if(this.§2!H§ && this.§2!H§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§'#z§ > 0)
         {
            this.showRequestsCount(this.§'#z§,this.§ &§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§<$5§();
      }
      
      protected function setSendButtonsVisibility(param1:Boolean) : void
      {
      }
      
      protected function get noFriendsMessage() : MovieClip
      {
         return null;
      }
      
      protected function showRequestsCount(param1:int, param2:int) : void
      {
      }
      
      protected function showFriendsCount(param1:int, param2:int) : void
      {
      }
      
      private function §,#M§() : void
      {
         this.§6!P§ = new §?"D§(615,255,null,§@t§,0,2);
         this.§6!P§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§-!Q§);
         this.§8!J§.addChild(this.§6!P§.scrollerSprite);
      }
      
      private function §4!B§(param1:Array) : void
      {
         this.§2!H§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§2!H§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§6!P§.data = this.§2!H§;
         this.§3"-§();
      }
      
      private function §-!Q§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Select",§#$+§.§'!o§);
         this.§3"-§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §4!c§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§8!J§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §8G§.§%#S§.§+"X§.§1#_§(this.§4!c§);
         var _loc2_:§5$5§ = new §5$5§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§8!J§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§0!e§(_loc3_);
      }
      
      protected function §0!e§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§4!B§(this.finalPlayerList);
         if(param2 && §@!c§ && !this.§!#3§.selected)
         {
            this.§!#3§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§8!J§.WaitingForReply.visible = false;
         if(this.§!#3§)
         {
            this.§!#3§.displayObject.visible = false;
         }
         if(this.§8!J§ && this.§8!J§.inviteScrollbar)
         {
            this.§8!J§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §@![§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §""<§(param1:Object, param2:Object) : int
      {
         if(param1.name < param2.name)
         {
            return -1;
         }
         if(param1.name > param2.name)
         {
            return 1;
         }
         return 0;
      }
      
      public function §2B§(param1:Object, param2:Object) : int
      {
         var _loc3_:int = Math.random() * 5;
         _loc3_ -= 2;
         if(_loc3_ <= -1)
         {
            return -1;
         }
         if(_loc3_ >= 1)
         {
            return 1;
         }
         return 0;
      }
      
      protected function set finalPlayerList(param1:Array) : void
      {
      }
      
      protected function get finalPlayerList() : Array
      {
         return [];
      }
      
      override public function dispose() : void
      {
         this.§!#3§.displayObject.removeEventListener(Event.SELECT,this.§#!!§);
         this.§!#3§.displayObject.removeEventListener(Event.CHANGE,this.§^"5§);
         super.dispose();
      }
      
      private function §^"5§(param1:Event) : void
      {
         this.§3>§();
      }
   }
}
