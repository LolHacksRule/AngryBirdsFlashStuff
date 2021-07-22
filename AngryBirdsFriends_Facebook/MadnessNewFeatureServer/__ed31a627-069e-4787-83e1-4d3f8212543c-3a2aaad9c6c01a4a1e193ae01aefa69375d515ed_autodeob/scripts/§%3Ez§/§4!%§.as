package §>z§
{
   import §#,§.§5$$§;
   import §0!s§.AbstractPopup;
   import §1L§.§9#f§;
   import §8#K§.§3Z§;
   import §=§.§^6§;
   import §=8§.§4#`§;
   import com.rovio.assets.§6$A§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §4!%§ extends AbstractPopup
   {
      
      public static const §?!k§:int = 10;
      
      public static var §#"w§:int = 10;
      
      public static const §&"=§:String = "Requests sent";
      
      public static const §4#H§:String = "selected";
      
      public static var §6#G§:Boolean = true;
       
      
      private var §8v§:int = -1;
      
      private const §?#I§:uint = 10066329;
      
      private const §;#y§:Number = 0.5;
      
      private var §""3§:int = 0;
      
      private var §="j§:Array;
      
      protected var §@z§:§^6§;
      
      protected var §+#=§:§5$$§;
      
      protected var §1#M§:int;
      
      protected var §%#p§:int;
      
      protected var §#%§:int;
      
      private var §&r§:MovieClip;
      
      private var §###§:MovieClip;
      
      public function §4!%§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§8v§ = param5;
         this.§###§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§&r§ = §&!M§.mClip;
         this.§&r§.CheckAnimation.gotoAndStop(0);
         this.§&r§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§+"`§);
         this.§&r§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§0!6§);
         if(this.§###§ == null)
         {
            _loc1_ = §6$A§.§1!m§("SelectAllCheckBox");
            this.§###§ = new _loc1_();
         }
         this.§+#=§ = new §5$$§(this.§###§,false);
         this.§+#=§.displayObject.addEventListener(MouseEvent.CLICK,this.§5#X§);
         this.§+#=§.displayObject.addEventListener(Event.CHANGE,this.§6#A§);
         this.§&r§.addChildAt(this.§+#=§.displayObject,this.§&r§.numChildren - 1);
         this.§+#=§.displayObject.visible = §6#G§;
         this.§&r§.inviteScrollbar.scrollbarArea.visible = false;
         this.§&r§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§&r§.searchbar).addEventListener(Event.CHANGE,this.§3!&§);
         TextField(this.§&r§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§'0§);
         this.§<#Y§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§%#p§ = 0;
         this.§+#=§.displayObject.x = 184;
         this.§+#=§.displayObject.y = 142;
         this.§@z§.scrollerSprite.x = 184;
         this.§@z§.scrollerSprite.y = 288;
      }
      
      public function get §&"W§() : int
      {
         return this.§#%§;
      }
      
      public function set §&"W§(param1:int) : void
      {
         this.§#%§ = param1;
      }
      
      private function §+"`§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§@z§.scroll(-4);
         this.§>$5§();
      }
      
      private function §0!6§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§@z§.scroll(4);
         this.§>$5§();
      }
      
      private function §>$5§() : void
      {
         if(this.§@z§.§"#Y§(1))
         {
            this.§<!d§(this.§&r§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§<!d§(this.§&r§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§@z§.§"#Y§(-1))
         {
            this.§<!d§(this.§&r§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§<!d§(this.§&r§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §<!d§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§?#I§,this.§;#y§);
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
         if(this.§#%§ > 0)
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
      
      private function §'0§(param1:FocusEvent) : void
      {
         if(TextField(this.§&r§.searchbar).text == "Search...")
         {
            TextField(this.§&r§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §3!&§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§&r§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§7!^§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§7!^§(_loc3_);
      }
      
      private function §5#X§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
      }
      
      public function §=!2§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§3"+§();
         var _loc2_:Boolean = this.§+#=§.selected;
         for each(_loc3_ in this.§="j§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§8v§)
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
         this.§6!N§();
         this.§@z§.refresh();
      }
      
      private function §3"+§() : int
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
      
      protected function §6!N§() : void
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
            else if(this.§8v§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§8v§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§@z§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§""3§ = _loc1_;
         if(this.§="j§ && this.§="j§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§1#M§ > 0)
         {
            this.showRequestsCount(this.§1#M§,this.§%#p§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§>$5§();
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
      
      private function §<#Y§() : void
      {
         this.§@z§ = new §^6§(615,255,null,§4#`§,0,2);
         this.§@z§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§+!i§);
         this.§&r§.addChild(this.§@z§.scrollerSprite);
      }
      
      private function §7!^§(param1:Array) : void
      {
         this.§="j§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§="j§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§@z§.data = this.§="j§;
         this.§6!N§();
      }
      
      private function §+!i§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Select",§3Z§.§[!F§);
         this.§6!N§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §,-§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§&r§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = § #v§.§1!!§.§ #X§.§=#p§(this.§,-§);
         var _loc2_:§9#f§ = new §9#f§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§&r§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§%#<§(_loc3_);
      }
      
      protected function §%#<§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§7!^§(this.finalPlayerList);
         if(param2 && §6#G§ && !this.§+#=§.selected)
         {
            this.§+#=§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§&r§.WaitingForReply.visible = false;
         if(this.§+#=§)
         {
            this.§+#=§.displayObject.visible = false;
         }
         if(this.§&r§ && this.§&r§.inviteScrollbar)
         {
            this.§&r§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §4#V§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §+"K§(param1:Object, param2:Object) : int
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
      
      public function §`8§(param1:Object, param2:Object) : int
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
         this.§+#=§.displayObject.removeEventListener(Event.SELECT,this.§5#X§);
         this.§+#=§.displayObject.removeEventListener(Event.CHANGE,this.§6#A§);
         super.dispose();
      }
      
      private function §6#A§(param1:Event) : void
      {
         this.§=!2§();
      }
   }
}
