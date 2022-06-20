package §>y§
{
   import §+"§.§'!0§;
   import §+"§.§8!n§;
   import §+I§.§`!o§;
   import §,"-§.§2!P§;
   import §,b§.§4H§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §2!,§.§!Q§;
   import §2!,§.§3"B§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §<!<§.§?@§;
   import §<!e§.§"!]§;
   import §<!e§.§[!t§;
   import §<"1§.§,U§;
   import §<G§.§5w§;
   import §?"#§.§%!X§;
   import §?"#§.§'@§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`"2§ extends Popup
   {
      
      private static var § f§:§3"B§;
      
      private static const §'"?§:Number = 1000;
       
      
      private var §<q§:StatePopupManager;
      
      protected var §4!g§:Timer;
      
      protected var §'!=§:Timer;
      
      private var §0!=§:§%D§;
      
      public function §`"2§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_TournamentLastResults[0],param1);
         this.§<q§ = param2;
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
      }
      
      public static function §7m§() : Boolean
      {
         var _loc1_:Object = null;
         if(!§[!t§.§8c§.lastResult)
         {
            return false;
         }
         § f§ = new §3"B§();
         for each(_loc1_ in §[!t§.§8c§.lastResult.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§)
            {
               § f§.user = §!Q§.§ N§(_loc1_);
               break;
            }
         }
         § f§.§=,§ = §'"1§(1);
         § f§.§&?§ = §'"1§(2);
         § f§.§#!z§ = §'"1§(3);
         § f§.§[[§ = §[!t§.§8c§.lastResult.prizes[0].itemId;
         § f§.§^!E§ = §[!t§.§8c§.lastResult.prizes[0].quantity;
         return true;
      }
      
      private static function §'"1§(param1:int) : §!Q§
      {
         var _loc2_:Object = null;
         var _loc3_:§'@§ = null;
         if(§[!t§.§8c§.lastResult)
         {
            if(§[!t§.§8c§.lastResult.players)
            {
               for each(_loc2_ in §[!t§.§8c§.lastResult.players)
               {
                  if(_loc2_ != null)
                  {
                     if(_loc2_.r == param1)
                     {
                        _loc3_ = §%!X§.§'E§(_loc2_.u);
                        if(_loc3_)
                        {
                           _loc2_.n = _loc3_.name;
                        }
                        return §!Q§.§ N§(_loc2_);
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public static function get §%o§() : Boolean
      {
         return § f§ != null;
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               this.§'!b§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsFP11.§`"B§.§'H§();
               _loc5_ = (_loc4_ = § f§.user.§]!S§) + §?@§.§`!x§(_loc4_);
               §,U§.§53§("shareTournamentRank",_loc5_,§5w§.§4"9§(§ f§.user.§=i§));
               this.deActivate();
               break;
            case "CLOSE_POPUP":
               this.deActivate();
         }
      }
      
      private function §'!b§() : void
      {
         getItemByName("ClaimPrizeButton").setVisibility(false);
         getItemByName("GiftCarouselContainer").setVisibility(true);
         mClip.GiftCarouselContainer.mouseChildren = false;
         mClip.GiftCarouselContainer.mouseEnabled = false;
         mClip.GiftCarouselContainer.mcCount.gotoAndStop(0);
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(0);
         mClip.GiftCarouselContainer.txtPowerup.text = "";
         mClip.getChildByName("GiftBox").visible = false;
         this.§4!g§ = new Timer(§'"?§);
         this.§4!g§.addEventListener(TimerEvent.TIMER,this.§;>§);
         this.§4!g§.start();
      }
      
      private function §;>§(param1:TimerEvent) : void
      {
         this.§4!g§.reset();
         this.§4!g§.removeEventListener(TimerEvent.TIMER,this.§;>§);
         var _loc2_:int = §8!n§.§<!-§(§ f§.§[[§);
         var _loc3_:String = §'!0§.§1!1§(§ f§.§[[§);
         var _loc4_:String = §`!o§.§"!U§;
         if(§ f§.§[[§.indexOf("PowerPackage") != -1)
         {
            _loc4_ = §`!o§.§67§;
            _loc2_ = 5 + § f§.§^!E§;
            _loc3_ = " of each powerup!";
         }
         else
         {
            mClip.GiftCarouselContainer.mcCount.gotoAndStop(§ f§.§^!E§);
         }
         mClip.GiftCarouselContainer.mcReward.gotoAndStop(2 + _loc2_);
         if(§ f§.§^!E§ > 1)
         {
            _loc3_ = _loc4_.replace("%1",§ f§.§^!E§).replace("%2",_loc3_);
         }
         mClip.GiftCarouselContainer.txtPowerup.text = _loc3_;
         this.§'!=§ = new Timer(1500,1);
         this.§'!=§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^E§);
         this.§'!=§.start();
      }
      
      private function §^E§(param1:TimerEvent) : void
      {
         var _loc2_:§-!F§ = null;
         this.§'!=§.reset();
         this.§'!=§.removeEventListener(TimerEvent.TIMER,this.§^E§);
         getItemByName("Button_Close").setVisibility(true);
         if(§ f§.user.§]!S§ <= 3)
         {
            getItemByName("ShareTournamentButton").setVisibility(true);
            _loc2_ = §7!b§.§8c§.§4&§(mClip.GiftCarouselContainer,{
               "alpha":0,
               "scaleX":0.3,
               "scaleY":0.3
            },{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            },0.33,§7!b§.§!!h§);
            _loc2_.play();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.open(param1);
         if(this.§0!=§ == null)
         {
            this.§0!=§ = new §%D§(mClip.CombinedBackground.FireworksArea);
         }
         this.§0!=§.activate();
         §%4§.§>f§("Sound_BirdsApplause");
         if(§%o§)
         {
            this.§,">§();
            _loc2_ = §[!t§.§8c§.§[l§;
            mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
      }
      
      public function §,">§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§"!]§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§"!]§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§"!]§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§"!]§ = null;
         if(§ f§.§#!z§)
         {
            _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §"!]§(_loc3_,§ f§.§#!z§);
            mClip.PodiumContainer.TextField_Podium3.text.text = § f§.§#!z§.userName;
         }
         if(§ f§.§&?§)
         {
            _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §"!]§(_loc5_,§ f§.§&?§);
            mClip.PodiumContainer.TextField_Podium2.text.text = § f§.§&?§.userName;
         }
         if(§ f§.§=,§)
         {
            _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §"!]§(_loc7_,§ f§.§=,§);
            mClip.PodiumContainer.TextField_Podium1.text.text = § f§.§=,§.userName;
         }
         var _loc2_:int = § f§.user.§]!S§;
         _loc1_ = §?@§.§`!x§(_loc2_);
         mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§ f§.user.§]!S§ > 3)
         {
            _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
            mClip.getChildByName("OwnAvatarStar").visible = true;
            _loc9_.visible = true;
            _loc10_ = new §"!]§(_loc9_,§ f§.user);
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
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
      
      override public function close() : void
      {
         super.close();
         if(this.§0!=§)
         {
            this.§0!=§.deActivate();
         }
         this.§4!g§.removeEventListener(TimerEvent.TIMER,this.§;>§);
         this.§4!g§.reset();
         this.§'!=§.removeEventListener(TimerEvent.TIMER,this.§^E§);
         this.§'!=§.reset();
         this.§4!g§ = null;
         this.§'!=§ = null;
      }
   }
}
