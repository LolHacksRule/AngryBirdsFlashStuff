package §'!s§
{
   import §#^§.§7!A§;
   import §-!+§.§5!!§;
   import §-!h§.§5Q§;
   import §4!e§.§6Y§;
   import com.rovio.assets.§8B§;
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
   
   public class §+!4§ extends Popup
   {
      
      public static const §%@§:int = 50;
      
      public static var §0!W§:int = 10;
      
      public static const §2^§:String = "Requests sent";
      
      public static const § ",§:String = "Friends selected";
       
      
      private const §@!E§:uint = 10066329;
      
      private const §?!t§:Number = 0.5;
      
      private var §`!E§:int = 0;
      
      private var §""A§:Array;
      
      private var §9t§:§5!!§;
      
      private var §7!o§:§6Y§;
      
      protected var §;L§:int;
      
      protected var §8! §:int;
      
      protected var §&v§:int;
      
      public function §+!4§(param1:XML, param2:§7!A§)
      {
         super(param1,param2);
         mClip.CheckAnimation.gotoAndStop(0);
         mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§[9§);
         mClip.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§6&§);
         var _loc3_:Class = §8B§.§6"C§("SelectAllCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         this.§7!o§ = new §6Y§(_loc4_,false);
         this.§7!o§.§[%§.addEventListener(Event.CHANGE,this.§<!C§);
         this.§7!o§.§[%§.x = 189;
         this.§7!o§.§[%§.y = 252;
         mClip.addChildAt(this.§7!o§.§[%§,mClip.numChildren - 1);
         mClip.inviteScrollbar.scrollbarArea.visible = false;
         mClip.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(mClip.searchbar).addEventListener(Event.CHANGE,this.§"H§);
         TextField(mClip.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§&"9§);
         this.§5m§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
      }
      
      public function get §"n§() : int
      {
         return this.§&v§;
      }
      
      public function set §"n§(param1:int) : void
      {
         this.§&v§ = param1;
      }
      
      private function §[9§(param1:MouseEvent) : void
      {
         this.§9t§.scroll(-4);
         this.§"=§();
      }
      
      private function §6&§(param1:MouseEvent) : void
      {
         this.§9t§.scroll(4);
         this.§"=§();
      }
      
      private function §"=§() : void
      {
         if(this.§9t§.§@!%§(1))
         {
            this.§[p§(mClip.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§[p§(mClip.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§9t§.§@!%§(-1))
         {
            this.§[p§(mClip.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§[p§(mClip.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §[p§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§@!E§,this.§?!t§);
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
         if(this.§&v§ > 0)
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
      
      private function §&"9§(param1:FocusEvent) : void
      {
         if(TextField(mClip.searchbar).text == "Search...")
         {
            TextField(mClip.searchbar).text = "";
         }
      }
      
      private function §"H§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(_loc2_ == "")
         {
            this.§,G§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§,G§(_loc3_);
      }
      
      private function §<!C§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§""A§)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.selected = this.§7!o§.selected;
               }
            }
         }
         this.§><§();
         this.§9t§.§7C§();
      }
      
      protected function §><§() : void
      {
         var _loc2_:Object = null;
         this.§9t§.§7C§();
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
         this.§`!E§ = _loc1_;
         if(this.§""A§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§;L§ > 0)
         {
            this.showRequestsCount(this.§;L§,this.§8! §);
         }
         else
         {
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§"=§();
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
      
      private function §5m§() : void
      {
         this.§9t§ = new §5!!§(600,200,null,§5Q§,20,20);
         this.§9t§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§6"4§);
         this.§9t§.scrollerSprite.x = 220;
         this.§9t§.scrollerSprite.y = 290;
         mClip.addChild(this.§9t§.scrollerSprite);
      }
      
      private function §,G§(param1:Array) : void
      {
         this.§""A§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§""A§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§9t§.data = this.§""A§;
         this.§><§();
      }
      
      private function §6"4§(param1:MouseEvent) : void
      {
         this.§><§();
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
         var _loc1_:URLRequest = §3T§.§67§.§7!>§.§@8§(this.facebookGraphCall);
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
         this.§%!,§(_loc3_);
      }
      
      protected function §%!,§(param1:Array, param2:Boolean = true) : void
      {
         this.filterFriendsToShow(param1);
         if(param2)
         {
            this.§5!h§(this.finalPlayerList,§0!W§);
         }
         this.§8! § = Math.max(this.finalPlayerList.length,this.§8! §);
         this.§,G§(this.finalPlayerList);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §5!h§(param1:Array, param2:int) : void
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
      
      public function §?s§(param1:Object, param2:Object) : int
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
