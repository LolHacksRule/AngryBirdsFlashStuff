package §7N§
{
   import §"",§.§`W§;
   import §&!&§.§ P§;
   import §<m§.§9d§;
   import §]!F§.§"!j§;
   import com.rovio.assets.§#!J§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §&=§ extends Popup
   {
      
      public static const §]R§:int = 50;
      
      public static var §-u§:int = 10;
      
      public static const §+f§:String = "Requests sent";
      
      public static const §1!§:String = "Friends selected";
       
      
      private const § [§:uint = 10066329;
      
      private const §[C§:Number = 0.5;
      
      private var §7P§:int = 0;
      
      private var §5"8§:Array;
      
      private var §#J§:§9d§;
      
      private var §5V§:§`W§;
      
      protected var §1n§:int;
      
      protected var §@o§:int;
      
      protected var §%!'§:int;
      
      public function §&=§(param1:XML, param2:§"!j§)
      {
         super(param1,param2);
         mClip.CheckAnimation.gotoAndStop(0);
         mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§%[§);
         mClip.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§%!4§);
         var _loc3_:Class = §#!J§.§1!Y§("SelectAllCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         this.§5V§ = new §`W§(_loc4_,false);
         this.§5V§.§3=§.addEventListener(Event.CHANGE,this.§ M§);
         this.§5V§.§3=§.x = 189;
         this.§5V§.§3=§.y = 252;
         mClip.addChildAt(this.§5V§.§3=§,mClip.numChildren - 1);
         mClip.inviteScrollbar.scrollbarArea.visible = false;
         mClip.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(mClip.searchbar).addEventListener(Event.CHANGE,this.§!!q§);
         TextField(mClip.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§#"3§);
         this.§[A§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
      }
      
      public function get §;!r§() : int
      {
         return this.§%!'§;
      }
      
      public function set §;!r§(param1:int) : void
      {
         this.§%!'§ = param1;
      }
      
      private function §%[§(param1:MouseEvent) : void
      {
         this.§#J§.scroll(-4);
         this.§0!y§();
      }
      
      private function §%!4§(param1:MouseEvent) : void
      {
         this.§#J§.scroll(4);
         this.§0!y§();
      }
      
      private function §0!y§() : void
      {
         if(this.§#J§.§>!e§(1))
         {
            this.§8!u§(mClip.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§8!u§(mClip.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§#J§.§>!e§(-1))
         {
            this.§8!u§(mClip.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§8!u§(mClip.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §8!u§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§ [§,this.§[C§);
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
         if(this.§%!'§ > 0)
         {
            mClip.btnInviteMore.visible = true;
            mClip.btnInvite.visible = false;
         }
         else
         {
            mClip.btnInviteMore.visible = false;
            mClip.btnInvite.visible = true;
         }
      }
      
      private function §#"3§(param1:FocusEvent) : void
      {
         if(TextField(mClip.searchbar).text == "Search...")
         {
            TextField(mClip.searchbar).text = "";
         }
      }
      
      private function §!!q§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(_loc2_ == "")
         {
            this.§9"@§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§9"@§(_loc3_);
      }
      
      private function § M§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§5"8§)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.selected = this.§5V§.selected;
               }
            }
         }
         this.§<"$§();
         this.§#J§.§'!d§();
      }
      
      protected function §<"$§() : void
      {
         var _loc2_:Object = null;
         this.§#J§.§'!d§();
         var _loc1_:int = 0;
         for each(_loc2_ in this.finalPlayerList)
         {
            if(_loc2_.selected)
            {
               _loc1_++;
            }
         }
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§7P§ = _loc1_;
         if(this.§5"8§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§1n§ > 0)
         {
            this.showRequestsCount(this.§1n§,this.§@o§);
         }
         else
         {
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§0!y§();
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
      
      private function §[A§() : void
      {
         this.§#J§ = new §9d§(600,200,null,§ P§,20,20);
         this.§#J§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§&!,§);
         this.§#J§.scrollerSprite.x = 220;
         this.§#J§.scrollerSprite.y = 290;
         mClip.addChild(this.§#J§.scrollerSprite);
      }
      
      private function §9"@§(param1:Array) : void
      {
         this.§5"8§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§5"8§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§#J§.data = this.§5"8§;
         this.§<"$§();
      }
      
      private function §&!,§(param1:MouseEvent) : void
      {
         this.§<"$§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get facebookGraphCall() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         mClip.WaitingForReply.visible = true;
         var _loc1_:URLRequest = § W§.§%!y§.§4!c§.§#%§(this.facebookGraphCall);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         mClip.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            _loc4_.selected = false;
         }
         this.§?'§(_loc3_);
      }
      
      protected function §?'§(param1:Array, param2:Boolean = true) : void
      {
         this.filterFriendsToShow(param1);
         if(param2)
         {
            this.§=4§(this.finalPlayerList,§-u§);
         }
         this.§@o§ = Math.max(this.finalPlayerList.length,this.§@o§);
         this.§9"@§(this.finalPlayerList);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §=4§(param1:Array, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Array = [];
         param2 = Math.min(param1.length,param2);
         while(_loc3_.length < param2)
         {
            _loc4_ = Math.floor(Math.random() * param1.length);
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
               param1[_loc4_].selected = true;
            }
         }
      }
      
      public function §'S§(param1:Object, param2:Object) : int
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
      
      protected function set finalPlayerList(param1:Array) : void
      {
      }
      
      protected function get finalPlayerList() : Array
      {
         return [];
      }
   }
}
