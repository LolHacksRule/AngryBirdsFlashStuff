package §0!K§
{
   import §!#C§.§ $?§;
   import §!#C§.§3" §;
   import §!#C§.§3"?§;
   import §!#C§.§4!Q§;
   import §!#C§.§null§;
   import §"!n§.§;"x§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§%!S§;
   import §&!_§.§0I§;
   import §&!_§.§9#%§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §2J§.§]#@§;
   import §3+§.§;!H§;
   import §5"t§.§7"J§;
   import §5"t§.§7"Y§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §<!r§.§`"@§;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §?!a§.§2!-§;
   import §]C§.§ !+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §&>§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §?!>§:§3"?§;
      
      private static var §@"b§:Boolean;
       
      
      protected var §!#t§:Timer;
      
      private var §1!B§:Wallet;
      
      private var §<#R§:Boolean;
      
      private var §,#Z§:int;
      
      protected var §;#x§:§7"J§;
      
      protected var §#! §:Vector.<§7"J§>;
      
      private var §;!6§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§<#R§ = param3;
         §@"b§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §'##§.§`"H§.addEventListener(§]#@§.§%!+§,this.§20§);
      }
      
      public static function §5"d§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§'##§.§`"H§.lastResult)
         {
            return false;
         }
         §?!>§ = new §3"?§();
         var _loc1_:int = 1;
         for each(_loc2_ in §'##§.§`"H§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §?!>§.§0t§ = §3" §.§5+§(_loc2_);
               §?!>§.§0t§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §?!>§.first = §4w§(1);
         §?!>§.second = §4w§(2);
         §?!>§.§9$<§ = §4w§(3);
         §?!>§.§#!#§ = §null§.§%l§;
         _loc3_ = §?!>§.§0t§.rank - 1;
         if(§?!>§.§0t§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §?!>§.§4$4§ = §'##§.§`"H§.lastResult.prizeCounts[_loc3_];
         §0I§.§6!R§(§'##§.§`"H§.lastResult.players.length);
         §0I§.§^!L§(§0I§.§@![§,§null§.§%l§,§?!>§.§4$4§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §'##§.§`"H§.lastResult.players)
         {
            if(_loc8_.uid == §2!-§.BIRD_BOT_1)
            {
               _loc6_ = §3" §.§5+§(_loc8_).§ q§;
            }
            if(_loc8_.uid == §2!-§.BIRD_BOT_2)
            {
               _loc7_ = §3" §.§5+§(_loc8_).§ q§;
            }
         }
         if(§'##§.§`"H§.lastResult.a)
         {
            _loc9_ = §'##§.§`"H§.lastResult.a.tid;
            _loc10_ = §'##§.§`"H§.lastResult.a.lc;
            _loc11_ = §'##§.§`"H§.lastResult.a.s;
            if(§?!>§.§0t§.§ q§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§?!>§.§0t§.§ q§ > _loc7_)
            {
               _loc5_ = true;
            }
            §!!K§.§%#S§().§<#t§(_loc9_,_loc10_,_loc4_,_loc5_,§'##§.§`"H§.lastResult.players.length,§?!>§.§0t§.rank,§?!>§.§0t§.§ q§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      private static function §4w§(param1:int) : §3" §
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§@u§ = null;
         if(§'##§.§`"H§.lastResult)
         {
            if(§'##§.§`"H§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §'##§.§`"H§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §<T§.§<#§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §3" §.§5+§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §;"C§() : Boolean
      {
         return §?!>§ != null;
      }
      
      protected function §20§(param1:§]#@§) : void
      {
         this.§'"A§();
         §@"b§ = true;
         §'##§.§`"H§.§4"]§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§7"J§ = null;
         var _loc2_:Number = getTimer() - this.§;!6§;
         this.§;!6§ = getTimer();
         for each(_loc3_ in this.§#! §)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §?l§.§3m§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §&!M§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §&!M§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §'##§.§`"H§.§,$$§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §?!>§.§0t§.rank) + §%!S§.§;!B§(_loc4_);
               § !+§.§>$%§("shareTournamentRank",_loc5_,§9#%§.§##W§(§?!>§.§0t§.§ q§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §'"A§() : void
      {
         if(!§?!>§)
         {
            close();
            return;
         }
         if(!§&!M§)
         {
            return;
         }
         §&!M§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §&!M§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §&!M§.mClip.GiftCarouselContainer.mouseChildren = false;
         §&!M§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §&!M§.mClip.getChildByName("GiftBox").visible = false;
         this.§!#t§ = new Timer(400,1);
         this.§!#t§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>"D§);
         this.§!#t§.start();
      }
      
      private function §>"D§(param1:TimerEvent) : void
      {
         this.§!#t§.reset();
         this.§!#t§.removeEventListener(TimerEvent.TIMER,this.§>"D§);
         §&!M§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§1!B§.setCoinsAmountText(this.§,#Z§ + §?!>§.§4$4§);
         this.§1!B§.animateGotCoins(§?!>§.§4$4§);
         §&!M§.mClip.GiftCarouselContainer.txtRewardAmount.text = §?!>§.§4$4§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §&!M§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §&!M§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§7$C§ = §"!&§.§`"H§.§1"W§(§&!M§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§"!&§.§0!§);
         var _loc5_:§7$C§ = §"!&§.§`"H§.§1"W§(§&!M§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§"!&§.§="L§);
         var _loc6_:§7$C§ = §"!&§.§`"H§.§1"W§(§&!M§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§"!&§.§0!§);
         var _loc7_:§7$C§;
         (_loc7_ = §"!&§.§`"H§.§?"§(_loc4_,_loc5_,_loc6_)).play();
         this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§7"J§.§3@§,§7"J§.§!A§,§7"Y§.§^#N§);
         §&!M§.mClip.addChild(this.§;#x§);
         this.§#! §.push(this.§;#x§);
         § $?§.§`"H§.§-!P§();
         this.§-"O§();
      }
      
      private function §-"O§() : void
      {
         §&!M§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §&!M§.mClip.getChildByName("GiftBox").visible = false;
         §&!M§.getItemByName("Button_Close").setVisibility(true);
         if(§?!>§.§0t§.rank <= 3)
         {
            §&!M§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§<#R§)
         {
            this.§1!B§.setCoinsAmountText(this.§,#Z§ + §?!>§.§4$4§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §&!M§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§#! § = new Vector.<§7"J§>();
         this.§,#Z§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         if(this.§<#R§)
         {
            this.§,#Z§ -= §?!>§.§4$4§;
         }
         this.§0!A§(new Wallet(this,false,false));
         this.§1!B§.setCoinsAmountText(this.§,#Z§);
         §3Z§.playSound("BirdsApplause");
         if(§;"C§)
         {
            this.§!!r§();
            _loc2_ = §'##§.§`"H§.§=D§;
            §&!M§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §&!M§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §&!M§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§@"b§)
         {
            this.§-"O§();
         }
      }
      
      public function §!!r§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§`"@§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§`"@§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§`"@§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§`"@§ = null;
         if(§?!>§.§9$<§)
         {
            _loc3_ = §&!M§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §`"@§(_loc3_,§?!>§.§9$<§);
            §;"x§.§+>§(§&!M§.mClip.PodiumContainer.TextField_Podium3.text,§?!>§.§9$<§.userName);
         }
         if(§?!>§.second)
         {
            _loc5_ = §&!M§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §`"@§(_loc5_,§?!>§.second);
            §;"x§.§+>§(§&!M§.mClip.PodiumContainer.TextField_Podium2.text,§?!>§.second.userName);
         }
         if(§?!>§.first)
         {
            _loc7_ = §&!M§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §`"@§(_loc7_,§?!>§.first);
            §;"x§.§+>§(§&!M§.mClip.PodiumContainer.TextField_Podium1.text,§?!>§.first.userName);
         }
         var _loc2_:int = §?!>§.§0t§.rank;
         _loc1_ = §%!S§.§;!B§(_loc2_);
         §&!M§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§?!>§.§0t§.rank > 3)
         {
            (_loc9_ = §&!M§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            _loc10_ = new §`"@§(_loc9_,§?!>§.§0t§);
         }
         else
         {
            §&!M§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §&!M§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §&!M§.mClip.walletContainer;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      override public function dispose() : void
      {
         this.§>!v§();
         §&!M§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         § #v§.§1!!§.§1!L§(§;!H§.STATE_NAME);
         § $?§.§`"H§.§-!P§();
         this.§&!U§(this.§1!B§);
         if(this.§!#t§)
         {
            this.§!#t§.removeEventListener(TimerEvent.TIMER,this.§>"D§);
            this.§!#t§.reset();
         }
         this.§!#t§ = null;
         super.dispose();
      }
      
      private function §>!v§() : void
      {
         var _loc1_:§7"J§ = null;
         for each(_loc1_ in this.§#! §)
         {
            if(§&!M§ && §&!M§.mClip && §&!M§.mClip.contains(_loc1_))
            {
               §&!M§.mClip.removeChild(_loc1_);
            }
            _loc1_.§"#%§();
         }
         this.§#! § = new Vector.<§7"J§>();
      }
   }
}
