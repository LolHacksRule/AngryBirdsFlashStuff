package §=!V§
{
   import §!!t§.§'8§;
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §+"u§.§>#l§;
   import §+"u§.§^"C§;
   import §+#B§.§""D§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §+#B§.§?"K§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §3!5§.§0#r§;
   import §4!n§.§'!,§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §;$5§.AbstractPopup;
   import §=#§.§0"V§;
   import §>"9§.§[#%§;
   import §>#O§.§'##§;
   import §>#O§.§]u§;
   import §]"'§.§#$D§;
   import §]"'§.§-!@§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import §]"'§.§default§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §["b§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §+#`§:§-!@§;
      
      private static var §["o§:Boolean;
       
      
      protected var §?V§:Timer;
      
      private var §?3§:Wallet;
      
      private var §-!B§:Boolean;
      
      private var §=O§:int;
      
      protected var §%#e§:§]u§;
      
      protected var §"#e§:Vector.<§]u§>;
      
      private var §+"0§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§-!B§ = param3;
         §["o§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §^"C§.§?q§.addEventListener(§0#r§.§@o§,this.§5#9§);
      }
      
      public static function §+"f§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§^"C§.§?q§.lastResult)
         {
            return false;
         }
         §+#`§ = new §-!@§();
         var _loc1_:int = 1;
         for each(_loc2_ in §^"C§.§?q§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §+#`§.§%!9§ = §default§.§]"B§(_loc2_);
               §+#`§.§%!9§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §+#`§.first = §]"§(1);
         §+#`§.second = §]"§(2);
         §+#`§.§,!n§ = §]"§(3);
         §+#`§.§^!s§ = §>I§.§ !C§;
         _loc3_ = §+#`§.§%!9§.rank - 1;
         if(§+#`§.§%!9§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §+#`§.§>!q§ = §^"C§.§?q§.lastResult.prizeCounts[_loc3_];
         §5"w§.§5H§(§^"C§.§?q§.lastResult.players.length);
         §5"w§.§%!%§(§5"w§.§[#d§,§>I§.§ !C§,§+#`§.§>!q§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §^"C§.§?q§.lastResult.players)
         {
            if(_loc8_.uid == §0"V§.BIRD_BOT_1)
            {
               _loc6_ = §default§.§]"B§(_loc8_).§9!K§;
            }
            if(_loc8_.uid == §0"V§.BIRD_BOT_2)
            {
               _loc7_ = §default§.§]"B§(_loc8_).§9!K§;
            }
         }
         if(§^"C§.§?q§.lastResult.a)
         {
            _loc9_ = §^"C§.§?q§.lastResult.a.tid;
            _loc10_ = §^"C§.§?q§.lastResult.a.lc;
            _loc11_ = §^"C§.§?q§.lastResult.a.s;
            if(§+#`§.§%!9§.§9!K§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§+#`§.§%!9§.§9!K§ > _loc7_)
            {
               _loc5_ = true;
            }
            §+$A§.§@"i§().§>"]§(_loc9_,_loc10_,_loc4_,_loc5_,§^"C§.§?q§.lastResult.players.length,§+#`§.§%!9§.rank,§+#`§.§%!9§.§9!K§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      private static function §]"§(param1:int) : §default§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§8c§ = null;
         if(§^"C§.§?q§.lastResult)
         {
            if(§^"C§.§?q§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §^"C§.§?q§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §5!b§.§8#'§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §default§.§]"B§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §'!Q§() : Boolean
      {
         return §+#`§ != null;
      }
      
      protected function §5#9§(param1:§0#r§) : void
      {
         this.§=$;§();
         §["o§ = true;
         §^"C§.§?q§.§%"E§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§]u§ = null;
         var _loc2_:Number = getTimer() - this.§+"0§;
         this.§+"0§ = getTimer();
         for each(_loc3_ in this.§"#e§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §0"j§.§-i§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §8#Y§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §8#Y§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §^"C§.§?q§.§15§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §+#`§.§%!9§.rank) + §?"K§.§7"P§(_loc4_);
               §@"F§.§^$#§("shareTournamentRank",_loc5_,§""D§.§"k§(§+#`§.§%!9§.§9!K§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §=$;§() : void
      {
         if(!§+#`§)
         {
            close();
            return;
         }
         if(!§8#Y§)
         {
            return;
         }
         §8#Y§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §8#Y§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §8#Y§.mClip.GiftCarouselContainer.mouseChildren = false;
         §8#Y§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §8#Y§.mClip.getChildByName("GiftBox").visible = false;
         this.§?V§ = new Timer(400,1);
         this.§?V§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,!s§);
         this.§?V§.start();
      }
      
      private function §,!s§(param1:TimerEvent) : void
      {
         this.§?V§.reset();
         this.§?V§.removeEventListener(TimerEvent.TIMER,this.§,!s§);
         §8#Y§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§?3§.setCoinsAmountText(this.§=O§ + §+#`§.§>!q§);
         this.§?3§.animateGotCoins(§+#`§.§>!q§);
         §8#Y§.mClip.GiftCarouselContainer.txtRewardAmount.text = §+#`§.§>!q§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §8#Y§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §8#Y§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§]%§ = §'#n§.§?q§.§9!N§(§8#Y§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§'#n§.§^!k§);
         var _loc5_:§]%§ = §'#n§.§?q§.§9!N§(§8#Y§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§'#n§.§-#o§);
         var _loc6_:§]%§ = §'#n§.§?q§.§9!N§(§8#Y§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§'#n§.§^!k§);
         §'#n§.§?q§.§[#F§(_loc4_,_loc5_,_loc6_).play();
         this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§]u§.§?!q§,§]u§.§!#_§,§'##§.§#R§);
         §8#Y§.mClip.addChild(this.§%#e§);
         this.§"#e§.push(this.§%#e§);
         §#$D§.§?q§.§>!'§();
         this.§1"u§();
      }
      
      private function §1"u§() : void
      {
         §8#Y§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §8#Y§.mClip.getChildByName("GiftBox").visible = false;
         §8#Y§.getItemByName("Button_Close").setVisibility(true);
         if(§+#`§.§%!9§.rank <= 3)
         {
            §8#Y§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§-!B§)
         {
            this.§?3§.setCoinsAmountText(this.§=O§ + §+#`§.§>!q§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §8#Y§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§"#e§ = new Vector.<§]u§>();
         this.§=O§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         if(this.§-!B§)
         {
            this.§=O§ -= §+#`§.§>!q§;
         }
         this.§[D§(new Wallet(this,false,false));
         this.§?3§.setCoinsAmountText(this.§=O§);
         §[#%§.playSound("BirdsApplause");
         if(§'!Q§)
         {
            this.§8J§();
            _loc2_ = §^"C§.§?q§.§@!c§;
            §8#Y§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §8#Y§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §8#Y§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§["o§)
         {
            this.§1"u§();
         }
      }
      
      public function §8J§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(§+#`§.§,!n§)
         {
            _loc3_ = §8#Y§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            new §>#l§(_loc3_,§+#`§.§,!n§);
            §&!b§.§9G§(§8#Y§.mClip.PodiumContainer.TextField_Podium3.text,§+#`§.§,!n§.userName);
         }
         if(§+#`§.second)
         {
            _loc5_ = §8#Y§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            new §>#l§(_loc5_,§+#`§.second);
            §&!b§.§9G§(§8#Y§.mClip.PodiumContainer.TextField_Podium2.text,§+#`§.second.userName);
         }
         if(§+#`§.first)
         {
            _loc7_ = §8#Y§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            new §>#l§(_loc7_,§+#`§.first);
            §&!b§.§9G§(§8#Y§.mClip.PodiumContainer.TextField_Podium1.text,§+#`§.first.userName);
         }
         var _loc2_:int = §+#`§.§%!9§.rank;
         _loc1_ = §?"K§.§7"P§(_loc2_);
         §8#Y§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§+#`§.§%!9§.rank > 3)
         {
            (_loc9_ = §8#Y§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            new §>#l§(_loc9_,§+#`§.§%!9§);
         }
         else
         {
            §8#Y§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §8#Y§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §8#Y§.mClip.walletContainer;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      override public function dispose() : void
      {
         this.§"#`§();
         §8#Y§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §'"a§.§!!8§.§%D§(§'8§.STATE_NAME);
         §#$D§.§?q§.§>!'§();
         this.§"[§(this.§?3§);
         if(this.§?V§)
         {
            this.§?V§.removeEventListener(TimerEvent.TIMER,this.§,!s§);
            this.§?V§.reset();
         }
         this.§?V§ = null;
         super.dispose();
      }
      
      private function §"#`§() : void
      {
         var _loc1_:§]u§ = null;
         for each(_loc1_ in this.§"#e§)
         {
            if(§8#Y§ && §8#Y§.mClip && §8#Y§.mClip.contains(_loc1_))
            {
               §8#Y§.mClip.removeChild(_loc1_);
            }
            _loc1_.§4#y§();
         }
         this.§"#e§ = new Vector.<§]u§>();
      }
   }
}
