package §'K§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §3!7§.§2G§;
   import §3!7§.§>,§;
   import §6!B§.§>!E§;
   import §7-§.§,!C§;
   import §7-§.§<"+§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§=1§;
   import §[!K§.§-k§;
   import §]!>§.§6!<§;
   import §]!>§.§[Q§;
   import §]!A§.§&A§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"!=§ extends Popup
   {
      
      private static var §`Z§:§6!<§;
      
      private static const §%!f§:Number = 1000;
       
      
      private var §"!T§:StatePopupManager;
      
      protected var §4!U§:Timer;
      
      protected var §6x§:Timer;
      
      private var §8"-§:§+"@§;
      
      public function §"!=§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_TournamentLastResults[0],param1);
         this.§"!T§ = param2;
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
      }
      
      public static function §super§() : Boolean
      {
         var _loc1_:Object = null;
         if(!§,!C§.§;"§.lastResult)
         {
            return false;
         }
         §`Z§ = new §6!<§();
         for each(_loc1_ in §,!C§.§;"§.lastResult.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
            {
               §`Z§.user = §[Q§.§!!t§(_loc1_);
               break;
            }
         }
         §`Z§.§,!@§ = § "'§(1);
         §`Z§.§9!2§ = § "'§(2);
         §`Z§.§!!$§ = § "'§(3);
         §`Z§.§6",§ = §,!C§.§;"§.lastResult.prizes[0].itemId;
         §`Z§.§4!d§ = §,!C§.§;"§.lastResult.prizes[0].quantity;
         return true;
      }
      
      private static function § "'§(param1:int) : §[Q§
      {
         var _loc2_:Object = null;
         var _loc3_:§@!5§ = null;
         if(§,!C§.§;"§.lastResult)
         {
            if(§,!C§.§;"§.lastResult.players)
            {
               for each(_loc2_ in §,!C§.§;"§.lastResult.players)
               {
                  if(_loc2_ != null)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §1z§.§@Z§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §[Q§.§!!t§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public static function get §`J§() : Boolean
      {
         return §`Z§ != null;
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               this.§ i§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsFP11.§@<§.§#m§();
               _loc5_ = (_loc4_ = §`Z§.user.§9!Y§) + §=1§.§,A§(_loc4_);
               §@!]§.§9"'§("shareTournamentRank",_loc5_,§-k§.§"!V§(§`Z§.user.§@I§));
               this.deActivate();
               break;
            case "CLOSE_POPUP":
               this.deActivate();
         }
      }
      
      private function § i§() : void
      {
         getItemByName("ClaimPrizeButton").setVisibility(false);
         getItemByName("GiftCarouselContainer").setVisibility(true);
         mClip.GiftCarouselContainer.mouseChildren = false;
         mClip.GiftCarouselContainer.mouseEnabled = false;
         mClip.GiftCarouselContainer.mcCount.gotoAndStop(0);
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(0);
         mClip.GiftCarouselContainer.txtPowerup.text = "";
         mClip.getChildByName("GiftBox").visible = false;
         this.§4!U§ = new Timer(§%!f§);
         this.§4!U§.addEventListener(TimerEvent.TIMER,this.§^!s§);
         this.§4!U§.start();
      }
      
      private function §^!s§(param1:TimerEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc6_:int = 0;
         this.§4!U§.reset();
         this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
         var _loc2_:§2G§ = §>,§.§'!i§(§`Z§.§6",§);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§7!5§;
            _loc4_ = _loc2_.§]6§;
         }
         var _loc5_:String = §&A§.§[!H§;
         if(§`Z§.§6",§.indexOf("PowerPackage") != -1)
         {
            _loc5_ = §&A§.§1!h§;
            _loc6_ = §,!C§.§;"§.§[-§.indexOf(§`Z§.§4!d§);
            _loc6_ = 3 - _loc6_;
            _loc4_ = "PowerPackage" + _loc6_;
            _loc3_ = " of each powerup!";
         }
         else
         {
            mClip.GiftCarouselContainer.mcCount.gotoAndStop(§`Z§.§4!d§);
         }
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(_loc4_);
         if(§`Z§.§4!d§ > 1)
         {
            _loc3_ = _loc5_.replace("%1",§`Z§.§4!d§).replace("%2",_loc3_);
         }
         mClip.GiftCarouselContainer.txtPowerup.text = _loc3_;
         this.§6x§ = new Timer(1500,1);
         this.§6x§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!B§);
         this.§6x§.start();
      }
      
      private function §^!B§(param1:TimerEvent) : void
      {
         var _loc2_:§"m§ = null;
         this.§6x§.reset();
         this.§6x§.removeEventListener(TimerEvent.TIMER,this.§^!B§);
         getItemByName("Button_Close").setVisibility(true);
         if(§`Z§.user.§9!Y§ <= 3)
         {
            getItemByName("ShareTournamentButton").setVisibility(true);
            _loc2_ = §>!+§.§;"§.§^!K§(mClip.GiftCarouselContainer,{
               "alpha":0,
               "scaleX":0.3,
               "scaleY":0.3
            },{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            },0.33,§>!+§.§!!>§);
            _loc2_.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.open(param1);
         if(this.§8"-§ == null)
         {
            this.§8"-§ = new §+"@§(mClip.CombinedBackground.FireworksArea);
         }
         this.§8"-§.activate();
         §>!E§.§7N§("Sound_BirdsApplause");
         if(§`J§)
         {
            this.§8"9§();
            _loc2_ = §,!C§.§;"§.§[-§;
            mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
      }
      
      public function §8"9§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§<"+§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§<"+§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§<"+§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§<"+§ = null;
         if(§`Z§.§!!$§)
         {
            _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §<"+§(_loc3_,§`Z§.§!!$§);
            mClip.PodiumContainer.TextField_Podium3.text.text = §`Z§.§!!$§.userName;
         }
         if(§`Z§.§9!2§)
         {
            _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §<"+§(_loc5_,§`Z§.§9!2§);
            mClip.PodiumContainer.TextField_Podium2.text.text = §`Z§.§9!2§.userName;
         }
         if(§`Z§.§,!@§)
         {
            _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §<"+§(_loc7_,§`Z§.§,!@§);
            mClip.PodiumContainer.TextField_Podium1.text.text = §`Z§.§,!@§.userName;
         }
         var _loc2_:int = §`Z§.user.§9!Y§;
         _loc1_ = §=1§.§,A§(_loc2_);
         mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§`Z§.user.§9!Y§ > 3)
         {
            _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
            mClip.getChildByName("OwnAvatarStar").visible = true;
            _loc9_.visible = true;
            _loc10_ = new §<"+§(_loc9_,§`Z§.user);
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
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
      
      override public function close() : void
      {
         super.close();
         if(this.§8"-§)
         {
            this.§8"-§.deActivate();
         }
         this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
         this.§4!U§.reset();
         this.§6x§.removeEventListener(TimerEvent.TIMER,this.§^!B§);
         this.§6x§.reset();
         this.§4!U§ = null;
         this.§6x§ = null;
      }
   }
}
