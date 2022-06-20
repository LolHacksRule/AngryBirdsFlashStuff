package § o§
{
   import § $%§.§0#`§;
   import §%#A§.§ W§;
   import §1#=§.§@#F§;
   import §1#W§.§!#&§;
   import §<#m§.AbstractPopup;
   import §^#W§.§3"§;
   import com.rovio.assets.§+$#§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §6#=§ extends AbstractPopup
   {
      
      public static const §%#M§:int = 10;
      
      public static var §%"@§:int = 10;
      
      public static const §<"i§:String = "Requests sent";
      
      public static const §7$%§:String = "selected";
      
      public static var §6"H§:Boolean = true;
       
      
      private var §="9§:int = -1;
      
      private const §29§:uint = 10066329;
      
      private const §>#Q§:Number = 0.5;
      
      private var § "m§:int = 0;
      
      private var §0#Y§:Array;
      
      protected var §4#n§:§@#F§;
      
      protected var §+q§:§ W§;
      
      protected var §!"H§:int;
      
      protected var §]h§:int;
      
      protected var §9#e§:int;
      
      private var §>"g§:MovieClip;
      
      private var §-!W§:MovieClip;
      
      public function §6#=§(param1:int, param2:int, param3:XML, param4:String, param5:int = -1, param6:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         this.§="9§ = param5;
         this.§-!W§ = param6;
      }
      
      override protected function init() : void
      {
         var _loc1_:Class = null;
         this.§>"g§ = §1"6§.mClip;
         this.§>"g§.CheckAnimation.gotoAndStop(0);
         this.§>"g§.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§&l§);
         this.§>"g§.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§@$7§);
         if(this.§-!W§ == null)
         {
            _loc1_ = §+$#§.§["`§("SelectAllCheckBox");
            this.§-!W§ = new _loc1_();
         }
         this.§+q§ = new § W§(this.§-!W§,false);
         this.§+q§.displayObject.addEventListener(MouseEvent.CLICK,this.§`e§);
         this.§+q§.displayObject.addEventListener(Event.CHANGE,this.§="^§);
         this.§>"g§.addChildAt(this.§+q§.displayObject,this.§>"g§.numChildren - 1);
         this.§+q§.displayObject.visible = §6"H§;
         this.§>"g§.inviteScrollbar.scrollbarArea.visible = false;
         this.§>"g§.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.§>"g§.searchbar).addEventListener(Event.CHANGE,this.§!!A§);
         TextField(this.§>"g§.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§0#2§);
         this.§9$4§();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.§]h§ = 0;
         this.§+q§.displayObject.x = 184;
         this.§+q§.displayObject.y = 142;
         this.§4#n§.scrollerSprite.x = 184;
         this.§4#n§.scrollerSprite.y = 288;
      }
      
      public function get §""z§() : int
      {
         return this.§9#e§;
      }
      
      public function set §""z§(param1:int) : void
      {
         this.§9#e§ = param1;
      }
      
      private function §&l§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§4#n§.scroll(-4);
         this.§2"t§();
      }
      
      private function §@$7§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§4#n§.scroll(4);
         this.§2"t§();
      }
      
      private function §2"t§() : void
      {
         if(this.§4#n§.§&#C§(1))
         {
            this.§@#$§(this.§>"g§.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.§@#$§(this.§>"g§.inviteScrollbar.btnScrollDown,false);
         }
         if(this.§4#n§.§&#C§(-1))
         {
            this.§@#$§(this.§>"g§.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.§@#$§(this.§>"g§.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function §@#$§(param1:SimpleButton, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(param1.mouseEnabled)
            {
               param1.mouseEnabled = false;
               setTint(param1,this.§29§,this.§>#Q§);
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
         if(this.§9#e§ > 0)
         {
            this.§>"g§.btnInviteMore.visible = true;
            this.§>"g§.btnInvite.visible = false;
         }
         else
         {
            this.§>"g§.btnInviteMore.visible = false;
            this.§>"g§.btnInvite.visible = true;
         }
      }
      
      private function §0#2§(param1:FocusEvent) : void
      {
         if(TextField(this.§>"g§.searchbar).text == "Search...")
         {
            TextField(this.§>"g§.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §!!A§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:String = TextField(this.§>"g§.searchbar).text;
         if(_loc2_ == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.§1g§(this.finalPlayerList);
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.§1g§(_loc3_);
      }
      
      private function §`e§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
      }
      
      public function §7,§() : void
      {
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc1_:uint = this.§"!d§();
         var _loc2_:Boolean = this.§+q§.selected;
         for each(_loc3_ in this.§0#Y§)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ == this.§="9§)
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
         this.§'!d§();
         this.§4#n§.refresh();
      }
      
      private function §"!d§() : int
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
      
      protected function §'!d§() : void
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
            else if(this.§="9§ != -1)
            {
               _loc2_.push(_loc3_);
            }
            _loc3_.enabled = true;
         }
         if(_loc2_.length > 0 && _loc1_ == this.§="9§)
         {
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  _loc4_.enabled = false;
               }
            }
         }
         this.§4#n§.refresh();
         if(_loc1_ == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.§ "m§ = _loc1_;
         if(this.§0#Y§ && this.§0#Y§.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.§!"H§ > 0)
         {
            this.showRequestsCount(this.§!"H§,this.§]h§);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(_loc1_,this.finalPlayerList.length);
         }
         this.§2"t§();
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
      
      private function §9$4§() : void
      {
         this.§4#n§ = new §@#F§(615,255,null,§3"§,0,2);
         this.§4#n§.scrollerSprite.addEventListener(MouseEvent.CLICK,this.§ !m§);
         this.§>"g§.addChild(this.§4#n§.scrollerSprite);
      }
      
      private function §1g§(param1:Array) : void
      {
         this.§0#Y§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§0#Y§.push([param1[_loc2_],param1[_loc2_ + 1]]);
            _loc2_ += 2;
         }
         this.§4#n§.data = this.§0#Y§;
         this.§'!d§();
      }
      
      private function § !m§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Select",§!#&§.§6#h§);
         this.§'!d§();
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get §+!b§() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.§>"g§.WaitingForReply.visible = true;
         var _loc1_:URLRequest = §-#+§.§;!$§.§+@§.§8?§(this.§+!b§);
         var _loc2_:§0#`§ = new §0#`§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         this.§>"g§.WaitingForReply.visible = false;
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc4_.selected = false;
            }
         }
         this.§0$'§(_loc3_);
      }
      
      protected function §0$'§(param1:Array, param2:Boolean = false) : void
      {
         this.filterFriendsToShow(param1);
         this.§1g§(this.finalPlayerList);
         if(param2 && §6"H§ && !this.§+q§.selected)
         {
            this.§+q§.selected = true;
         }
      }
      
      protected function onError(param1:IOErrorEvent) : void
      {
         this.§>"g§.WaitingForReply.visible = false;
         if(this.§+q§)
         {
            this.§+q§.displayObject.visible = false;
         }
         if(this.§>"g§ && this.§>"g§.inviteScrollbar)
         {
            this.§>"g§.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function §!"a§(param1:Array, param2:int) : void
      {
         param2 = Math.min(param1.length,param2);
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            param1[_loc3_].selected = true;
            _loc3_++;
         }
      }
      
      public function §&"k§(param1:Object, param2:Object) : int
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
      
      public function §-$;§(param1:Object, param2:Object) : int
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
         this.§+q§.displayObject.removeEventListener(Event.SELECT,this.§`e§);
         this.§+q§.displayObject.removeEventListener(Event.CHANGE,this.§="^§);
         super.dispose();
      }
      
      private function §="^§(param1:Event) : void
      {
         this.§7,§();
      }
   }
}
