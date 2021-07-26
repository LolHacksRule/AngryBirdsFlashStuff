package §?"§
{
   import §!G§.§+!#§;
   import §#!^§.§1!1§;
   import §#!^§.§2t§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!>§;
   import §%!'§.§"!e§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §2!6§.§ !h§;
   import §2!6§.§?G§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §6k§.§-#§;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §>s§.§+m§;
   import §?!z§.§6"@§;
   import §^!U§.§,J§;
   import §^!U§.§9!!§;
   import §^!o§.§=1§;
   import §^!o§.§@?§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'T§ extends Popup
   {
      
      private static var §8"6§:§9!!§;
      
      private static const §>"8§:Number = 1000;
       
      
      protected var §[!g§:StatePopupManager;
      
      protected var §8!v§:Timer;
      
      protected var §9"3§:Timer;
      
      private var §0"F§:§4C§;
      
      public function §'T§(param1:§^0§, param2:StatePopupManager)
      {
         super(this.§;!7§(),param1);
         this.§[!g§ = param2;
         this.§[!g§.addEventListener(§+!#§.§@=§,this.onUiInteraction);
      }
      
      public static function §;6§() : Boolean
      {
         var _loc1_:Object = null;
         if(!§=1§.§1[§.lastResult)
         {
            return false;
         }
         §8"6§ = new §9!!§();
         for each(_loc1_ in §=1§.§1[§.lastResult.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §'y§).§;#§)
            {
               §8"6§.user = §,J§.§@6§(_loc1_);
               break;
            }
         }
         §8"6§.§=!V§ = §2"$§(1);
         §8"6§.§5K§ = §2"$§(2);
         §8"6§.§]!]§ = §2"$§(3);
         §8"6§.§'H§ = §=1§.§1[§.lastResult.prizes[0].itemId;
         §8"6§.§="C§ = §=1§.§1[§.lastResult.prizes[0].quantity;
         §"!e§.§3"E§(§"!e§.§3,§,§8"6§.§'H§,§8"6§.§="C§);
         return true;
      }
      
      private static function §2"$§(param1:int) : §,J§
      {
         var _loc2_:Object = null;
         var _loc3_:§2t§ = null;
         if(§=1§.§1[§.lastResult)
         {
            if(§=1§.§1[§.lastResult.players)
            {
               for each(_loc2_ in §=1§.§1[§.lastResult.players)
               {
                  if(_loc2_ != null)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §1!1§.§7"8§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §,J§.§@6§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public static function get §8@§() : Boolean
      {
         return §8"6§ != null;
      }
      
      protected function §;!7§() : XML
      {
         return §%^§.§?>§.Views.PopupView_TournamentLastResults[0];
      }
      
      protected function init() : void
      {
      }
      
      protected function onUiInteraction(param1:§+!#§) : void
      {
         this.uiInteractionHandler(param1.§`!>§,param1.§4W§,param1.§91§);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               this.§,G§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsFP11.§#!4§.§1z§();
               _loc5_ = (_loc4_ = §8"6§.user.§+!r§) + §"!>§.§,!5§(_loc4_);
               §=!L§.§+">§("shareTournamentRank",_loc5_,§-#§.§!U§(§8"6§.user.§2!r§));
               this.deActivate();
               break;
            case "CLOSE_POPUP":
               this.deActivate();
         }
      }
      
      private function §,G§() : void
      {
         getItemByName("ClaimPrizeButton").setVisibility(false);
         getItemByName("GiftCarouselContainer").setVisibility(true);
         mClip.GiftCarouselContainer.mouseChildren = false;
         mClip.GiftCarouselContainer.mouseEnabled = false;
         mClip.GiftCarouselContainer.mcCount.gotoAndStop(0);
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(0);
         mClip.GiftCarouselContainer.txtPowerup.text = "";
         mClip.getChildByName("GiftBox").visible = false;
         this.§8!v§ = new Timer(§>"8§);
         this.§8!v§.addEventListener(TimerEvent.TIMER,this.§=s§);
         this.§8!v§.start();
      }
      
      private function §=s§(param1:TimerEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc6_:int = 0;
         this.§8!v§.reset();
         this.§8!v§.removeEventListener(TimerEvent.TIMER,this.§=s§);
         var _loc2_:§?G§ = § !h§.§ "8§(§8"6§.§'H§);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§&Z§;
            _loc4_ = _loc2_.§5"5§;
         }
         var _loc5_:String = §6"@§.§9!_§;
         if(§8"6§.§'H§.indexOf("PowerPackage") != -1)
         {
            _loc5_ = §6"@§.§%!6§;
            _loc6_ = §=1§.§1[§.§2!A§.indexOf(§8"6§.§="C§);
            _loc6_ = 3 - _loc6_;
            _loc4_ = "PowerPackage" + _loc6_;
            _loc3_ = " of each powerup!";
         }
         else
         {
            mClip.GiftCarouselContainer.mcCount.gotoAndStop(§8"6§.§="C§);
         }
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(_loc4_);
         if(§8"6§.§="C§ > 1)
         {
            _loc3_ = _loc5_.replace("%1",§8"6§.§="C§).replace("%2",_loc3_);
         }
         mClip.GiftCarouselContainer.txtPowerup.text = _loc3_;
         this.§9"3§ = new Timer(1500,1);
         this.§9"3§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6Z§);
         this.§9"3§.start();
      }
      
      private function §6Z§(param1:TimerEvent) : void
      {
         var _loc2_:§!"&§ = null;
         this.§9"3§.reset();
         this.§9"3§.removeEventListener(TimerEvent.TIMER,this.§6Z§);
         getItemByName("Button_Close").setVisibility(true);
         if(§8"6§.user.§+!r§ <= 3)
         {
            getItemByName("ShareTournamentButton").setVisibility(true);
            _loc2_ = §&p§.§1[§.§7!3§(mClip.GiftCarouselContainer,{
               "alpha":0,
               "scaleX":0.3,
               "scaleY":0.3
            },{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            },0.33,§&p§.§%"8§);
            _loc2_.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.open(param1);
         if(this.§0"F§ == null)
         {
            this.§0"F§ = new §4C§(mClip.CombinedBackground.FireworksArea);
         }
         this.§0"F§.activate();
         §+m§.§]!N§("Sound_BirdsApplause");
         if(§8@§)
         {
            this.§`6§();
            _loc2_ = §=1§.§1[§.§2!A§;
            mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
      }
      
      public function §`6§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§@?§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§@?§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§@?§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§@?§ = null;
         if(§8"6§.§]!]§)
         {
            _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §@?§(_loc3_,§8"6§.§]!]§);
            mClip.PodiumContainer.TextField_Podium3.text.text = §8"6§.§]!]§.userName;
         }
         if(§8"6§.§5K§)
         {
            _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §@?§(_loc5_,§8"6§.§5K§);
            mClip.PodiumContainer.TextField_Podium2.text.text = §8"6§.§5K§.userName;
         }
         if(§8"6§.§=!V§)
         {
            _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §@?§(_loc7_,§8"6§.§=!V§);
            mClip.PodiumContainer.TextField_Podium1.text.text = §8"6§.§=!V§.userName;
         }
         var _loc2_:int = §8"6§.user.§+!r§;
         _loc1_ = §"!>§.§,!5§(_loc2_);
         mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§8"6§.user.§+!r§ > 3)
         {
            _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
            mClip.getChildByName("OwnAvatarStar").visible = true;
            _loc9_.visible = true;
            _loc10_ = new §@?§(_loc9_,§8"6§.user);
         }
         else
         {
            mClip.getChildByName("OwnAvatarHolder").visible = false;
            mClip.getChildByName("OwnAvatarStar").visible = false;
            mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      override public function deActivate() : void
      {
         this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
      
      override public function close() : void
      {
         super.close();
         if(this.§0"F§)
         {
            this.§0"F§.deActivate();
         }
         this.§8!v§.removeEventListener(TimerEvent.TIMER,this.§=s§);
         this.§8!v§.reset();
         this.§9"3§.removeEventListener(TimerEvent.TIMER,this.§6Z§);
         this.§9"3§.reset();
         this.§8!v§ = null;
         this.§9"3§ = null;
      }
   }
}
