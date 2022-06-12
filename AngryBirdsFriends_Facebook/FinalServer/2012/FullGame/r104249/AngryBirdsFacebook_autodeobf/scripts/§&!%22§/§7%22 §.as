package §&!"§
{
   import §#M§.§^0§;
   import §-B§.§#!,§;
   import §=E§.§"!I§;
   import §@Y§.§!!c§;
   import com.rovio.assets.§>"5§;
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
   
   public class §7" § extends Popup
   {
      
      public static const §"!;§:int = 50;
      
      public static var §9%§:int = 10;
      
      public static const §+z§:String = "Requests sent";
      
      public static const §'"!§:String = "Friends selected";
       
      
      private const §>i§:uint = 10066329;
      
      private const §6!K§:Number = 0.5;
      
      private var §0V§:int = 0;
      
      private var §[Q§:Array;
      
      private var §6'§:§"!I§;
      
      private var §9!R§:§#!,§;
      
      protected var §+!1§:int;
      
      protected var §4!=§:int;
      
      protected var §'k§:int;
      
      public function §7" §(param1:XML, param2:§^0§)
      {
         super(param1,param2);
         mClip.CheckAnimation.gotoAndStop(0);
         mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§+j§);
         mClip.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§[F§);
         var _loc3_:Class = §>"5§.§6s§("SelectAllCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         this.§9!R§ = new §#!,§(_loc4_,false);
         this.§9!R§.§"!+§.addEventListener(Event.CHANGE,this.§=f§);
         this.§9!R§.§"!+§.x = 189;
         this.§9!R§.§"!+§.y = 252;
         mClip.addChildAt(this.§9!R§.§"!+§,mClip.numChildren - 1);
         mClip.inviteScrollbar.scrollbarArea.visible = false;
         mClip.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(mClip.searchbar).addEventListener(Event.CHANGE,this.§]!3§);
         TextField(mClip.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§=!w§);
         this.§1y§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
      }
      
      public function get §8!#§() : int
      {
         return this.§'k§;
      }
      
      public function set §8!#§(param1:int) : void
      {
         this.§'k§ = param1;
      }
      
      private function §+j§(param1:MouseEvent) : void
      {
         this.§6'§.scroll(-4);
         this.§8j§();
      }
      
      private function §[F§(param1:MouseEvent) : void
      {
         this.§6'§.scroll(4);
         this.§8j§();
      }
      
      private function §8j§() : void
      {
         if(this.§6'§.§]"H§(1))
         {
            this.§]![§(mClip.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§]![§(mClip.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§6'§.§]"H§(-1))
         {
            this.§]![§(mClip.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§]![§(mClip.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §]![§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§>i§,this.§6!K§);
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
         if(this.§'k§ > 0)
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
      
      private function §=!w§(param1:FocusEvent) : void
      {
         if(TextField(mClip.searchbar).text == "Search...")
         {
            TextField(mClip.searchbar).text = "";
         }
      }
      
      private function §]!3§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(_loc2_ == "")
         {
            this.§4"3§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§4"3§(_loc3_);
      }
      
      private function §=f§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§[Q§)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_)
               {
                  _loc3_.selected = this.§9!R§.selected;
               }
            }
         }
         this.§5"-§();
         this.§6'§.§#6§();
      }
      
      protected function §5"-§() : void
      {
         var _loc2_:Object = null;
         this.§6'§.§#6§();
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
         this.§0V§ = _loc1_;
         if(this.§[Q§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§+!1§ > 0)
         {
            this.showRequestsCount(this.§+!1§,this.§4!=§);
         }
         else
         {
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§8j§();
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
      
      private function §1y§() : void
      {
         this.§6'§ = new §"!I§(600,200,null,§!!c§,20,20);
         this.§6'§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§<!1§);
         this.§6'§.scrollerSprite.x = 220;
         this.§6'§.scrollerSprite.y = 290;
         mClip.addChild(this.§6'§.scrollerSprite);
      }
      
      private function §4"3§(param1:Array) : void
      {
         this.§[Q§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§[Q§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§6'§.data = this.§[Q§;
         this.§5"-§();
      }
      
      private function §<!1§(param1:MouseEvent) : void
      {
         this.§5"-§();
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
         var _loc1_:URLRequest = §,"I§.§&q§.§"4§.§+@§(this.facebookGraphCall);
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
         this.§,!$§(_loc3_);
      }
      
      protected function §,!$§(param1:Array, param2:Boolean = true) : void
      {
         this.filterFriendsToShow(param1);
         this.§4!=§ = Math.max(this.finalPlayerList.length,this.§4!=§);
         this.§4"3§(this.finalPlayerList);
         if(!this.§9!R§.selected)
         {
            this.§9!R§.§"!+§.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §!"§(param1:Array, param2:int) : void
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
      
      public function §"C§(param1:Object, param2:Object) : int
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
