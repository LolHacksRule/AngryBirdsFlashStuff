package §?!N§
{
   import §"#]§.§3d§;
   import §2!u§.§!!q§;
   import §5!$§.§3#o§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §>"Q§.§7"2§;
   import com.rovio.assets.§2"O§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §<!4§ extends AbstractPopup
   {
      
      public static const §4#x§:int = 10;
      
      public static var §>"v§:int = 10;
      
      public static const §`!r§:String = "Requests sent";
      
      public static const §?!z§:String = "selected";
      
      public static var §8!>§:Boolean = true;
       
      
      private var §'"4§:int = -1;
      
      private const §;!f§:uint = 10066329;
      
      private const §^#"§:Number = 0.5;
      
      private var §&$§:int = 0;
      
      private var §5#Y§:Array;
      
      protected var §#";§:§!!q§;
      
      protected var §7#$§:§3#o§;
      
      protected var §+#3§:int;
      
      protected var §8""§:int;
      
      protected var §#"y§:int;
      
      private var §%§:MovieClip;
      
      private var §5#2§:MovieClip;
      
      public function §<!4§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§'"4§ = param5;
         this.§5#2§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§%§ = §8#Y§.mClip;
         this.§%§.CheckAnimation.gotoAndStop(0);
         this.§%§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§,!#§);
         this.§%§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§+!S§);
         if(this.§5#2§ == null)
         {
            _loc1_ = §2"O§.§`>§("SelectAllCheckBox");
            this.§5#2§ = new _loc1_();
         }
         this.§7#$§ = new §3#o§(this.§5#2§,false);
         this.§7#$§.displayObject.addEventListener(MouseEvent.CLICK,this.§2i§);
         this.§7#$§.displayObject.addEventListener(Event.CHANGE,this.§<h§);
         this.§%§.addChildAt(this.§7#$§.displayObject,this.§%§.numChildren - 1);
         this.§7#$§.displayObject.visible = §8!>§;
         this.§%§.inviteScrollbar.scrollbarArea.visible = false;
         this.§%§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§%§.searchbar).addEventListener(Event.CHANGE,this.§##A§);
         TextField(this.§%§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§^"Z§);
         this.§7T§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§8""§ = 0;
         this.§7#$§.displayObject.x = 184;
         this.§7#$§.displayObject.y = 142;
         this.§#";§.scrollerSprite.x = 184;
         this.§#";§.scrollerSprite.y = 288;
      }
      
      public function get §+!?§() : int
      {
         return this.§#"y§;
      }
      
      public function set §+!?§(param1:int) : void
      {
         this.§#"y§ = param1;
      }
      
      private function §,!#§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§#";§.scroll(-4);
         this.§>"4§();
      }
      
      private function §+!S§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§#";§.scroll(4);
         this.§>"4§();
      }
      
      private function §>"4§() : void
      {
         if(this.§#";§.§9!E§(1))
         {
            this.§8#J§(this.§%§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§8#J§(this.§%§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§#";§.§9!E§(-1))
         {
            this.§8#J§(this.§%§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§8#J§(this.§%§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §8#J§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§;!f§,this.§^#"§);
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
         if(this.§#"y§ > 0)
         {
            this.§%§.btnInviteMore.visible = true;
            this.§%§.btnInvite.visible = false;
         }
         else
         {
            this.§%§.btnInviteMore.visible = false;
            this.§%§.btnInvite.visible = true;
         }
      }
      
      private function §^"Z§(param1:FocusEvent) : void
      {
         if(TextField(this.§%§.searchbar).text == "Search...")
         {
            TextField(this.§%§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §##A§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§%§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§'!S§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§'!S§(_loc3_);
      }
      
      private function §2i§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
      }
      
      public function §="q§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§6Z§();
         var _loc2_:Boolean = this.§7#$§.selected;
         for each(_loc3_ in this.§5#Y§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§'"4§)
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
         this.§ j§();
         this.§#";§.refresh();
      }
      
      private function §6Z§() : int
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
      
      protected function § j§() : void
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
            else if(this.§'"4§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§'"4§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§#";§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§&$§ = _loc1_;
         if(this.§5#Y§ && this.§5#Y§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§+#3§ > 0)
         {
            this.showRequestsCount(this.§+#3§,this.§8""§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§>"4§();
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
      
      private function §7T§() : void
      {
         this.§#";§ = new §!!q§(615,255,null,§3d§,0,2);
         this.§#";§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§%!E§);
         this.§%§.addChild(this.§#";§.scrollerSprite);
      }
      
      private function §'!S§(param1:Array) : void
      {
         this.§5#Y§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§5#Y§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§#";§.data = this.§5#Y§;
         this.§ j§();
      }
      
      private function §%!E§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Select",§[#%§.§-"I§);
         this.§ j§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §]#'§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§%§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §'"a§.§!!8§.§%"S§.§<W§(this.§]#'§);
         var _loc2_:§7"2§ = new §7"2§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§%§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§5!j§(_loc3_);
      }
      
      protected function §5!j§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§'!S§(this.finalPlayerList);
         if(param2 && §8!>§ && !this.§7#$§.selected)
         {
            this.§7#$§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§%§.WaitingForReply.visible = false;
         if(this.§7#$§)
         {
            this.§7#$§.displayObject.visible = false;
         }
         if(this.§%§ && this.§%§.inviteScrollbar)
         {
            this.§%§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §'#H§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §5!x§(param1:Object, param2:Object) : int
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
      
      public function §&#E§(param1:Object, param2:Object) : int
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
         this.§7#$§.displayObject.removeEventListener(Event.SELECT,this.§2i§);
         this.§7#$§.displayObject.removeEventListener(Event.CHANGE,this.§<h§);
         super.dispose();
      }
      
      private function §<h§(param1:Event) : void
      {
         this.§="q§();
      }
   }
}
