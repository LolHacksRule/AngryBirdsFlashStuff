package §?Q§
{
   import § "L§.§'!6§;
   import § $0§.AbstractPopup;
   import §+W§.§'!e§;
   import §3"V§.§ b§;
   import §4S§.§@§;
   import §`!-§.§2-§;
   import com.rovio.assets.§[a§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §@!B§ extends AbstractPopup
   {
      
      public static const §!#U§:int = 10;
      
      public static var §'$2§:int = 10;
      
      public static const §&e§:String = "Requests sent";
      
      public static const §=$+§:String = "selected";
      
      public static var §'"!§:Boolean = true;
       
      
      private var §'!2§:int = -1;
      
      private const §@!Y§:uint = 10066329;
      
      private const §9=§:Number = 0.5;
      
      private var §0!O§:int = 0;
      
      private var §5J§:Array;
      
      protected var §2#!§:§'!e§;
      
      protected var §%!R§:§'!6§;
      
      protected var §@b§:int;
      
      protected var §7#^§:int;
      
      protected var §&c§:int;
      
      private var §8#M§:MovieClip;
      
      private var §8[§:MovieClip;
      
      public function §@!B§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§'!2§ = param5;
         this.§8[§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§8#M§ = §;#'§.mClip;
         this.§8#M§.CheckAnimation.gotoAndStop(0);
         this.§8#M§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§?n§);
         this.§8#M§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§&!`§);
         if(this.§8[§ == null)
         {
            _loc1_ = §[a§.§8#k§("SelectAllCheckBox");
            this.§8[§ = new _loc1_();
         }
         this.§%!R§ = new §'!6§(this.§8[§,false);
         this.§%!R§.displayObject.addEventListener(MouseEvent.CLICK,this.§]#l§);
         this.§%!R§.displayObject.addEventListener(Event.CHANGE,this.§^$"§);
         this.§8#M§.addChildAt(this.§%!R§.displayObject,this.§8#M§.numChildren - 1);
         this.§%!R§.displayObject.visible = §'"!§;
         this.§8#M§.inviteScrollbar.scrollbarArea.visible = false;
         this.§8#M§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§8#M§.searchbar).addEventListener(Event.CHANGE,this.§@R§);
         TextField(this.§8#M§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§3c§);
         this.§,#W§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§7#^§ = 0;
         this.§%!R§.displayObject.x = 184;
         this.§%!R§.displayObject.y = 142;
         this.§2#!§.scrollerSprite.x = 184;
         this.§2#!§.scrollerSprite.y = 288;
      }
      
      public function get §5#S§() : int
      {
         return this.§&c§;
      }
      
      public function set §5#S§(param1:int) : void
      {
         this.§&c§ = param1;
      }
      
      private function §?n§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§2#!§.scroll(-4);
         this.§9Y§();
      }
      
      private function §&!`§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§2#!§.scroll(4);
         this.§9Y§();
      }
      
      private function §9Y§() : void
      {
         if(this.§2#!§.§2#?§(1))
         {
            this.§6!#§(this.§8#M§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§6!#§(this.§8#M§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§2#!§.§2#?§(-1))
         {
            this.§6!#§(this.§8#M§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§6!#§(this.§8#M§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §6!#§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§@!Y§,this.§9=§);
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
         if(this.§&c§ > 0)
         {
            this.§8#M§.btnInviteMore.visible = true;
            this.§8#M§.btnInvite.visible = false;
         }
         else
         {
            this.§8#M§.btnInviteMore.visible = false;
            this.§8#M§.btnInvite.visible = true;
         }
      }
      
      private function §3c§(param1:FocusEvent) : void
      {
         if(TextField(this.§8#M§.searchbar).text == "Search...")
         {
            TextField(this.§8#M§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §@R§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§8#M§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§<c§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§<c§(_loc3_);
      }
      
      private function §]#l§(param1:MouseEvent) : void
      {
         § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
      }
      
      public function §6#@§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§+t§();
         var _loc2_:Boolean = this.§%!R§.selected;
         for each(_loc3_ in this.§5J§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§'!2§)
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
         this.§]"G§();
         this.§2#!§.refresh();
      }
      
      private function §+t§() : int
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
      
      protected function §]"G§() : void
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
            else if(this.§'!2§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§'!2§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§2#!§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§0!O§ = _loc1_;
         if(this.§5J§ && this.§5J§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§@b§ > 0)
         {
            this.showRequestsCount(this.§@b§,this.§7#^§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§9Y§();
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
      
      private function §,#W§() : void
      {
         this.§2#!§ = new §'!e§(615,255,null,§2-§,0,2);
         this.§2#!§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§6"X§);
         this.§8#M§.addChild(this.§2#!§.scrollerSprite);
      }
      
      private function §<c§(param1:Array) : void
      {
         this.§5J§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§5J§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§2#!§.data = this.§5J§;
         this.§]"G§();
      }
      
      private function §6"X§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Select",§ b§.§;$5§);
         this.§]"G§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §'"g§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§8#M§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §@z§.§ !D§.§!$5§.§;"Q§(this.§'"g§);
         var _loc2_:§@#1§ = new §@#1§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§8#M§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§3#L§(_loc3_);
      }
      
      protected function §3#L§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§<c§(this.finalPlayerList);
         if(param2 && §'"!§ && !this.§%!R§.selected)
         {
            this.§%!R§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§8#M§.WaitingForReply.visible = false;
         if(this.§%!R§)
         {
            this.§%!R§.displayObject.visible = false;
         }
         if(this.§8#M§ && this.§8#M§.inviteScrollbar)
         {
            this.§8#M§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §?!=§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §^!1§(param1:Object, param2:Object) : int
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
      
      public function §=R§(param1:Object, param2:Object) : int
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
         this.§%!R§.displayObject.removeEventListener(Event.SELECT,this.§]#l§);
         this.§%!R§.displayObject.removeEventListener(Event.CHANGE,this.§^$"§);
         super.dispose();
      }
      
      private function §^$"§(param1:Event) : void
      {
         this.§6#@§();
      }
   }
}
