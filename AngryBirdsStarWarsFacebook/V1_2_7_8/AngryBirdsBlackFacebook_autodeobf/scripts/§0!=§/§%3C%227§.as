package §0!=§
{
   import § 0§.§@Y§;
   import §%!c§.§4"O§;
   import §%"q§.§"!X§;
   import §%"q§.§,L§;
   import §%"q§.§0!h§;
   import §%"q§.§3§;
   import §%"q§.§8!P§;
   import §%"q§.§9!^§;
   import §%"q§.§@"7§;
   import §%"q§.§]"b§;
   import §,"v§.§@§;
   import §,#+§.§;"y§;
   import §0R§.§0!8§;
   import §1!o§.§<"W§;
   import §<"s§.§@![§;
   import §[!<§.§2"Q§;
   import §[!`§.§#e§;
   import §[!`§.§>"6§;
   import §`!b§.§"§;
   import §`!b§.§''§;
   import §`!b§.§1X§;
   import §`!b§.§;!M§;
   import §`!b§.§;!m§;
   import §`!b§.§<!9§;
   import §`!b§.§>"h§;
   import §`!b§.§?#,§;
   import §`"8§.§-!w§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<"7§ extends §3!c§
   {
       
      
      private var §3N§:MovieClip;
      
      protected var §]S§:§-!w§;
      
      protected var §5"t§:§8!P§;
      
      protected var §;!V§:§"!X§;
      
      protected var §^!r§:Boolean;
      
      protected var §6"G§:Boolean = false;
      
      private var § !p§:§;"y§;
      
      private var §,# §:Boolean = false;
      
      public function §<"7§(param1:Number, param2:§''§, param3:String, param4:§-!w§, param5:§;"y§)
      {
         §]"b§.§%"6§ = param3;
         this.§]S§ = param4;
         this.§ !p§ = param5;
         this.§^!r§ = false;
         super(180,param1,§]"b§,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §=![§.scrollerSprite.x = 7;
         §=![§.scrollerSprite.y = 148;
         §=![§.scrollerSprite.addEventListener(§#e§.§'Z§,this.§ M§);
         this.§3N§ = new §5"]§.§4!K§("com.AngryBirds.friendsbar.FriendsBarAsset")();
         addChildAt(this.§3N§,0);
         mouseEnabled = false;
         this.§3N§.mouseEnabled = false;
         this.§?3§();
         this.§3N§.mcButtonsContainer.txtInboxItemCount.mouseEnabled = this.§3N§.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.§3N§.mcButtonsContainer.mcItemCountBg.mouseEnabled = this.§3N§.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.§3N§.btnUp.addEventListener(MouseEvent.CLICK,this.§%u§);
         this.§3N§.btnDown.addEventListener(MouseEvent.CLICK,this.§'v§);
         this.§3N§.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§'"r§);
         this.§3N§.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.§-!I§);
         this.§3N§.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.§@"&§);
         this.§3N§.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.§[!e§);
         this.§3N§.mcButtonsContainer.btnInbox.addEventListener(MouseEvent.CLICK,this.§5F§);
         this.§3N§.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.§@!<§);
         this.§3N§.mcButtonsContainer.btnGifting.addEventListener(MouseEvent.CLICK,this.§]#+§);
         this.§3N§.btnAddCoins.addEventListener(MouseEvent.CLICK,this.§>!Y§);
         this.§3N§.btnAddEnergy.addEventListener(MouseEvent.CLICK,this.§##1§);
         §=![§.scrollerSprite.addEventListener(§#e§.§<!r§,this.§ !h§);
         §=![§.scrollerSprite.addEventListener(§#e§.CHALLENGE,this.§^L§);
         §=![§.scrollerSprite.addEventListener(§#e§.§ -§,this.§@"n§);
         §=![§.scrollerSprite.addEventListener(§#e§.§%!-§,this.§@x§);
         MovieClip(this.§3N§.mcButtonsContainer.iconInfo).mouseEnabled = false;
         MovieClip(this.§3N§.mcButtonsContainer.iconInfo).mouseChildren = false;
         MovieClip(this.§3N§.mcButtonsContainer.iconQuestion).mouseEnabled = false;
         MovieClip(this.§3N§.mcButtonsContainer.iconQuestion).mouseChildren = false;
         this.§3N§.tabEnabled = this.§3N§.tabChildren = false;
         this.§3N§.diamondIcon.stop();
         this.§5"t§ = new §8!P§(this.§3N§.energyStatus,this.§]S§);
         this.§;!V§ = new §"!X§(this.§3N§,this.§]S§);
         this.§]S§.§;L§.addEventListener(§<"W§.§4f§,this.§+i§);
         this.§+i§();
         this.§]S§.§#"9§.addEventListener(Event.CHANGE,this.§%O§);
         this.§%O§();
         if(this.§]S§.§#"9§.§%"y§)
         {
            this.§]S§.§#"9§.§%"y§.addEventListener(§2"Q§.§=!y§,this.§%O§);
         }
         this.resize();
         §@Y§.addCallback("giftsSentToUsers",this.§>#2§);
         §@Y§.addCallback("invitationBatchSent",this.§83§);
         §@Y§.addCallback("challengeSent",this.§%"`§);
      }
      
      private function §>#2§(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:§]"b§ = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §-!w§(§;"@§.singleton.dataModel).§'"l§.§2!Y§(_loc2_);
            for each(_loc3_ in §=![§.itemRenderers)
            {
               if(_loc2_ == _loc3_.§1d§.§#!P§.userId)
               {
                  if(_loc3_.§1d§ is §0!h§)
                  {
                     §0!h§(_loc3_.§1d§).§6#+§();
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      private function §83§(param1:Array) : void
      {
         var _loc2_:§]"b§ = null;
         if(param1.length == 1)
         {
            for each(_loc2_ in §=![§.itemRenderers)
            {
               if(_loc2_.§1d§ is §@"7§ && param1[0] == _loc2_.§1d§.§#!P§.userId)
               {
                  §@"7§(_loc2_.§1d§).§%!t§();
                  break;
               }
            }
         }
      }
      
      private function §%"`§(param1:Array) : void
      {
         var _loc3_:§]"b§ = null;
         var _loc4_:int = 0;
         if(param1.length != 1)
         {
            return;
         }
         var _loc2_:String = param1[0];
         this.§]S§.§'"l§.§^!<§(_loc2_);
         for each(_loc3_ in §=![§.itemRenderers)
         {
            if(_loc3_.§1d§ is §9!^§ && _loc2_ == _loc3_.§1d§.§#!P§.userId)
            {
               §9!^§(_loc3_.§1d§).§%!t§();
               break;
            }
         }
         if(§8G§ != this.§]S§.§2!J§.§?!x§)
         {
            _loc4_ = this.§]S§.§2!J§.§?!x§.data.length - 1;
            while(_loc4_ >= 0)
            {
               if(this.§]S§.§2!J§.§?!x§.data[_loc4_] is §;!M§ && §;!M§(this.§]S§.§2!J§.§?!x§.data[_loc4_]).userId == _loc2_)
               {
                  this.§]S§.§2!J§.§?!x§.data.splice(_loc4_,1);
               }
               _loc4_--;
            }
         }
      }
      
      private function § M§(param1:§#e§) : void
      {
         var _loc2_:int = §=![§.data.indexOf(param1.data.data);
         if(_loc2_ == -1)
         {
            return;
         }
         var _loc3_:int = §=![§.offset;
         §=![§.data.splice(_loc2_,1);
         if(param1.data.refresh)
         {
            §=![§.data = §=![§.data;
            §=![§.scroll(_loc3_,true);
         }
         this.§ e§();
      }
      
      private function §[8§(param1:int) : void
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
      
      private function § !h§(param1:§#e§) : void
      {
         this.§ C§();
         if(§;"@§.singleton.§3!g§())
         {
            this.§[8§(§=![§.data.indexOf(§,L§(param1.target).data));
         }
         §;"@§.singleton.§@_§();
         §@Y§.§7"H§("flashSendGiftFriend",§-!w§(§;"@§.singleton.dataModel).§0!;§.name,String(param1.data));
      }
      
      private function §^L§(param1:§#e§) : void
      {
         if(§;"@§.singleton.§3!g§())
         {
            this.§[8§(§=![§.data.indexOf(§,L§(param1.target).data));
         }
         var _loc2_:§"#6§ = §,L§(param1.target).§#!P§;
         §;"@§.singleton.§@_§();
         §0!8§.§["g§();
         §@Y§.§7"H§("flashSendChallengeFriend",§-!w§(§;"@§.singleton.dataModel).§0!;§.name,_loc2_.userId);
      }
      
      private function §@"n§(param1:§#e§) : void
      {
         if(§;"@§.singleton.§3!g§())
         {
            this.§[8§(§=![§.data.indexOf(§,L§(param1.target).data));
         }
         var _loc2_:int = (param1.target as §3#7§).§,!p§.§["Q§ - 1;
         §@Y§.§7"H§("flashBrag",(param1.target as §3#7§).§,!p§.userId,this.§ !p§.currentLevel,§;"y§(this.§ !p§).getPrettyLevelString(this.§ !p§.currentLevel));
         §;"@§.singleton.§@_§();
         §0!8§.§@"W§(_loc2_.toString());
      }
      
      private function §@x§(param1:§#e§) : void
      {
         if(§;"@§.singleton.§3!g§())
         {
            this.§[8§(§=![§.data.indexOf(§,L§(param1.target).data));
         }
         §;"@§.singleton.§@_§();
         §@Y§.§7"H§("flashInviteFriendsHandler",§@"7§(param1.target).§#!P§.userId);
         §0!8§.§,"8§();
      }
      
      override protected function resize() : void
      {
         var _loc1_:Number = Math.max(§`!y§,330);
         this.§3N§.mcMiddle.height = _loc1_ - this.§3N§.mcTop.height - this.§3N§.mcBottom.height;
         this.§3N§.mcBottom.y = this.§3N§.mcMiddle.y + this.§3N§.mcMiddle.height;
         this.§3N§.mcButtonsContainer.y = this.§3N§.mcBottom.y + 15;
         this.§3N§.btnDown.y = this.§3N§.mcBottom.y + 13;
         var _loc2_:Number = _loc1_ - 314;
         §=![§.setHeight(_loc2_);
         this.§ e§();
      }
      
      private function §%u§(param1:MouseEvent) : void
      {
         if(this.§3N§.btnUp.enabled)
         {
            this.§ C§();
         }
         this.scroll(-§=![§.visibleItemsCount);
      }
      
      private function §'v§(param1:MouseEvent) : void
      {
         if(this.§3N§.btnDown.enabled)
         {
            this.§ C§();
         }
         this.scroll(§=![§.visibleItemsCount);
      }
      
      private function § C§() : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            §=![§.scroll(param1);
            this.§ e§();
         }
      }
      
      override public function showScores(param1:§<!9§) : void
      {
         this.§4"J§(param1);
         super.showScores(param1);
         this.§ e§();
      }
      
      override protected function onCurrentScoresDataLoaded(param1:§>"6§) : void
      {
         this.§4"J§(§8G§);
         super.onCurrentScoresDataLoaded(param1);
         this.scrollItemToCenter(§1X§(§8G§).§"#0§);
      }
      
      private function §4"J§(param1:§<!9§) : void
      {
         var _loc2_:Object = null;
         if(this.§6"G§ && !param1.isLoading)
         {
            for each(_loc2_ in param1.data)
            {
               if(_loc2_ is §>"h§)
               {
                  (_loc2_ as §>"h§).§0!W§ = this.§6"G§;
               }
            }
            this.§ "8§(§1X§(param1));
         }
      }
      
      override public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         this.§6"G§ = param3;
         super.showLevelScores(param1,param2,param3);
         this.§3N§.txtTitle.text = "Level scores";
         this.§3N§.mcButtonsContainer.iconInfo.visible = false;
         this.§3N§.mcButtonsContainer.iconQuestion.visible = true;
         this.§^!r§ = true;
      }
      
      public function §[r§(param1:§?#,§) : void
      {
         this.§6"G§ = true;
         this.§ "8§(param1);
         super.showScores(param1);
         this.§ e§();
         this.§3N§.txtTitle.text = "Tournament scores";
         this.§3N§.mcButtonsContainer.iconInfo.visible = true;
         this.§3N§.mcButtonsContainer.iconQuestion.visible = false;
         this.§^!r§ = false;
      }
      
      private function § "8§(param1:§1X§) : void
      {
         if(param1.§>!!§)
         {
            param1.§%!;§(this.§]S§);
         }
         param1.§?!X§(this.§]S§,5);
      }
      
      public function §3"a§() : void
      {
         this.§,# § = true;
      }
      
      override public function showTotalScores(param1:Boolean = false) : void
      {
         this.§6"G§ = false;
         if(!param1 && this.§,# §)
         {
            if(!§-"Y§.getTotalScores().isLoading)
            {
               §-"Y§.getTotalScores().loadItems(0,0);
            }
            this.§,# § = false;
         }
         super.showTotalScores(param1);
         this.§3N§.txtTitle.text = "Total scores";
         this.§3N§.mcButtonsContainer.iconInfo.visible = true;
         this.§3N§.mcButtonsContainer.iconQuestion.visible = false;
         this.§^!r§ = false;
         this.scrollItemToCenter(§1X§(§8G§).§"#0§);
      }
      
      private function § e§() : void
      {
         var _loc1_:* = §=![§.offset != 0;
         var _loc2_:* = §=![§.offset != §=![§.data.length - §=![§.visibleItemsCount;
         this.§3N§.btnUp.enabled = _loc1_;
         this.§3N§.btnUp.alpha = !!_loc1_ ? 1 : 0.1;
         this.§3N§.btnDown.enabled = _loc2_;
         this.§3N§.btnDown.alpha = !!_loc2_ ? 1 : 0.1;
      }
      
      public function §3!"§(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(param1 == 0)
         {
            this.§3N§.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.§3N§.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.§3N§.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.§3N§.mcButtonsContainer.mcItemCountBg.visible = true;
            _loc2_ = this.§]!e§(param1);
            this.§3N§.mcButtonsContainer.txtInboxItemCount.text.text = _loc2_;
            _loc3_ = this.§3N§.mcButtonsContainer.mcItemCountBg;
            _loc4_ = _loc3_.width;
            _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
            _loc3_.x = this.§3N§.mcButtonsContainer.txtInboxItemCount.x + this.§3N§.mcButtonsContainer.txtInboxItemCount.width / 2 - _loc3_.width / 2;
         }
      }
      
      public function §?3§() : void
      {
         this.§3N§.mcButtonsContainer.mClipSoundOff.visible = !§@§.§`"@§;
      }
      
      private function §'"r§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.FULL_SCREEN));
      }
      
      private function §-!I§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.§8"`§));
      }
      
      private function §@"&§(param1:MouseEvent) : void
      {
         if(§@![§(§;"@§.singleton.popupManager).isTransitioning())
         {
            return;
         }
         this.§ C§();
         if(this.§^!r§)
         {
            dispatchEvent(new §#e§(§#e§.§&!e§));
         }
         else if(§;"@§.singleton.§=#$§() != §4"O§.§'#2§)
         {
            dispatchEvent(new §#e§(§#e§.§9!@§));
         }
      }
      
      private function §[!e§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.§-!O§));
      }
      
      private function §5F§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.INBOX));
      }
      
      private function §@!<§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.SHOP));
      }
      
      private function §]#+§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.§<"4§));
      }
      
      private function §>!Y§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.§;"F§));
      }
      
      private function §##1§(param1:MouseEvent) : void
      {
         this.§ C§();
         dispatchEvent(new §#e§(§#e§.§"l§));
      }
      
      private function §+i§(param1:§<"W§ = null) : void
      {
         this.§;!V§.update();
      }
      
      private function §%O§(param1:Event = null) : void
      {
         this.§3!"§(this.§]S§.§#"9§.§<"^§);
      }
      
      public function §<!y§() : void
      {
         this.§3N§.diamondIcon.gotoAndPlay("minus1");
      }
      
      public function §%!s§() : void
      {
         this.§3N§.diamondIcon.gotoAndPlay("plus1");
      }
      
      public function §`"9§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc11_:Object = null;
         if(!§8G§ || §;!m§(§-"Y§).§]#"§(param1) != §8G§)
         {
            return 0;
         }
         var _loc7_:§1X§ = §1X§(§8G§);
         var _loc8_:Array = [];
         var _loc9_:int = §=![§.offset;
         var _loc10_:int = _loc7_.§`"9§(param2,param3,param4,_loc8_);
         §=![§.data = §8G§.data;
         if(_loc10_ - 1 != -1)
         {
            this.scrollItemToCenter(_loc10_ - 1,true);
         }
         for each(_loc11_ in _loc8_)
         {
            param5.push(_loc11_);
         }
         this.§ e§();
         return _loc10_;
      }
      
      public function §0"i§() : void
      {
         this.§^!r§ = false;
         this.§3N§.mcButtonsContainer.iconInfo.visible = true;
         this.§3N§.mcButtonsContainer.iconQuestion.visible = false;
      }
      
      override public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         super.scrollItemToCenter(param1,param2);
         this.§ e§();
      }
      
      public function §2!#§() : void
      {
         this.§3N§.mcButtonsContainer.iconInfo.visible = false;
         this.§3N§.mcButtonsContainer.iconQuestion.visible = false;
         this.§3N§.mcButtonsContainer.btnInfo.visible = false;
      }
      
      public function §-!h§() : void
      {
         this.§3N§.mcButtonsContainer.btnInfo.visible = true;
      }
      
      private function §]!e§(param1:Number) : String
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
