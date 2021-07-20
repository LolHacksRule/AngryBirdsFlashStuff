package §5!Y§
{
   import §%i§.§9!r§;
   import §1!0§.§-i§;
   import §2!o§.§?r§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
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
   
   public class § Q§ extends Popup
   {
      
      public static const §@!o§:int = 50;
      
      public static var §?"X§:int = 10;
      
      public static const §<§:String = "Requests sent";
      
      public static const §4$§:String = "Friends selected";
       
      
      private const §6;§:uint = 10066329;
      
      private const §'!=§:Number = 0.5;
      
      private var § X§:int = 0;
      
      private var §#!]§:Array;
      
      private var §8"O§:§?r§;
      
      private var §]!'§:§9!r§;
      
      protected var §'r§:int;
      
      protected var §?'§:int;
      
      protected var §0^§:int;
      
      public function § Q§(param1:XML, param2:§`_§)
      {
         super(param1,param2);
         mClip.CheckAnimation.gotoAndStop(0);
         mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§?!P§);
         mClip.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§1!G§);
         var _loc3_:Class = §?q§.§ q§("SelectAllCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         this.§]!'§ = new §9!r§(_loc4_,false);
         this.§]!'§.§>R§.addEventListener(Event.CHANGE,this.§3"O§);
         this.§]!'§.§>R§.x = 189;
         this.§]!'§.§>R§.y = 252;
         mClip.addChildAt(this.§]!'§.§>R§,mClip.numChildren - 1);
         mClip.inviteScrollbar.scrollbarArea.visible = false;
         mClip.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(mClip.searchbar).addEventListener(Event.CHANGE,this.§+!?§);
         TextField(mClip.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§""&§);
         this.§8!5§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
      }
      
      public function get §;f§() : int
      {
         return this.§0^§;
      }
      
      public function set §;f§(param1:int) : void
      {
         this.§0^§ = param1;
      }
      
      private function §?!P§(param1:MouseEvent) : void
      {
         this.§8"O§.scroll(-4);
         this.§?!t§();
      }
      
      private function §1!G§(param1:MouseEvent) : void
      {
         this.§8"O§.scroll(4);
         this.§?!t§();
      }
      
      private function §?!t§() : void
      {
         if(this.§8"O§.§0"Q§(1))
         {
            this.§["T§(mClip.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§["T§(mClip.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§8"O§.§0"Q§(-1))
         {
            this.§["T§(mClip.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§["T§(mClip.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §["T§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§6;§,this.§'!=§);
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
         if(this.§0^§ > 0)
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
      
      private function §""&§(param1:FocusEvent) : void
      {
         if(TextField(mClip.searchbar).text == "Search...")
         {
            TextField(mClip.searchbar).text = "";
         }
      }
      
      private function §+!?§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(_loc2_ == "")
         {
            this.§;F§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§;F§(_loc3_);
      }
      
      private function §3"O§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§#!]§)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.selected = this.§]!'§.selected;
               }
            }
         }
         this.§3!<§();
         this.§8"O§.§->§();
      }
      
      protected function §3!<§() : void
      {
         var _loc2_:Object = null;
         this.§8"O§.§->§();
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
         this.§ X§ = _loc1_;
         if(this.§#!]§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§'r§ > 0)
         {
            this.showRequestsCount(this.§'r§,this.§?'§);
         }
         else
         {
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§?!t§();
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
      
      private function §8!5§() : void
      {
         this.§8"O§ = new §?r§(600,200,null,§-i§,20,20);
         this.§8"O§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§ !i§);
         this.§8"O§.scrollerSprite.x = 220;
         this.§8"O§.scrollerSprite.y = 290;
         mClip.addChild(this.§8"O§.scrollerSprite);
      }
      
      private function §;F§(param1:Array) : void
      {
         this.§#!]§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§#!]§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§8"O§.data = this.§#!]§;
         this.§3!<§();
      }
      
      private function § !i§(param1:MouseEvent) : void
      {
         this.§3!<§();
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
         var _loc1_:URLRequest = §%"S§.§!C§.§`"§.§3"B§(this.facebookGraphCall);
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
         this.§#I§(_loc3_);
      }
      
      protected function §#I§(param1:Array, param2:Boolean = true) : void
      {
         this.filterFriendsToShow(param1);
         this.§?'§ = Math.max(this.finalPlayerList.length,this.§?'§);
         this.§;F§(this.finalPlayerList);
         if(!this.§]!'§.selected)
         {
            this.§]!'§.§>R§.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §`!v§(param1:Array, param2:int) : void
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
      
      public function §&"#§(param1:Object, param2:Object) : int
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
