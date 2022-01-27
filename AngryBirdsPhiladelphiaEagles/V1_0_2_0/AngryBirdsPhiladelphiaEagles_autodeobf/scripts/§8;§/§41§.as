package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §4!6§.§<5§;
   import §9c§.§,x§;
   import §9c§.§3i§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §41§ extends § $§
   {
      
      private static const §%!1§:int = 750;
      
      private static const §"!2§:String = "EndScreenEffectChannel";
      
      private static const §[?§:Number = 30;
       
      
      private var §@$§:§ !4§;
      
      private var §5!9§:Number;
      
      private var §?f§:Number = 0.0;
      
      private var §3p§:Number = 0.0;
      
      private var §?!8§:Boolean = false;
      
      private var §2z§:Boolean = false;
      
      private var §use§:Number = 0.0;
      
      private var §"t§:Number = 0.0;
      
      private var §]!9§:§ !4§ = null;
      
      private var §3!0§:Boolean = false;
      
      private var §%O§:Number = 0;
      
      private var §#!§:int;
      
      private var §'d§:int = -1;
      
      public function §41§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3V§.§?L§(§"!2§,3,1);
         this.§%O§ = (§>2§.getItemByName("MovieClip_Achievement") as §[R§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§3!0§ = false;
         var _loc1_:int = §5!+§.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§);
         var _loc3_:* = _loc1_ > _loc2_;
         §<5§.§&y§.addEventListener(§<5§.SERVER_CALL_COMPLETE,this.§!%§);
         if(_loc3_)
         {
            §#!1§.§`U§(§#!1§.§6<§ + §6H§.§"Q§,_loc1_);
         }
         this.§5!9§ = -1;
         this.§#!§ = _loc1_;
         §5!+§.§6!§.background.§37§();
         super.activate();
         this.§?!8§ = false;
         this.§2z§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§-!5§,(§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).height);
         (§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).mClip.scrollRect = _loc4_;
         (§>2§.getItemByName("TextField_EaglePercentage") as §`S§).§'Z§.text = "0%";
         (§>2§.getItemByName("TextField_ScoreToBeat") as §`S§).§'Z§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§>2§.getItemByName("TextField_ScoreToBeat") as §3i§).visible = true;
            (§>2§.getItemByName("MovieClip_ScoreToBeatTitle") as §3i§).visible = true;
         }
         (§>2§.getItemByName("MovieClip_HighScore") as §3i§).visible = false;
         (§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).visible = false;
         var _loc5_:int = int(§6H§.§"Q§.split("-")[1]) - 1;
         if(§#!1§.§8!H§(_loc5_))
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §3e§() : void
      {
         if(!this.§3!0§)
         {
            (§>2§.getItemByName("MovieClip_Achievement") as §[R§).mClip.visible = true;
            (§>2§.getItemByName("MovieClip_Achievement") as §[R§).mClip.y = this.§%O§ + 100;
            this.§]!9§ = §49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_Achievement") as §[R§).mClip,{"y":this.§%O§},null,1,§49§.§-!O§);
            this.§3!0§ = true;
            this.§]!9§.onComplete = this.§3e§;
            this.§]!9§.play();
         }
      }
      
      private function §&1§() : void
      {
      }
      
      private function §!%§(param1:Event) : void
      {
         var _loc2_:int = int(§6H§.§"Q§.split("-")[1]) - 1;
         if(§#!1§.§8!H§(_loc2_))
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§6H§.§ O§() == null)
               {
                  §6H§.§#L§(§6H§.§4!+§("1-1"));
               }
               else
               {
                  §8^§.§&!O§();
               }
               mNextState = §8^§.§"Z§;
               break;
            case "REPLAY":
               §8^§.§1!"§();
               mNextState = §8^§.§"Z§;
               break;
            case "MENU":
               mNextState = §+!%§.§"Z§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§>2§.getItemByName("TextField_EaglePercentage") as §`S§).§'Z§.text = int(mEagleScoreCounter) + "%";
         (§>2§.getItemByName("TextField_EaglePercentageEffects") as §`S§).§'Z§.text = int(mEagleScoreCounter) + "%";
         if(this.§5!9§ == -1 && mEagleScoreCounter > §+!'§ && mEagleScoreCounter >= this.§#!§ && !this.§?!8§)
         {
            if(this.§'d§ == -1)
            {
               this.§'d§ = getTimer();
            }
            else if(getTimer() - this.§'d§ >= §%!1§)
            {
               this.§?!8§ = true;
               (§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).mClip.visible = true;
               this.§use§ = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x;
               this.§"t§ = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y;
               this.§@$§ = §49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§@$§.onComplete = this.onBadgeLanded;
               this.§@$§.play();
            }
         }
         if(this.§5!9§ >= 0)
         {
            this.§2z§ = true;
            this.§"$§(param1);
         }
         else if(this.§2z§)
         {
            this.§2z§ = false;
            _loc3_ = AngryBirdsFP11.§^O§.§'7§(§6H§.§"Q§,AngryBirdsFP11.§^O§.§=%§(§6H§.§"Q§));
            if(this.§#!§ == 100 && _loc3_ == 3)
            {
               this.§3e§();
            }
            this.§5!9§ = -0.99;
            (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x = this.§use§;
            (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y = this.§"t§;
            this.§?f§ = 0;
            this.§3p§ = 0;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      protected function §if §() : void
      {
         this.§?f§ = 0;
         this.§3p§ = 0;
         this.§5!9§ = §[?§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§@$§ = null;
         (§>2§.getItemByName("MovieClip_HighScore") as §[R§).visible = true;
         §3V§.playSound("Hiscore_Badge",§"!2§);
         (§>2§.getItemByName("TextField_ScoreToBeat") as §`S§).setVisibility(false);
         (§>2§.getItemByName("MovieClip_ScoreToBeatTitle") as §[R§).setVisibility(false);
         this.§if §();
      }
      
      private function §"$§(param1:Number) : void
      {
         (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x - this.§?f§;
         (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y - this.§3p§;
         if(this.§5!9§ > 0)
         {
            this.§?f§ = (Math.random() - 0.5) * (this.§5!9§ / §[?§) * 20;
            this.§3p§ = (Math.random() - 0.5) * (this.§5!9§ / §[?§) * 20;
            (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).x + this.§?f§;
            (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y = (§>2§.getItemByName("Container_LevelEndEagleStripe") as §9V§).y + this.§3p§;
         }
         this.§5!9§ -= param1 / 10;
      }
   }
}
