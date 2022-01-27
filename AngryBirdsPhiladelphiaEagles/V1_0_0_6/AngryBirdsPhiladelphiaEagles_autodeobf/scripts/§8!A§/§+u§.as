package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.override;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §16§.§;v§;
   import §1E§.§2h§;
   import §8]§.§+a§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §+u§ extends §"!!§
   {
      
      private static const §;!>§:int = 750;
      
      private static const §]0§:String = "EndScreenEffectChannel";
      
      private static const § !C§:Number = 30;
       
      
      private var §#! §:§<Q§;
      
      private var §2b§:Number;
      
      private var §=!?§:Number = 0.0;
      
      private var §1!B§:Number = 0.0;
      
      private var §7!"§:Boolean = false;
      
      private var §';§:Boolean = false;
      
      private var §-8§:Number = 0.0;
      
      private var §1B§:Number = 0.0;
      
      private var §#!D§:§<Q§ = null;
      
      private var §5O§:Boolean = false;
      
      private var §&x§:Number = 0;
      
      private var §]!-§:int;
      
      private var §>!1§:int = -1;
      
      public function §+u§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#-§.§[R§(§]0§,3,1);
         this.§&x§ = (§<A§.getItemByName("MovieClip_Achievement") as §93§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§5O§ = false;
         var _loc1_:int = §[F§.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§);
         var _loc3_:* = _loc1_ > _loc2_;
         §;v§.§<"§.addEventListener(§;v§.SERVER_CALL_COMPLETE,this.§4!'§);
         if(_loc3_)
         {
            §>!?§.§+s§(§>!?§.§ J§ + §2h§.§,!P§,_loc1_,true);
         }
         this.§2b§ = -1;
         this.§]!-§ = _loc1_;
         §[F§.§9u§.background.§4C§();
         super.activate();
         this.§7!"§ = false;
         this.§';§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§<!"§,(§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).height);
         (§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).mClip.scrollRect = _loc4_;
         (§<A§.getItemByName("TextField_EaglePercentage") as §?N§).§2W§.text = "0%";
         (§<A§.getItemByName("TextField_ScoreToBeat") as §?N§).§2W§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§<A§.getItemByName("TextField_ScoreToBeat") as override).visible = true;
            (§<A§.getItemByName("MovieClip_ScoreToBeatTitle") as override).visible = true;
         }
         (§<A§.getItemByName("MovieClip_HighScore") as override).visible = false;
         (§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).visible = false;
         var _loc5_:int = int(§2h§.§,!P§.split("-")[1]) - 1;
         if(§>!?§.§&f§(_loc5_))
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §,]§() : void
      {
         if(!this.§5O§)
         {
            (§<A§.getItemByName("MovieClip_Achievement") as §93§).mClip.visible = true;
            (§<A§.getItemByName("MovieClip_Achievement") as §93§).mClip.y = this.§&x§ + 100;
            this.§#!D§ = §5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_Achievement") as §93§).mClip,{"y":this.§&x§},null,1,§5^§.§6I§);
            this.§5O§ = true;
            this.§#!D§.onComplete = this.§,]§;
            this.§#!D§.play();
         }
      }
      
      private function §^L§() : void
      {
      }
      
      private function §4!'§(param1:Event) : void
      {
         var _loc2_:int = int(§2h§.§,!P§.split("-")[1]) - 1;
         if(§>!?§.§&f§(_loc2_))
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§2h§.§@!8§() == null)
               {
                  §2h§.§2!I§(§2h§.§>w§("1-1"));
               }
               else
               {
                  §#u§.§<k§();
               }
               mNextState = §#u§.§2`§;
               break;
            case "REPLAY":
               §#u§.§<q§();
               mNextState = §#u§.§2`§;
               break;
            case "MENU":
               mNextState = §7!O§.§2`§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§<A§.getItemByName("TextField_EaglePercentage") as §?N§).§2W§.text = int(mEagleScoreCounter) + "%";
         (§<A§.getItemByName("TextField_EaglePercentageEffects") as §?N§).§2W§.text = int(mEagleScoreCounter) + "%";
         if(this.§2b§ == -1 && mEagleScoreCounter > §2v§ && mEagleScoreCounter >= this.§]!-§ && !this.§7!"§)
         {
            if(this.§>!1§ == -1)
            {
               this.§>!1§ = getTimer();
            }
            else if(getTimer() - this.§>!1§ >= §;!>§)
            {
               this.§7!"§ = true;
               (§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).mClip.visible = true;
               this.§-8§ = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x;
               this.§1B§ = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y;
               this.§#! § = §5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§#! §.onComplete = this.onBadgeLanded;
               this.§#! §.play();
            }
         }
         if(this.§2b§ >= 0)
         {
            this.§';§ = true;
            this.§%!4§(param1);
         }
         else if(this.§';§)
         {
            this.§';§ = false;
            _loc3_ = AngryBirdsFP11.§ !-§.§^!3§(§2h§.§,!P§,AngryBirdsFP11.§ !-§.§&[§(§2h§.§,!P§));
            if(this.§]!-§ == 100 && _loc3_ == 3)
            {
               this.§,]§();
            }
            this.§2b§ = -0.99;
            (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x = this.§-8§;
            (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y = this.§1B§;
            this.§=!?§ = 0;
            this.§1!B§ = 0;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      protected function §5!2§() : void
      {
         this.§=!?§ = 0;
         this.§1!B§ = 0;
         this.§2b§ = § !C§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§#! § = null;
         (§<A§.getItemByName("MovieClip_HighScore") as §93§).visible = true;
         §#-§.playSound("Hiscore_Badge",§]0§);
         (§<A§.getItemByName("TextField_ScoreToBeat") as §?N§).setVisibility(false);
         (§<A§.getItemByName("MovieClip_ScoreToBeatTitle") as §93§).setVisibility(false);
         this.§5!2§();
      }
      
      private function §%!4§(param1:Number) : void
      {
         (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x - this.§=!?§;
         (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y - this.§1!B§;
         if(this.§2b§ > 0)
         {
            this.§=!?§ = (Math.random() - 0.5) * (this.§2b§ / § !C§) * 20;
            this.§1!B§ = (Math.random() - 0.5) * (this.§2b§ / § !C§) * 20;
            (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).x + this.§=!?§;
            (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y = (§<A§.getItemByName("Container_LevelEndEagleStripe") as §+a§).y + this.§1!B§;
         }
         this.§2b§ -= param1 / 10;
      }
   }
}
