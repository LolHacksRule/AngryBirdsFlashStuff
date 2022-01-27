package §>Y§
{
   import §"^§.§9=§;
   import §&[§.§<c§;
   import §3!%§.§-k§;
   import §5f§.§-G§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §6X§ extends § u§
   {
      
      private static const §0l§:int = 750;
      
      private static const §-r§:String = "EndScreenEffectChannel";
      
      private static const §5!A§:Number = 30;
       
      
      private var §=n§:§6q§;
      
      private var §`!E§:Number;
      
      private var §3l§:Number = 0.0;
      
      private var §?x§:Number = 0.0;
      
      private var §7!"§:Boolean = false;
      
      private var §'J§:Boolean = false;
      
      private var §!+§:Number = 0.0;
      
      private var §?!?§:Number = 0.0;
      
      private var §#u§:§6q§ = null;
      
      private var §5!?§:Boolean = false;
      
      private var §[u§:Number = 0;
      
      private var §&!$§:int;
      
      private var §%f§:int = -1;
      
      public function §6X§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §25§.§5!G§(§-r§,3,1);
         this.§[u§ = (§3g§.getItemByName("MovieClip_Achievement") as §"x§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§5!?§ = false;
         var _loc1_:int = §9=§.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§);
         var _loc3_:* = _loc1_ > _loc2_;
         §<c§.§ set§.addEventListener(§<c§.SERVER_CALL_COMPLETE,this.§?o§);
         if(_loc3_)
         {
            §#'§.§,B§(§#'§.§'c§ + §-k§.§%D§,_loc1_,true);
         }
         this.§`!E§ = -1;
         this.§&!$§ = _loc1_;
         §9=§.§<!@§.background.§[U§();
         super.activate();
         this.§7!"§ = false;
         this.§'J§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§&N§,(§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).height);
         (§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).mClip.scrollRect = _loc4_;
         (§3g§.getItemByName("TextField_EaglePercentage") as §2"§).§^"§.text = "0%";
         (§3g§.getItemByName("TextField_ScoreToBeat") as §2"§).§^"§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§3g§.getItemByName("TextField_ScoreToBeat") as §-G§).visible = true;
            (§3g§.getItemByName("MovieClip_ScoreToBeatTitle") as §-G§).visible = true;
         }
         (§3g§.getItemByName("MovieClip_HighScore") as §-G§).visible = false;
         (§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).visible = false;
         var _loc5_:int = int(§-k§.§%D§.split("-")[1]) - 1;
         if(§#'§.§2q§(_loc5_))
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §#&§() : void
      {
         if(!this.§5!?§)
         {
            (§3g§.getItemByName("MovieClip_Achievement") as §"x§).mClip.visible = true;
            (§3g§.getItemByName("MovieClip_Achievement") as §"x§).mClip.y = this.§[u§ + 100;
            this.§#u§ = §[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_Achievement") as §"x§).mClip,{"y":this.§[u§},null,1,§[!-§.§0!§);
            this.§5!?§ = true;
            this.§#u§.onComplete = this.§#&§;
            this.§#u§.play();
         }
      }
      
      private function §9X§() : void
      {
      }
      
      private function §?o§(param1:Event) : void
      {
         var _loc2_:int = int(§-k§.§%D§.split("-")[1]) - 1;
         if(§#'§.§2q§(_loc2_))
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§-k§.§7#§() == null)
               {
                  §-k§.§+p§(§-k§.§0S§("1-1"));
               }
               else
               {
                  §;O§.§ true§();
               }
               mNextState = §;O§.§4!C§;
               break;
            case "REPLAY":
               §;O§.§%e§();
               mNextState = §;O§.§4!C§;
               break;
            case "MENU":
               mNextState = §%R§.§4!C§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§3g§.getItemByName("TextField_EaglePercentage") as §2"§).§^"§.text = int(mEagleScoreCounter) + "%";
         (§3g§.getItemByName("TextField_EaglePercentageEffects") as §2"§).§^"§.text = int(mEagleScoreCounter) + "%";
         if(this.§`!E§ == -1 && mEagleScoreCounter > §`!4§ && mEagleScoreCounter >= this.§&!$§ && !this.§7!"§)
         {
            if(this.§%f§ == -1)
            {
               this.§%f§ = getTimer();
            }
            else if(getTimer() - this.§%f§ >= §0l§)
            {
               this.§7!"§ = true;
               (§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).mClip.visible = true;
               this.§!+§ = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x;
               this.§?!?§ = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y;
               this.§=n§ = §[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§=n§.onComplete = this.onBadgeLanded;
               this.§=n§.play();
            }
         }
         if(this.§`!E§ >= 0)
         {
            this.§'J§ = true;
            this.§++§(param1);
         }
         else if(this.§'J§)
         {
            this.§'J§ = false;
            _loc3_ = AngryBirdsFP11.§3!?§.§09§(§-k§.§%D§,AngryBirdsFP11.§3!?§.§@%§(§-k§.§%D§));
            if(this.§&!$§ == 100 && _loc3_ == 3)
            {
               this.§#&§();
            }
            this.§`!E§ = -0.99;
            (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x = this.§!+§;
            (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y = this.§?!?§;
            this.§3l§ = 0;
            this.§?x§ = 0;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      protected function §2;§() : void
      {
         this.§3l§ = 0;
         this.§?x§ = 0;
         this.§`!E§ = §5!A§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§=n§ = null;
         (§3g§.getItemByName("MovieClip_HighScore") as §"x§).visible = true;
         §25§.playSound("Hiscore_Badge",§-r§);
         (§3g§.getItemByName("TextField_ScoreToBeat") as §2"§).setVisibility(false);
         (§3g§.getItemByName("MovieClip_ScoreToBeatTitle") as §"x§).setVisibility(false);
         this.§2;§();
      }
      
      private function §++§(param1:Number) : void
      {
         (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x - this.§3l§;
         (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y - this.§?x§;
         if(this.§`!E§ > 0)
         {
            this.§3l§ = (Math.random() - 0.5) * (this.§`!E§ / §5!A§) * 20;
            this.§?x§ = (Math.random() - 0.5) * (this.§`!E§ / §5!A§) * 20;
            (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).x + this.§3l§;
            (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y = (§3g§.getItemByName("Container_LevelEndEagleStripe") as §>v§).y + this.§?x§;
         }
         this.§`!E§ -= param1 / 10;
      }
   }
}
