package §?P§
{
   import §1!=§.AbstractPopup;
   import §7"n§.§7$2§;
   import §8!§.§!$1§;
   import §<h§.§`"o§;
   import §@!M§.§!"p§;
   import §@V§.§6"§;
   import com.rovio.assets.§!"f§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §,"L§ extends AbstractPopup
   {
      
      public static const §+$&§:int = 10;
      
      public static var §-i§:int = 10;
      
      public static const §2"q§:String = "Requests sent";
      
      public static const §&#<§:String = "selected";
      
      public static var §;"L§:Boolean = true;
       
      
      private var §@##§:int = -1;
      
      private const §?"s§:uint = 10066329;
      
      private const §"!C§:Number = 0.5;
      
      private var § #@§:int = 0;
      
      private var §@"Y§:Array;
      
      protected var §=!6§:§!$1§;
      
      protected var §]# §:§`"o§;
      
      protected var §1!w§:int;
      
      protected var §<[§:int;
      
      protected var §0"u§:int;
      
      private var §0!Q§:MovieClip;
      
      private var §#!m§:MovieClip;
      
      public function §,"L§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§@##§ = param5;
         this.§#!m§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§0!Q§ = §,#2§.mClip;
         this.§0!Q§.CheckAnimation.gotoAndStop(0);
         this.§0!Q§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§2#x§);
         this.§0!Q§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§5!0§);
         if(this.§#!m§ == null)
         {
            _loc1_ = §!"f§.§##?§("SelectAllCheckBox");
            this.§#!m§ = new _loc1_();
         }
         this.§]# § = new §`"o§(this.§#!m§,false);
         this.§]# §.displayObject.addEventListener(MouseEvent.CLICK,this.§^#R§);
         this.§]# §.displayObject.addEventListener(Event.CHANGE,this.§48§);
         this.§0!Q§.addChildAt(this.§]# §.displayObject,this.§0!Q§.numChildren - 1);
         this.§]# §.displayObject.visible = §;"L§;
         this.§0!Q§.inviteScrollbar.scrollbarArea.visible = false;
         this.§0!Q§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§0!Q§.searchbar).addEventListener(Event.CHANGE,this.§2"?§);
         TextField(this.§0!Q§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§,#N§);
         this.§+!K§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§<[§ = 0;
         this.§]# §.displayObject.x = 184;
         this.§]# §.displayObject.y = 142;
         this.§=!6§.scrollerSprite.x = 184;
         this.§=!6§.scrollerSprite.y = 288;
      }
      
      public function get §"a§() : int
      {
         return this.§0"u§;
      }
      
      public function set §"a§(param1:int) : void
      {
         this.§0"u§ = param1;
      }
      
      private function §2#x§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§=!6§.scroll(-4);
         this.§;!0§();
      }
      
      private function §5!0§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§=!6§.scroll(4);
         this.§;!0§();
      }
      
      private function §;!0§() : void
      {
         if(this.§=!6§.§3"&§(1))
         {
            this.§'!§(this.§0!Q§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§'!§(this.§0!Q§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§=!6§.§3"&§(-1))
         {
            this.§'!§(this.§0!Q§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§'!§(this.§0!Q§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §'!§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§?"s§,this.§"!C§);
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
         if(this.§0"u§ > 0)
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
      
      private function §,#N§(param1:FocusEvent) : void
      {
         if(TextField(this.§0!Q§.searchbar).text == "Search...")
         {
            TextField(this.§0!Q§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §2"?§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§0!Q§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§4!0§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§4!0§(_loc3_);
      }
      
      private function §^#R§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
      }
      
      public function §4"Y§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§5#@§();
         var _loc2_:Boolean = this.§]# §.selected;
         for each(_loc3_ in this.§@"Y§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§@##§)
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
         this.§>4§();
         this.§=!6§.refresh();
      }
      
      private function §5#@§() : int
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
      
      protected function §>4§() : void
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
            else if(this.§@##§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§@##§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§=!6§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§ #@§ = _loc1_;
         if(this.§@"Y§ && this.§@"Y§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§1!w§ > 0)
         {
            this.showRequestsCount(this.§1!w§,this.§<[§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§;!0§();
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
      
      private function §+!K§() : void
      {
         this.§=!6§ = new §!$1§(615,255,null,§7$2§,0,2);
         this.§=!6§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§+V§);
         this.§0!Q§.addChild(this.§=!6§.scrollerSprite);
      }
      
      private function §4!0§(param1:Array) : void
      {
         this.§@"Y§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§@"Y§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§=!6§.data = this.§@"Y§;
         this.§>4§();
      }
      
      private function §+V§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Select",§!"p§.§+!;§);
         this.§>4§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §7"@§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§0!Q§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §,A§.§2#O§.§[$4§.§[";§(this.§7"@§);
         var _loc2_:§6"§ = new §6"§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§0!Q§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§0#_§(_loc3_);
      }
      
      protected function §0#_§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§4!0§(this.finalPlayerList);
         if(param2 && §;"L§ && !this.§]# §.selected)
         {
            this.§]# §.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§0!Q§.WaitingForReply.visible = false;
         if(this.§]# §)
         {
            this.§]# §.displayObject.visible = false;
         }
         if(this.§0!Q§ && this.§0!Q§.inviteScrollbar)
         {
            this.§0!Q§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §]9§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §2!-§(param1:Object, param2:Object) : int
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
      
      public function §1# §(param1:Object, param2:Object) : int
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
         this.§]# §.displayObject.removeEventListener(Event.SELECT,this.§^#R§);
         this.§]# §.displayObject.removeEventListener(Event.CHANGE,this.§48§);
         super.dispose();
      }
      
      private function §48§(param1:Event) : void
      {
         this.§4"Y§();
      }
   }
}
