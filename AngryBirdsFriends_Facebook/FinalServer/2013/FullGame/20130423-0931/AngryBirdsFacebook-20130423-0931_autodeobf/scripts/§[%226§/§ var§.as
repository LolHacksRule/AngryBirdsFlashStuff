package §["6§
{
   import §%!I§.§]!M§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§#!,§;
   import §,l§.§1U§;
   import §,l§.§7"L§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §0D§.§`!k§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §6!H§.§6!e§;
   import §8m§.§@"M§;
   import §9@§.§!"P§;
   import §9@§.§@q§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § var§ extends Popup implements §&!l§
   {
      
      private static var §]?§:§7"L§;
       
      
      private var §>"P§:StatePopupManager;
      
      protected var §^"W§:Timer;
      
      private var §%!d§:§^!C§;
      
      private var §4!u§:§6!F§;
      
      private var §7!j§:Boolean;
      
      private var §7!X§:int;
      
      public function § var§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         this.§7!j§ = param3;
         super(§ "<§.§%I§.Views.PopupView_TournamentLastResults[0],param1);
         this.§>"P§ = param2;
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
      }
      
      public static function §`";§() : Boolean
      {
         var _loc1_:Object = null;
         if(!§3!R§.§&"5§.lastResult)
         {
            return false;
         }
         §]?§ = new §7"L§();
         for each(_loc1_ in §3!R§.§&"5§.lastResult.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
            {
               §]?§.user = §1U§.§?$§(_loc1_);
               break;
            }
         }
         §]?§.§;"O§ = §1!S§(1);
         §]?§.§ !e§ = §1!S§(2);
         §]?§.§3J§ = §1!S§(3);
         §]?§.§5"6§ = §3!R§.§&"5§.lastResult.prizes[0].itemId;
         §]?§.§5q§ = §3!R§.§&"5§.lastResult.prizes[0].quantity;
         §@q§.§2!f§(§3!R§.§&"5§.lastResult.players.length);
         §@q§.§[!_§(§@q§.§ O§,§]?§.§5"6§,§]?§.§5q§);
         §@q§.§&?§(§@q§.§ O§,§["K§.§0#§,§]?§.§5q§);
         return true;
      }
      
      private static function §1!S§(param1:int) : §1U§
      {
         var _loc2_:Object = null;
         var _loc3_:§@"E§ = null;
         if(§3!R§.§&"5§.lastResult)
         {
            if(§3!R§.§&"5§.lastResult.players)
            {
               for each(_loc2_ in §3!R§.§&"5§.lastResult.players)
               {
                  if(_loc2_ != null)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §&k§.§`!]§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §1U§.§?$§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public static function get §!Q§() : Boolean
      {
         return §]?§ != null;
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               this.§8"-§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsFP11.§>m§.§^X§();
               _loc5_ = (_loc4_ = §]?§.user.§'Q§) + §!"P§.§>!9§(_loc4_);
               §'"+§.§'!#§("shareTournamentRank",_loc5_,§]!M§.§<Y§(§]?§.user.§?&§));
               this.deActivate();
               break;
            case "CLOSE_POPUP":
               this.deActivate();
         }
      }
      
      private function §8"-§() : void
      {
         if(!§]?§)
         {
            this.close();
            return;
         }
         getItemByName("ClaimPrizeButton").setVisibility(false);
         getItemByName("GiftCarouselContainer").setVisibility(true);
         mClip.GiftCarouselContainer.mouseChildren = false;
         mClip.GiftCarouselContainer.mouseEnabled = false;
         mClip.getChildByName("GiftBox").visible = false;
         if(this.§7!j§)
         {
            this.§4!u§.§!!J§(this.§7!X§);
         }
         else
         {
            this.§4!u§.§!!J§(this.§7!X§ + §]?§.§5q§);
         }
         this.§4!u§.§5!q§(§]?§.§5q§);
         mClip.GiftCarouselContainer.txtRewardAmount.text = §]?§.§5q§ + " x";
         this.§^"W§ = new Timer(1500,1);
         this.§^"W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!x§);
         this.§^"W§.start();
      }
      
      private function §^!x§(param1:TimerEvent) : void
      {
         var _loc2_:§6!K§ = null;
         this.§^"W§.reset();
         this.§^"W§.removeEventListener(TimerEvent.TIMER,this.§^!x§);
         getItemByName("Button_Close").setVisibility(true);
         if(§]?§.user.§'Q§ <= 3)
         {
            getItemByName("ShareTournamentButton").setVisibility(true);
            _loc2_ = §0W§.§&"5§.§]!r§(mClip.GiftCarouselContainer,{
               "alpha":0,
               "scaleX":0.3,
               "scaleY":0.3
            },{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            },0.33,§0W§.§4!E§);
            _loc2_.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.open(param1);
         this.§7!X§ = §%"S§.§!C§.§9"%§.§,T§.§0Q§;
         if(this.§%!d§ == null)
         {
            this.§%!d§ = new §^!C§(mClip.CombinedBackground.FireworksArea);
         }
         this.§%!d§.activate();
         this.§?!f§(new §6!F§(this,true,false,false));
         this.§-"U§();
         §@"M§.§3"C§("Sound_BirdsApplause");
         if(§!Q§)
         {
            this.§`&§();
            _loc2_ = §3!R§.§&"5§.§7!f§;
            mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
      }
      
      private function §-"U§() : void
      {
         if(this.§7!j§)
         {
            this.§4!u§.§!!J§(this.§7!X§ - §]?§.§5q§);
         }
         else
         {
            this.§4!u§.§!!J§(this.§7!X§);
         }
      }
      
      public function §`&§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§`!k§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§`!k§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§`!k§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§`!k§ = null;
         if(§]?§.§3J§)
         {
            _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §`!k§(_loc3_,§]?§.§3J§);
            mClip.PodiumContainer.TextField_Podium3.text.text = §]?§.§3J§.userName;
         }
         if(§]?§.§ !e§)
         {
            _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §`!k§(_loc5_,§]?§.§ !e§);
            mClip.PodiumContainer.TextField_Podium2.text.text = §]?§.§ !e§.userName;
         }
         if(§]?§.§;"O§)
         {
            _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §`!k§(_loc7_,§]?§.§;"O§);
            mClip.PodiumContainer.TextField_Podium1.text.text = §]?§.§;"O§.userName;
         }
         var _loc2_:int = §]?§.user.§'Q§;
         _loc1_ = §!"P§.§>!9§(_loc2_);
         mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§]?§.user.§'Q§ > 3)
         {
            _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
            mClip.getChildByName("OwnAvatarStar").visible = true;
            _loc9_.visible = true;
            _loc10_ = new §`!k§(_loc9_,§]?§.user);
         }
         else
         {
            mClip.getChildByName("OwnAvatarHolder").visible = false;
            mClip.getChildByName("OwnAvatarStar").visible = false;
            mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip.walletContainer;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      override public function deActivate() : void
      {
         this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
      
      override public function close() : void
      {
         §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         §#!,§.§&"5§.§@J§();
         super.close();
         if(this.§%!d§)
         {
            this.§%!d§.deActivate();
         }
         this.§!U§(this.§4!u§);
         if(this.§^"W§)
         {
            this.§^"W§.removeEventListener(TimerEvent.TIMER,this.§^!x§);
            this.§^"W§.reset();
         }
         this.§^"W§ = null;
      }
   }
}
