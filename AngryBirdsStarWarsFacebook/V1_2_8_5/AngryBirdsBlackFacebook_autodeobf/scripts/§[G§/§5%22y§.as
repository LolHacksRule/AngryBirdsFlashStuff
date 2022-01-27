package §[G§
{
   import §!b§.§]!s§;
   import §"d§.§%-§;
   import §"d§.§-F§;
   import §+"Y§.§4#%§;
   import §0"k§.§&L§;
   import §0"k§.§-"[§;
   import §0"k§.§1>§;
   import §0"k§.§3"E§;
   import §0"k§.§8"T§;
   import §0"k§.§85§;
   import §0"k§.§@!D§;
   import §0"k§.§@"[§;
   import §5"Q§.§5"s§;
   import §8"'§.§-0§;
   import §9"U§.§7"1§;
   import §=!G§.§%i§;
   import §=!G§.§1L§;
   import §=!G§.§2#&§;
   import §=!G§.§3"M§;
   import §=!G§.§4!"§;
   import §=!G§.§4!<§;
   import §=!G§.§4!C§;
   import §=!G§.§`"P§;
   import §?!u§.§,!$§;
   import §^!T§.§'"9§;
   import §`"1§.§=Q§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §null §.§ #$§;
   
   public class §5"y§ extends §7!S§
   {
       
      
      private var §,"w§:MovieClip;
      
      protected var §?!$§:§7"1§;
      
      protected var §`#1§:§2#&§;
      
      protected var §#"s§:§4!<§;
      
      protected var §#"a§:Boolean;
      
      protected var §]"a§:Boolean = false;
      
      private var §'""§:§ #$§;
      
      private var §%!&§:Boolean = false;
      
      public function §5"y§(param1:Number, param2:§8"T§, param3:String, param4:§7"1§, param5:§ #$§)
      {
         §`"P§.§ u§ = param3;
         this.§?!$§ = param4;
         this.§'""§ = param5;
         this.§#"a§ = false;
         super(180,param1,§`"P§,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6"9§.scrollerSprite.x = 7;
         §6"9§.scrollerSprite.y = 148;
         §6"9§.scrollerSprite.addEventListener(§%-§.§<R§,this.§-"T§);
         this.§,"w§ = new §%!Z§.§;",§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         addChildAt(this.§,"w§,0);
         mouseEnabled = false;
         this.§,"w§.mouseEnabled = false;
         this.§"" §();
         this.§,"w§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = this.§,"w§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§,"w§.mcButtonsContainer.mcItemCountBg.mouseEnabled = this.§,"w§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§,"w§.btnUp.addEventListener(MouseEvent.CLICK,this.§""m§);
         this.§,"w§.btnDown.addEventListener(MouseEvent.CLICK,this.§^!I§);
         this.§,"w§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§#!f§);
         this.§,"w§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§3!v§);
         this.§,"w§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§?##§);
         this.§,"w§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§-#'§);
         this.§,"w§.mcButtonsContainer.btnInbox.addEventListener(MouseEvent.CLICK,this.§9A§);
         this.§,"w§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§`"Z§);
         this.§,"w§.mcButtonsContainer.btnGifting.addEventListener(MouseEvent.CLICK,this.§0-§);
         this.§,"w§.btnAddCoins.addEventListener(MouseEvent.CLICK,this.§0!x§);
         this.§,"w§.btnAddEnergy.addEventListener(MouseEvent.CLICK,this.§9!?§);
         §6"9§.scrollerSprite.addEventListener(§%-§.§-q§,this.§+!?§);
         §6"9§.scrollerSprite.addEventListener(§%-§.CHALLENGE,this.§0![§);
         §6"9§.scrollerSprite.addEventListener(§%-§.§5"§,this.§'"x§);
         §6"9§.scrollerSprite.addEventListener(§%-§.§!!Q§,this.§`>§);
         MovieClip(this.§,"w§.mcButtonsContainer.iconInfo).mouseEnabled = false;
         MovieClip(this.§,"w§.mcButtonsContainer.iconInfo).mouseChildren = false;
         MovieClip(this.§,"w§.mcButtonsContainer.iconQuestion).mouseEnabled = false;
         MovieClip(this.§,"w§.mcButtonsContainer.iconQuestion).mouseChildren = false;
         this.§,"w§.tabEnabled = this.§,"w§.tabChildren = false;
         this.§,"w§.diamondIcon.stop();
         this.§`#1§ = new §2#&§(this.§,"w§.energyStatus,this.§?!$§);
         this.§#"s§ = new §4!<§(this.§,"w§,this.§?!$§);
         this.§?!$§.§&!w§.addEventListener(§,!$§.§6,§,this.§#I§);
         this.§#I§();
         this.§?!$§.§ "_§.addEventListener(Event.CHANGE,this.§ "q§);
         this.§ "q§();
         if(this.§?!$§.§ "_§.§#!N§)
         {
            this.§?!$§.§ "_§.§#!N§.addEventListener(§'"9§.§9"u§,this.§ "q§);
         }
         this.resize();
         §5"s§.addCallback("giftsSentToUsers",this.§'c§);
         §5"s§.addCallback("invitationBatchSent",this.§"a§);
         §5"s§.addCallback("challengeSent",this.§4"z§);
      }
      
      private function §'c§(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:§`"P§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §7"1§(§4"#§.singleton.dataModel).§6!I§.§<"j§(_loc2_);
            for each(_loc3_ in §6"9§.itemRenderers)
            {
               if(_loc2_ == _loc3_.§;k§.§7d§.userId)
               {
                  if(_loc3_.§;k§ is §3"M§)
                  {
                     §3"M§(_loc3_.§;k§).§;N§();
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      private function §"a§(param1:Array) : void
      {
         var _loc2_:§`"P§ = null;
         if(param1.length == 1)
         {
            for each(_loc2_ in §6"9§.itemRenderers)
            {
               if(_loc2_.§;k§ is §%i§ && param1[0] == _loc2_.§;k§.§7d§.userId)
               {
                  §%i§(_loc2_.§;k§).§%!%§();
                  break;
               }
            }
         }
      }
      
      private function §4"z§(param1:Array) : void
      {
         var _loc3_:§`"P§ = null;
         var _loc4_:int = 0;
         if(param1.length != 1)
         {
            return;
         }
         var _loc2_:String = param1[0];
         this.§?!$§.§6!I§.§3"D§(_loc2_);
         for each(_loc3_ in §6"9§.itemRenderers)
         {
            if(_loc3_.§;k§ is §4!"§ && _loc2_ == _loc3_.§;k§.§7d§.userId)
            {
               §4!"§(_loc3_.§;k§).§%!%§();
               break;
            }
         }
         if(§!"[§ != this.§?!$§.§1z§.§]!A§)
         {
            _loc4_ = this.§?!$§.§1z§.§]!A§.data.length - 1;
            while(_loc4_ >= 0)
            {
               if(this.§?!$§.§1z§.§]!A§.data[_loc4_] is §3"E§ && §3"E§(this.§?!$§.§1z§.§]!A§.data[_loc4_]).userId == _loc2_)
               {
                  this.§?!$§.§1z§.§]!A§.data.splice(_loc4_,1);
               }
               _loc4_--;
            }
         }
      }
      
      private function §-"T§(param1:§%-§) : void
      {
         var _loc2_:int = §6"9§.data.indexOf(param1.data.data);
         if(_loc2_ == -1)
         {
            return;
         }
         var _loc3_:int = §6"9§.offset;
         §6"9§.data.splice(_loc2_,1);
         if(param1.data.refresh)
         {
            §6"9§.data = §6"9§.data;
            §6"9§.scroll(_loc3_,true);
         }
         this.§[U§();
      }
      
      private function §5t§(param1:int) : void
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
      
      private function §+!?§(param1:§%-§) : void
      {
         this.§,"g§();
         if(§4"#§.singleton.§!n§())
         {
            this.§5t§(§6"9§.data.indexOf(§4!C§(param1.target).data));
         }
         §4"#§.singleton.§,]§();
         §5"s§.§<!8§("flashSendGiftFriend",§7"1§(§4"#§.singleton.dataModel).§#"_§.name,String(param1.data));
      }
      
      private function §0![§(param1:§%-§) : void
      {
         if(§4"#§.singleton.§!n§())
         {
            this.§5t§(§6"9§.data.indexOf(§4!C§(param1.target).data));
         }
         var _loc2_:§&L§ = §4!C§(param1.target).§7d§;
         §4"#§.singleton.§,]§();
         §]!s§.§ !K§();
         §5"s§.§<!8§("flashSendChallengeFriend",§7"1§(§4"#§.singleton.dataModel).§#"_§.name,_loc2_.userId);
      }
      
      private function §'"x§(param1:§%-§) : void
      {
         if(§4"#§.singleton.§!n§())
         {
            this.§5t§(§6"9§.data.indexOf(§4!C§(param1.target).data));
         }
         var _loc2_:int = (param1.target as §1L§).§ "F§.§5!b§ - 1;
         §5"s§.§<!8§("flashBrag",(param1.target as §1L§).§ "F§.userId,this.§'""§.currentLevel,§ #$§(this.§'""§).getPrettyLevelString(this.§'""§.currentLevel));
         §4"#§.singleton.§,]§();
         §]!s§.§`h§(_loc2_.toString());
      }
      
      private function §`>§(param1:§%-§) : void
      {
         if(§4"#§.singleton.§!n§())
         {
            this.§5t§(§6"9§.data.indexOf(§4!C§(param1.target).data));
         }
         §4"#§.singleton.§,]§();
         §5"s§.§<!8§("flashInviteFriendsHandler",§%i§(param1.target).§7d§.userId);
         §]!s§.§?m§();
      }
      
      override protected function resize() : void
      {
         var _loc1_:Number = Math.max(§?!O§,330);
         this.§,"w§.mcMiddle.height = _loc1_ - this.§,"w§.mcTop.height - this.§,"w§.mcBottom.height;
         this.§,"w§.mcBottom.y = this.§,"w§.mcMiddle.y + this.§,"w§.mcMiddle.height;
         this.§,"w§.mcButtonsContainer.y = this.§,"w§.mcBottom.y + 15;
         this.§,"w§.btnDown.y = this.§,"w§.mcBottom.y + 13;
         var _loc2_:Number = _loc1_ - 314;
         §6"9§.setHeight(_loc2_);
         this.§[U§();
      }
      
      private function §""m§(param1:MouseEvent) : void
      {
         if(this.§,"w§.btnUp.enabled)
         {
            this.§,"g§();
         }
         this.scroll(-§6"9§.visibleItemsCount);
      }
      
      private function §^!I§(param1:MouseEvent) : void
      {
         if(this.§,"w§.btnDown.enabled)
         {
            this.§,"g§();
         }
         this.scroll(§6"9§.visibleItemsCount);
      }
      
      private function §,"g§() : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            §6"9§.scroll(param1);
            this.§[U§();
         }
      }
      
      override public function showScores(param1:§85§) : void
      {
         this.§+!Q§(param1);
         super.showScores(param1);
         this.§[U§();
      }
      
      override protected function onCurrentScoresDataLoaded(param1:§-F§) : void
      {
         this.§+!Q§(§!"[§);
         super.onCurrentScoresDataLoaded(param1);
         this.scrollItemToCenter(§1>§(§!"[§).§=!j§);
      }
      
      private function §+!Q§(param1:§85§) : void
      {
         var _loc2_:Object = null;
         if(this.§]"a§ && !param1.isLoading)
         {
            for each(_loc2_ in param1.data)
            {
               if(_loc2_ is §-"[§)
               {
                  (_loc2_ as §-"[§).§4"d§ = this.§]"a§;
               }
            }
            this.§>##§(§1>§(param1));
         }
      }
      
      override public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         this.§]"a§ = param3;
         super.showLevelScores(param1,param2,param3);
         this.§,"w§.txtTitle.text = "Level scores";
         this.§,"w§.mcButtonsContainer.iconInfo.visible = false;
         this.§,"w§.mcButtonsContainer.iconQuestion.visible = true;
         this.§#"a§ = true;
      }
      
      public function §0! §(param1:§@"[§) : void
      {
         this.§]"a§ = true;
         this.§>##§(param1);
         super.showScores(param1);
         this.§[U§();
         this.§,"w§.txtTitle.text = "Tournament scores";
         this.§,"w§.mcButtonsContainer.iconInfo.visible = true;
         this.§,"w§.mcButtonsContainer.iconQuestion.visible = false;
         this.§#"a§ = false;
      }
      
      private function §>##§(param1:§1>§) : void
      {
         if(param1.§2!e§)
         {
            param1.§2!5§(this.§?!$§);
         }
         param1.§2!l§(this.§?!$§,5);
      }
      
      public function §"]§() : void
      {
         this.§%!&§ = true;
      }
      
      override public function showTotalScores(param1:Boolean = false) : void
      {
         this.§]"a§ = false;
         if(!param1 && this.§%!&§)
         {
            if(!§<!U§.getTotalScores().isLoading)
            {
               §<!U§.getTotalScores().loadItems(0,0);
            }
            this.§%!&§ = false;
         }
         super.showTotalScores(param1);
         this.§,"w§.txtTitle.text = "Total scores";
         this.§,"w§.mcButtonsContainer.iconInfo.visible = true;
         this.§,"w§.mcButtonsContainer.iconQuestion.visible = false;
         this.§#"a§ = false;
         this.scrollItemToCenter(§1>§(§!"[§).§=!j§);
      }
      
      private function §[U§() : void
      {
         var _loc1_:* = §6"9§.offset != 0;
         var _loc2_:* = §6"9§.offset != §6"9§.data.length - §6"9§.visibleItemsCount;
         this.§,"w§.btnUp.enabled = _loc1_;
         this.§,"w§.btnUp.alpha = !!_loc1_ ? 1 : 0.1;
         this.§,"w§.btnDown.enabled = _loc2_;
         this.§,"w§.btnDown.alpha = !!_loc2_ ? 1 : 0.1;
      }
      
      public function §]!w§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§,"w§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§,"w§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§,"w§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§,"w§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = this.§ !v§(param1);
            this.§,"w§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§,"w§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§,"w§.mcButtonsContainer.txtInboxItemCount.x + this.§,"w§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      public function §"" §() : void
      {
         this.§,"w§.mcButtonsContainer.mClipSoundOff.visible = !§=Q§.§2!8§;
      }
      
      private function §#!f§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.FULL_SCREEN));
      }
      
      private function §3!v§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.§9!l§));
      }
      
      private function §?##§(param1:MouseEvent) : void
      {
         if(§4#%§(§4"#§.singleton.popupManager).isTransitioning())
         {
            return;
         }
         this.§,"g§();
         if(this.§#"a§)
         {
            dispatchEvent(new §%-§(§%-§.§-7§));
         }
         else if(§4"#§.singleton.§?!D§() != §-0§.§-!U§)
         {
            dispatchEvent(new §%-§(§%-§.§5#&§));
         }
      }
      
      private function §-#'§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.§>!Z§));
      }
      
      private function §9A§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.INBOX));
      }
      
      private function §`"Z§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.SHOP));
      }
      
      private function §0-§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.§7"c§));
      }
      
      private function §0!x§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.§!"k§));
      }
      
      private function §9!?§(param1:MouseEvent) : void
      {
         this.§,"g§();
         dispatchEvent(new §%-§(§%-§.§""n§));
      }
      
      private function §#I§(param1:§,!$§ = null) : void
      {
         this.§#"s§.update();
      }
      
      private function § "q§(param1:Event = null) : void
      {
         this.§]!w§(this.§?!$§.§ "_§.§"$§);
      }
      
      public function §&n§() : void
      {
         this.§,"w§.diamondIcon.gotoAndPlay("minus1");
      }
      
      public function §2!E§() : void
      {
         this.§,"w§.diamondIcon.gotoAndPlay("plus1");
      }
      
      public function §%!0§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc11_:Object = null;
         if(!§!"[§ || §@!D§(§<!U§).§6!k§(param1) != §!"[§)
         {
            return 0;
         }
         var _loc7_:§1>§ = §1>§(§!"[§);
         var _loc8_:Array = [];
         var _loc9_:int = §6"9§.offset;
         var _loc10_:int = _loc7_.§%!0§(param2,param3,param4,_loc8_);
         §6"9§.data = §!"[§.data;
         if(_loc10_ - 1 != -1)
         {
            this.scrollItemToCenter(_loc10_ - 1,true);
         }
         for each(_loc11_ in _loc8_)
         {
            param5.push(_loc11_);
         }
         this.§[U§();
         return _loc10_;
      }
      
      public function § !b§() : void
      {
         this.§#"a§ = false;
         this.§,"w§.mcButtonsContainer.iconInfo.visible = true;
         this.§,"w§.mcButtonsContainer.iconQuestion.visible = false;
      }
      
      override public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         super.scrollItemToCenter(param1,param2);
         this.§[U§();
      }
      
      public function §7-§() : void
      {
         this.§,"w§.mcButtonsContainer.iconInfo.visible = false;
         this.§,"w§.mcButtonsContainer.iconQuestion.visible = false;
         this.§,"w§.mcButtonsContainer.btnInfo.visible = false;
      }
      
      public function §@!@§() : void
      {
         this.§,"w§.mcButtonsContainer.btnInfo.visible = true;
      }
      
      private function § !v§(param1:Number) : String
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
