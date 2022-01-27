package §1f§
{
   import § !m§.§^"j§;
   import §!"W§.§="5§;
   import §!"e§.§9#B§;
   import §"k§.§!!J§;
   import §"k§.§&"r§;
   import §"k§.§5"2§;
   import §"k§.§6!a§;
   import §"k§.§8"U§;
   import §"k§.§[!7§;
   import §"k§.§]"V§;
   import §"k§.§`§;
   import §#!'§.§6"]§;
   import §,"N§.§@#B§;
   import §1"a§.§"!w§;
   import §1"a§.§,#P§;
   import §1"a§.§4!a§;
   import §1"a§.§6-§;
   import §1"a§.§9#+§;
   import §1"a§.§;"2§;
   import §1"a§.§^!t§;
   import §1"a§.§^#G§;
   import §7#W§.§2O§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §?m§.§,"X§;
   import §]Q§.§&#P§;
   import §]Q§.§2T§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#!8§ extends §"N§
   {
       
      
      private var § L§:MovieClip;
      
      protected var §4#J§:§@#B§;
      
      protected var §0"'§:§,#P§;
      
      protected var §;-§:§4!a§;
      
      protected var §>!@§:Boolean;
      
      protected var §`#J§:Boolean = false;
      
      private var §+!b§:§,"X§;
      
      private var §@!Q§:Boolean = false;
      
      public function §#!8§(param1:Number, param2:§&"r§, param3:String, param4:§@#B§, param5:§,"X§)
      {
         §^#G§.§-8§ = param3;
         this.§4#J§ = param4;
         this.§+!b§ = param5;
         this.§>!@§ = false;
         super(180,param1,§^#G§,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §=`§.scrollerSprite.x = 7;
         §=`§.scrollerSprite.y = 148;
         §=`§.scrollerSprite.addEventListener(§&#P§.§-"&§,this.§?#-§);
         this.§ L§ = new §5_§.§`"G§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         addChildAt(this.§ L§,0);
         mouseEnabled = false;
         this.§ L§.mouseEnabled = false;
         this.§&_§();
         this.§ L§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = this.§ L§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§ L§.mcButtonsContainer.mcItemCountBg.mouseEnabled = this.§ L§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§ L§.btnUp.addEventListener(MouseEvent.CLICK,this.§?!!§);
         this.§ L§.btnDown.addEventListener(MouseEvent.CLICK,this.§%"U§);
         this.§ L§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§""1§);
         this.§ L§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§]##§);
         this.§ L§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§]![§);
         this.§ L§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§[#Q§);
         this.§ L§.mcButtonsContainer.btnInbox.addEventListener(MouseEvent.CLICK,this.§&C§);
         this.§ L§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§>!D§);
         this.§ L§.mcButtonsContainer.btnGifting.addEventListener(MouseEvent.CLICK,this.§[,§);
         this.§ L§.btnAddCoins.addEventListener(MouseEvent.CLICK,this.§3!f§);
         this.§ L§.btnAddEnergy.addEventListener(MouseEvent.CLICK,this.§3!m§);
         §=`§.scrollerSprite.addEventListener(§&#P§.§%"n§,this.§9!0§);
         §=`§.scrollerSprite.addEventListener(§&#P§.CHALLENGE,this.§]o§);
         §=`§.scrollerSprite.addEventListener(§&#P§.§10§,this.§5#I§);
         §=`§.scrollerSprite.addEventListener(§&#P§.§,"=§,this.§2"P§);
         MovieClip(this.§ L§.mcButtonsContainer.iconInfo).mouseEnabled = false;
         MovieClip(this.§ L§.mcButtonsContainer.iconInfo).mouseChildren = false;
         MovieClip(this.§ L§.mcButtonsContainer.iconQuestion).mouseEnabled = false;
         MovieClip(this.§ L§.mcButtonsContainer.iconQuestion).mouseChildren = false;
         this.§ L§.tabEnabled = this.§ L§.tabChildren = false;
         this.§ L§.diamondIcon.stop();
         this.§0"'§ = new §,#P§(this.§ L§.energyStatus,this.§4#J§);
         this.§;-§ = new §4!a§(this.§ L§,this.§4#J§);
         this.§4#J§.§`!W§.addEventListener(§="5§.§1c§,this.§-!b§);
         this.§-!b§();
         this.§4#J§.§6!G§.addEventListener(Event.CHANGE,this.§1!=§);
         this.§1!=§();
         if(this.§4#J§.§6!G§.§7#X§)
         {
            this.§4#J§.§6!G§.§7#X§.addEventListener(§^"j§.§93§,this.§1!=§);
         }
         this.resize();
         §""v§.addCallback("giftsSentToUsers",this.§+#F§);
         §""v§.addCallback("invitationBatchSent",this.§`!Y§);
         §""v§.addCallback("challengeSent",this.§`#!§);
      }
      
      private function §+#F§(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:§^#G§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §@#B§(§4#;§.singleton.dataModel).§;!A§.§!7§(_loc2_);
            for each(_loc3_ in §=`§.itemRenderers)
            {
               if(_loc2_ == _loc3_.§8f§.§6!1§.userId)
               {
                  if(_loc3_.§8f§ is §"!w§)
                  {
                     §"!w§(_loc3_.§8f§).§5"S§();
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      private function §`!Y§(param1:Array) : void
      {
         var _loc2_:§^#G§ = null;
         if(param1.length == 1)
         {
            for each(_loc2_ in §=`§.itemRenderers)
            {
               if(_loc2_.§8f§ is §^!t§ && param1[0] == _loc2_.§8f§.§6!1§.userId)
               {
                  §^!t§(_loc2_.§8f§).§+-§();
                  break;
               }
            }
         }
      }
      
      private function §`#!§(param1:Array) : void
      {
         var _loc3_:§^#G§ = null;
         var _loc4_:int = 0;
         if(param1.length != 1)
         {
            return;
         }
         var _loc2_:String = param1[0];
         this.§4#J§.§;!A§.§4T§(_loc2_);
         for each(_loc3_ in §=`§.itemRenderers)
         {
            if(_loc3_.§8f§ is §6-§ && _loc2_ == _loc3_.§8f§.§6!1§.userId)
            {
               §6-§(_loc3_.§8f§).§+-§();
               break;
            }
         }
         if(§;#7§ != this.§4#J§.§!!C§.§'"?§)
         {
            _loc4_ = this.§4#J§.§!!C§.§'"?§.data.length - 1;
            while(_loc4_ >= 0)
            {
               if(this.§4#J§.§!!C§.§'"?§.data[_loc4_] is §`#8§ && §`#8§(this.§4#J§.§!!C§.§'"?§.data[_loc4_]).userId == _loc2_)
               {
                  this.§4#J§.§!!C§.§'"?§.data.splice(_loc4_,1);
               }
               _loc4_--;
            }
         }
      }
      
      private function §?#-§(param1:§&#P§) : void
      {
         var _loc2_:int = §=`§.data.indexOf(param1.data.data);
         if(_loc2_ == -1)
         {
            return;
         }
         var _loc3_:int = §=`§.offset;
         §=`§.data.splice(_loc2_,1);
         if(param1.data.refresh)
         {
            §=`§.data = §=`§.data;
            §=`§.scroll(_loc3_,true);
         }
         this.§9!V§();
      }
      
      private function §%[§(param1:int) : void
      {
         var t:Timer = null;
         var scrollToIndex:int = param1;
         t = new Timer(150,1);
         t.addEventListener(TimerEvent.TIMER,function(param1:TimerEvent):void
         {
            t.removeEventListener(TimerEvent.TIMER,arguments.callee);
            t.reset();
            scrollItemToCenter(scrollToIndex);
         });
         t.start();
      }
      
      private function §9!0§(param1:§&#P§) : void
      {
         this.§9"§();
         if(§4#;§.singleton.§>!Z§())
         {
            this.§%[§(§=`§.data.indexOf(§;"2§(param1.target).data));
         }
         §4#;§.singleton.§<#'§();
         §""v§.§&R§("flashSendGiftFriend",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,String(param1.data));
      }
      
      private function §]o§(param1:§&#P§) : void
      {
         if(§4#;§.singleton.§>!Z§())
         {
            this.§%[§(§=`§.data.indexOf(§;"2§(param1.target).data));
         }
         var _loc2_:§]"V§ = §;"2§(param1.target).§6!1§;
         §4#;§.singleton.§<#'§();
         §6"]§.§0"N§();
         §""v§.§&R§("flashSendChallengeFriend",§@#B§(§4#;§.singleton.dataModel).§9!N§.name,_loc2_.userId);
      }
      
      private function §5#I§(param1:§&#P§) : void
      {
         if(§4#;§.singleton.§>!Z§())
         {
            this.§%[§(§=`§.data.indexOf(§;"2§(param1.target).data));
         }
         var _loc2_:int = (param1.target as §9#+§).§-!L§.§9!<§ - 1;
         §""v§.§&R§("flashBrag",(param1.target as §9#+§).§-!L§.userId,this.§+!b§.currentLevel,§,"X§(this.§+!b§).getPrettyLevelString(this.§+!b§.currentLevel));
         §4#;§.singleton.§<#'§();
         §6"]§.§#!9§(_loc2_.toString());
      }
      
      private function §2"P§(param1:§&#P§) : void
      {
         if(§4#;§.singleton.§>!Z§())
         {
            this.§%[§(§=`§.data.indexOf(§;"2§(param1.target).data));
         }
         §4#;§.singleton.§<#'§();
         §""v§.§&R§("flashInviteFriendsHandler",§^!t§(param1.target).§6!1§.userId);
         §6"]§.§8"<§();
      }
      
      override protected function resize() : void
      {
         var _loc1_:Number = Math.max(§[!4§,330);
         this.§ L§.mcMiddle.height = _loc1_ - this.§ L§.mcTop.height - this.§ L§.mcBottom.height;
         this.§ L§.mcBottom.y = this.§ L§.mcMiddle.y + this.§ L§.mcMiddle.height;
         this.§ L§.mcButtonsContainer.y = this.§ L§.mcBottom.y + 15;
         this.§ L§.btnDown.y = this.§ L§.mcBottom.y + 13;
         var _loc2_:Number = _loc1_ - 314;
         §=`§.setHeight(_loc2_);
         this.§9!V§();
      }
      
      private function §?!!§(param1:MouseEvent) : void
      {
         if(this.§ L§.btnUp.enabled)
         {
            this.§9"§();
         }
         this.scroll(-§=`§.visibleItemsCount);
      }
      
      private function §%"U§(param1:MouseEvent) : void
      {
         if(this.§ L§.btnDown.enabled)
         {
            this.§9"§();
         }
         this.scroll(§=`§.visibleItemsCount);
      }
      
      private function §9"§() : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            §=`§.scroll(param1);
            this.§9!V§();
         }
      }
      
      override public function showScores(param1:§6!a§) : void
      {
         this.§&#;§(param1);
         super.showScores(param1);
         this.§9!V§();
      }
      
      override protected function onCurrentScoresDataLoaded(param1:§2T§) : void
      {
         this.§&#;§(§;#7§);
         super.onCurrentScoresDataLoaded(param1);
         this.scrollItemToCenter(§!!J§(§;#7§).§8$§);
      }
      
      private function §&#;§(param1:§6!a§) : void
      {
         var _loc2_:Object = null;
         if(this.§`#J§ && !param1.isLoading)
         {
            for each(_loc2_ in param1.data)
            {
               if(_loc2_ is §5"2§)
               {
                  (_loc2_ as §5"2§).§-!P§ = this.§`#J§;
               }
            }
            this.§9#N§(§!!J§(param1));
         }
      }
      
      override public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         this.§`#J§ = param3;
         super.showLevelScores(param1,param2,param3);
         this.§ L§.txtTitle.text = "Level scores";
         this.§ L§.mcButtonsContainer.iconInfo.visible = false;
         this.§ L§.mcButtonsContainer.iconQuestion.visible = true;
         this.§>!@§ = true;
      }
      
      public function §%#+§(param1:§8"U§) : void
      {
         this.§`#J§ = true;
         this.§9#N§(param1);
         super.showScores(param1);
         this.§9!V§();
         this.§ L§.txtTitle.text = "Tournament scores";
         this.§ L§.mcButtonsContainer.iconInfo.visible = true;
         this.§ L§.mcButtonsContainer.iconQuestion.visible = false;
         this.§>!@§ = false;
      }
      
      private function §9#N§(param1:§!!J§) : void
      {
         if(param1.§&"S§)
         {
            param1.§`j§(this.§4#J§);
         }
         param1.§^#<§(this.§4#J§,5);
      }
      
      public function §!d§() : void
      {
         this.§@!Q§ = true;
      }
      
      override public function showTotalScores(param1:Boolean = false) : void
      {
         this.§`#J§ = false;
         if(!param1 && this.§@!Q§)
         {
            if(!§=M§.getTotalScores().isLoading)
            {
               §=M§.getTotalScores().loadItems(0,0);
            }
            this.§@!Q§ = false;
         }
         super.showTotalScores(param1);
         this.§ L§.txtTitle.text = "Total scores";
         this.§ L§.mcButtonsContainer.iconInfo.visible = true;
         this.§ L§.mcButtonsContainer.iconQuestion.visible = false;
         this.§>!@§ = false;
         this.scrollItemToCenter(§!!J§(§;#7§).§8$§);
      }
      
      private function §9!V§() : void
      {
         var _loc1_:* = §=`§.offset != 0;
         var _loc2_:* = §=`§.offset != §=`§.data.length - §=`§.visibleItemsCount;
         this.§ L§.btnUp.enabled = _loc1_;
         this.§ L§.btnUp.alpha = !!_loc1_ ? 1 : 0.1;
         this.§ L§.btnDown.enabled = _loc2_;
         this.§ L§.btnDown.alpha = !!_loc2_ ? 1 : 0.1;
      }
      
      public function §-"-§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§ L§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§ L§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§ L§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§ L§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = this.§6!&§(param1);
            this.§ L§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§ L§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§ L§.mcButtonsContainer.txtInboxItemCount.x + this.§ L§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      public function §&_§() : void
      {
         this.§ L§.mcButtonsContainer.mClipSoundOff.visible = !§?!r§.§`"5§;
      }
      
      private function §""1§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.FULL_SCREEN));
      }
      
      private function §]##§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.§#!a§));
      }
      
      private function §]![§(param1:MouseEvent) : void
      {
         if(§9#B§(§4#;§.singleton.popupManager).isTransitioning())
         {
            return;
         }
         this.§9"§();
         if(this.§>!@§)
         {
            dispatchEvent(new §&#P§(§&#P§.§;!n§));
         }
         else if(§4#;§.singleton.§]?§() != §2O§.§^!7§)
         {
            dispatchEvent(new §&#P§(§&#P§.INFO));
         }
      }
      
      private function §[#Q§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.§<B§));
      }
      
      private function §&C§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.INBOX));
      }
      
      private function §>!D§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.SHOP));
      }
      
      private function §[,§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.§?#+§));
      }
      
      private function §3!f§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.§>"n§));
      }
      
      private function §3!m§(param1:MouseEvent) : void
      {
         this.§9"§();
         dispatchEvent(new §&#P§(§&#P§.§;o§));
      }
      
      private function §-!b§(param1:§="5§ = null) : void
      {
         this.§;-§.update();
      }
      
      private function §1!=§(param1:Event = null) : void
      {
         this.§-"-§(this.§4#J§.§6!G§.§#";§);
      }
      
      public function §%!r§() : void
      {
         this.§ L§.diamondIcon.gotoAndPlay("minus1");
      }
      
      public function §5!Z§() : void
      {
         this.§ L§.diamondIcon.gotoAndPlay("plus1");
      }
      
      public function §="_§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc11_:Object = null;
         if(!§;#7§ || §[!7§(§=M§).§,"1§(param1) != §;#7§)
         {
            return 0;
         }
         var _loc7_:§!!J§ = §!!J§(§;#7§);
         var _loc8_:Array = [];
         var _loc9_:int = §=`§.offset;
         var _loc10_:int = _loc7_.§="_§(param2,param3,param4,_loc8_);
         §=`§.data = §;#7§.data;
         if(_loc10_ - 1 != -1)
         {
            this.scrollItemToCenter(_loc10_ - 1,true);
         }
         for each(_loc11_ in _loc8_)
         {
            param5.push(_loc11_);
         }
         this.§9!V§();
         return _loc10_;
      }
      
      public function §>Z§() : void
      {
         this.§>!@§ = false;
         this.§ L§.mcButtonsContainer.iconInfo.visible = true;
         this.§ L§.mcButtonsContainer.iconQuestion.visible = false;
      }
      
      override public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         super.scrollItemToCenter(param1,param2);
         this.§9!V§();
      }
      
      public function §do§() : void
      {
         this.§ L§.mcButtonsContainer.iconInfo.visible = false;
         this.§ L§.mcButtonsContainer.iconQuestion.visible = false;
         this.§ L§.mcButtonsContainer.btnInfo.visible = false;
      }
      
      public function §&`§() : void
      {
         this.§ L§.mcButtonsContainer.btnInfo.visible = true;
      }
      
      private function §6!&§(param1:Number) : String
      {
         var _loc2_:* = null;
         param1 = Math.min(param1,99000000);
         if(param1 >= 100000)
         {
            param1 /= 1000000;
            _loc2_ = param1.toPrecision(2).slice(0,3) + "M";
         }
         else if(param1 >= 1000)
         {
            param1 /= 1000;
            _loc2_ = param1.toPrecision(2) + "k";
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return _loc2_;
      }
   }
}
