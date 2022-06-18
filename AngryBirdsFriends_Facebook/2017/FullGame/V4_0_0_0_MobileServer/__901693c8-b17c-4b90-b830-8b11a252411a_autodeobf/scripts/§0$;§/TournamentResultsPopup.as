package §0$;§
{
   import § "$§.§'"R§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§%"E§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §&"J§.§8h§;
   import §&"J§.§`]§;
   import §+#t§.§>J§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6V§.§ "R§;
   import §6V§.§?!=§;
   import §6V§.§^">§;
   import §6V§.§`"5§;
   import §8"X§.§^!E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<!b§.§8-§;
   import §<!b§.§>#&§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §];§.§-!t§;
   import §];§.§0+§;
   import §^#]§.§@!g§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §8[§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §9"=§:§8h§;
      
      private static var §<E§:Boolean;
       
      
      protected var §]#§:Timer;
      
      private var §3!B§:Wallet;
      
      private var §?"U§:Boolean;
      
      private var §7w§:int;
      
      protected var §,$0§:§8-§;
      
      protected var §&O§:Vector.<§8-§>;
      
      private var §0!k§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§?"U§ = param3;
         §<E§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §-!t§.§ "D§.addEventListener(§'"R§.§<!7§,this.§<p§);
      }
      
      public static function §,U§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§-!t§.§ "D§.lastResult)
         {
            return false;
         }
         §9"=§ = new §8h§();
         var _loc1_:int = 1;
         for each(_loc2_ in §-!t§.§ "D§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §9"=§.§6"Z§ = §%"E§.§2u§(_loc2_);
               §9"=§.§6"Z§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §9"=§.first = §=V§(1);
         §9"=§.second = §=V§(2);
         §9"=§.§?!m§ = §=V§(3);
         §9"=§.§6!+§ = §6$0§.§3#j§;
         _loc3_ = §9"=§.§6"Z§.rank - 1;
         if(§9"=§.§6"Z§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §9"=§.§`"§ = §-!t§.§ "D§.lastResult.prizeCounts[_loc3_];
         §`"5§.§%q§(§-!t§.§ "D§.lastResult.players.length);
         §`"5§.§'!;§(§`"5§.§]"a§,§6$0§.§3#j§,§9"=§.§`"§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §-!t§.§ "D§.lastResult.players)
         {
            if(_loc8_.uid == §>J§.BIRD_BOT_1)
            {
               _loc6_ = §%"E§.§2u§(_loc8_).§`#e§;
            }
            if(_loc8_.uid == §>J§.BIRD_BOT_2)
            {
               _loc7_ = §%"E§.§2u§(_loc8_).§`#e§;
            }
         }
         if(§-!t§.§ "D§.lastResult.a)
         {
            _loc9_ = §-!t§.§ "D§.lastResult.a.tid;
            _loc10_ = §-!t§.§ "D§.lastResult.a.lc;
            _loc11_ = §-!t§.§ "D§.lastResult.a.s;
            if(§9"=§.§6"Z§.§`#e§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§9"=§.§6"Z§.§`#e§ > _loc7_)
            {
               _loc5_ = true;
            }
            §?!=§.§3!q§().§6"A§(_loc9_,_loc10_,_loc4_,_loc5_,§-!t§.§ "D§.lastResult.players.length,§9"=§.§6"Z§.rank,§9"=§.§6"Z§.§`#e§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      private static function §=V§(param1:int) : §%"E§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§4!J§ = null;
         if(§-!t§.§ "D§.lastResult)
         {
            if(§-!t§.§ "D§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §-!t§.§ "D§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §%!?§.§ $;§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §%"E§.§2u§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §=#O§() : Boolean
      {
         return §9"=§ != null;
      }
      
      protected function §<p§(param1:§'"R§) : void
      {
         this.§9#W§();
         §<E§ = true;
         §-!t§.§ "D§.§1"V§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§8-§ = null;
         var _loc2_:Number = getTimer() - this.§0!k§;
         this.§0!k§ = getTimer();
         for each(_loc3_ in this.§&O§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §=>§.§%" §.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §1"6§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §1"6§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §-!t§.§ "D§.§+!^§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §9"=§.§6"Z§.rank) + § "R§.§^#f§(_loc4_);
               § "8§.§ "§("shareTournamentRank",_loc5_,§^">§.§?"Y§(§9"=§.§6"Z§.§`#e§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §9#W§() : void
      {
         if(!§9"=§)
         {
            close();
            return;
         }
         if(!§1"6§)
         {
            return;
         }
         §1"6§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §1"6§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §1"6§.mClip.GiftCarouselContainer.mouseChildren = false;
         §1"6§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §1"6§.mClip.getChildByName("GiftBox").visible = false;
         this.§]#§ = new Timer(400,1);
         this.§]#§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@-§);
         this.§]#§.start();
      }
      
      private function §@-§(param1:TimerEvent) : void
      {
         this.§]#§.reset();
         this.§]#§.removeEventListener(TimerEvent.TIMER,this.§@-§);
         §1"6§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§3!B§.setCoinsAmountText(this.§7w§ + §9"=§.§`"§);
         this.§3!B§.animateGotCoins(§9"=§.§`"§);
         §1"6§.mClip.GiftCarouselContainer.txtRewardAmount.text = §9"=§.§`"§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §1"6§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §1"6§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§-#C§ = §6"w§.§ "D§.§""3§(§1"6§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§6"w§.§2!i§);
         var _loc5_:§-#C§ = §6"w§.§ "D§.§""3§(§1"6§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§6"w§.§ # §);
         var _loc6_:§-#C§ = §6"w§.§ "D§.§""3§(§1"6§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§6"w§.§2!i§);
         var _loc7_:§-#C§;
         (_loc7_ = §6"w§.§ "D§.§=!b§(_loc4_,_loc5_,_loc6_)).play();
         this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8-§.§1!z§,§8-§.§=#M§,§>#&§.§'!4§);
         §1"6§.mClip.addChild(this.§,$0§);
         this.§&O§.push(this.§,$0§);
         §4"W§.§ "D§.§@!z§();
         this.§'#`§();
      }
      
      private function §'#`§() : void
      {
         §1"6§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §1"6§.mClip.getChildByName("GiftBox").visible = false;
         §1"6§.getItemByName("Button_Close").setVisibility(true);
         if(§9"=§.§6"Z§.rank <= 3)
         {
            §1"6§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§?"U§)
         {
            this.§3!B§.setCoinsAmountText(this.§7w§ + §9"=§.§`"§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §1"6§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§&O§ = new Vector.<§8-§>();
         this.§7w§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         if(this.§?"U§)
         {
            this.§7w§ -= §9"=§.§`"§;
         }
         this.§##Y§(new Wallet(this,false,false));
         this.§3!B§.setCoinsAmountText(this.§7w§);
         §!#&§.playSound("BirdsApplause");
         if(§=#O§)
         {
            this.§<#'§();
            _loc2_ = §-!t§.§ "D§.§ "[§;
            §1"6§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §1"6§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §1"6§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§<E§)
         {
            this.§'#`§();
         }
      }
      
      public function §<#'§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§0+§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§0+§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§0+§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§0+§ = null;
         if(§9"=§.§?!m§)
         {
            _loc3_ = §1"6§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §0+§(_loc3_,§9"=§.§?!m§);
            §@!g§.§["1§(§1"6§.mClip.PodiumContainer.TextField_Podium3.text,§9"=§.§?!m§.userName);
         }
         if(§9"=§.second)
         {
            _loc5_ = §1"6§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §0+§(_loc5_,§9"=§.second);
            §@!g§.§["1§(§1"6§.mClip.PodiumContainer.TextField_Podium2.text,§9"=§.second.userName);
         }
         if(§9"=§.first)
         {
            _loc7_ = §1"6§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §0+§(_loc7_,§9"=§.first);
            §@!g§.§["1§(§1"6§.mClip.PodiumContainer.TextField_Podium1.text,§9"=§.first.userName);
         }
         var _loc2_:int = §9"=§.§6"Z§.rank;
         _loc1_ = § "R§.§^#f§(_loc2_);
         §1"6§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§9"=§.§6"Z§.rank > 3)
         {
            (_loc9_ = §1"6§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            _loc10_ = new §0+§(_loc9_,§9"=§.§6"Z§);
         }
         else
         {
            §1"6§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §1"6§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §1"6§.mClip.walletContainer;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      override public function dispose() : void
      {
         this.§#$&§();
         §1"6§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §-#+§.§;!$§.§5"p§(§^!E§.STATE_NAME);
         §4"W§.§ "D§.§@!z§();
         this.§"#H§(this.§3!B§);
         if(this.§]#§)
         {
            this.§]#§.removeEventListener(TimerEvent.TIMER,this.§@-§);
            this.§]#§.reset();
         }
         this.§]#§ = null;
         super.dispose();
      }
      
      private function §#$&§() : void
      {
         var _loc1_:§8-§ = null;
         for each(_loc1_ in this.§&O§)
         {
            if(§1"6§ && §1"6§.mClip && §1"6§.mClip.contains(_loc1_))
            {
               §1"6§.mClip.removeChild(_loc1_);
            }
            _loc1_.§;!?§();
         }
         this.§&O§ = new Vector.<§8-§>();
      }
   }
}
