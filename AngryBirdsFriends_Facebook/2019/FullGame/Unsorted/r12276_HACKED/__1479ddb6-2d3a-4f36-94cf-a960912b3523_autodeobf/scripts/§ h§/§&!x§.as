package § h§
{
   import § !p§.§?"q§;
   import § "v§.§4$4§;
   import §2$;§.§&R§;
   import §3#q§.§2!Z§;
   import §7"1§.§"$D§;
   import §9!6§.AbstractPopup;
   import com.rovio.assets.§=@§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §&!x§ extends AbstractPopup
   {
      
      public static const §&#5§:int = 10;
      
      public static var §!!-§:int = 10;
      
      public static const §2$1§:String = "Requests sent";
      
      public static const §`!z§:String = "selected";
      
      public static var §&H§:Boolean = true;
       
      
      private var §?"4§:int = -1;
      
      private const §#!,§:uint = 10066329;
      
      private const §%"§:Number = 0.5;
      
      private var §?s§:int = 0;
      
      private var §&"#§:Array;
      
      protected var §'"N§:§2!Z§;
      
      protected var §4#W§:§&R§;
      
      protected var §1!x§:int;
      
      protected var §7" §:int;
      
      protected var §^"]§:int;
      
      private var §3`§:MovieClip;
      
      private var §1L§:MovieClip;
      
      public function §&!x§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§?"4§ = param5;
         this.§1L§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§3`§ = §'o§.mClip;
         this.§3`§.CheckAnimation.gotoAndStop(0);
         this.§3`§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§+#l§);
         this.§3`§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§&$?§);
         if(this.§1L§ == null)
         {
            _loc1_ = §=@§.§9!x§("SelectAllCheckBox");
            this.§1L§ = new _loc1_();
         }
         this.§4#W§ = new §&R§(this.§1L§,false);
         this.§4#W§.displayObject.addEventListener(MouseEvent.CLICK,this.§1"E§);
         this.§4#W§.displayObject.addEventListener(Event.CHANGE,this.§]=§);
         this.§3`§.addChildAt(this.§4#W§.displayObject,this.§3`§.numChildren - 1);
         this.§4#W§.displayObject.visible = §&H§;
         this.§3`§.inviteScrollbar.scrollbarArea.visible = false;
         this.§3`§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§3`§.searchbar).addEventListener(Event.CHANGE,this.§0H§);
         TextField(this.§3`§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§@!f§);
         this.§""l§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§7" § = 0;
         this.§4#W§.displayObject.x = 184;
         this.§4#W§.displayObject.y = 142;
         this.§'"N§.scrollerSprite.x = 184;
         this.§'"N§.scrollerSprite.y = 288;
      }
      
      public function get §]#5§() : int
      {
         return this.§^"]§;
      }
      
      public function set §]#5§(param1:int) : void
      {
         this.§^"]§ = param1;
      }
      
      private function §+#l§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§'"N§.scroll(-4);
         this.§>!5§();
      }
      
      private function §&$?§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§'"N§.scroll(4);
         this.§>!5§();
      }
      
      private function §>!5§() : void
      {
         if(this.§'"N§.§!Y§(1))
         {
            this.§'#V§(this.§3`§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§'#V§(this.§3`§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§'"N§.§!Y§(-1))
         {
            this.§'#V§(this.§3`§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§'#V§(this.§3`§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §'#V§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§#!,§,this.§%"§);
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
         if(this.§^"]§ > 0)
         {
            this.§3`§.btnInviteMore.visible = true;
            this.§3`§.btnInvite.visible = false;
         }
         else
         {
            this.§3`§.btnInviteMore.visible = false;
            this.§3`§.btnInvite.visible = true;
         }
      }
      
      private function §@!f§(param1:FocusEvent) : void
      {
         if(TextField(this.§3`§.searchbar).text == "Search...")
         {
            TextField(this.§3`§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §0H§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§3`§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§@2§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§@2§(_loc3_);
      }
      
      private function §1"E§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
      }
      
      public function §7"K§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§3v§();
         var _loc2_:Boolean = this.§4#W§.selected;
         for each(_loc3_ in this.§&"#§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§?"4§)
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
         this.§5!^§();
         this.§'"N§.refresh();
      }
      
      private function §3v§() : int
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
      
      protected function §5!^§() : void
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
            else if(this.§?"4§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§?"4§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§'"N§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§?s§ = _loc1_;
         if(this.§&"#§ && this.§&"#§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§1!x§ > 0)
         {
            this.showRequestsCount(this.§1!x§,this.§7" §);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§>!5§();
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
      
      private function §""l§() : void
      {
         this.§'"N§ = new §2!Z§(615,255,null,§?"q§,0,2);
         this.§'"N§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§3"N§);
         this.§3`§.addChild(this.§'"N§.scrollerSprite);
      }
      
      private function §@2§(param1:Array) : void
      {
         this.§&"#§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§&"#§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§'"N§.data = this.§&"#§;
         this.§5!^§();
      }
      
      private function §3"N§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Select",§4$4§.§1#l§);
         this.§5!^§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §"!j§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§3`§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §^"a§.§9!h§.§2!E§.§"#-§(this.§"!j§);
         var _loc2_:§"$D§ = new §"$D§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§3`§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§@#n§(_loc3_);
      }
      
      protected function §@#n§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§@2§(this.finalPlayerList);
         if(param2 && §&H§ && !this.§4#W§.selected)
         {
            this.§4#W§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§3`§.WaitingForReply.visible = false;
         if(this.§4#W§)
         {
            this.§4#W§.displayObject.visible = false;
         }
         if(this.§3`§ && this.§3`§.inviteScrollbar)
         {
            this.§3`§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §8$1§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §+"8§(param1:Object, param2:Object) : int
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
      
      public function §]#j§(param1:Object, param2:Object) : int
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
         this.§4#W§.displayObject.removeEventListener(Event.SELECT,this.§1"E§);
         this.§4#W§.displayObject.removeEventListener(Event.CHANGE,this.§]=§);
         super.dispose();
      }
      
      private function §]=§(param1:Event) : void
      {
         this.§7"K§();
      }
   }
}
