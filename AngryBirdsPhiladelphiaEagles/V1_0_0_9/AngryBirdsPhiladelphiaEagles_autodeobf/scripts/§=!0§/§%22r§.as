package §=!0§
{
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §,!1§.§]e§;
   import §-!D§.§1>§;
   import §5F§.§!!A§;
   import §5F§.§+!O§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §"r§ extends §6!9§
   {
      
      private static const §^!N§:int = 750;
      
      private static const §>%§:String = "EndScreenEffectChannel";
      
      private static const §[!@§:Number = 30;
       
      
      private var §6!&§:§!l§;
      
      private var §6e§:Number;
      
      private var §%4§:Number = 0.0;
      
      private var §+6§:Number = 0.0;
      
      private var §#!+§:Boolean = false;
      
      private var §6!<§:Boolean = false;
      
      private var §6-§:Number = 0.0;
      
      private var §-,§:Number = 0.0;
      
      private var §2!$§:§!l§ = null;
      
      private var §-!+§:Boolean = false;
      
      private var §'!8§:Number = 0;
      
      private var §'k§:int;
      
      private var §,!N§:int = -1;
      
      public function §"r§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]e§.§#x§(§>%§,3,1);
         this.§'!8§ = (§;I§.getItemByName("MovieClip_Achievement") as §?g§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§-!+§ = false;
         var _loc1_:int = §0!E§.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§);
         var _loc3_:* = _loc1_ > _loc2_;
         §1>§.§@!&§.addEventListener(§1>§.SERVER_CALL_COMPLETE,this.§%j§);
         if(_loc3_)
         {
            §=!<§.§7a§(§=!<§.§8B§ + §&u§.§ !+§,_loc1_,true);
         }
         this.§6e§ = -1;
         this.§'k§ = _loc1_;
         §0!E§.§9!B§.background.§?4§();
         super.activate();
         this.§#!+§ = false;
         this.§6!<§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§8!P§,(§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).height);
         (§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).mClip.scrollRect = _loc4_;
         (§;I§.getItemByName("TextField_EaglePercentage") as §>B§).§ !$§.text = "0%";
         (§;I§.getItemByName("TextField_ScoreToBeat") as §>B§).§ !$§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§;I§.getItemByName("TextField_ScoreToBeat") as §!!A§).visible = true;
            (§;I§.getItemByName("MovieClip_ScoreToBeatTitle") as §!!A§).visible = true;
         }
         (§;I§.getItemByName("MovieClip_HighScore") as §!!A§).visible = false;
         (§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).visible = false;
         var _loc5_:int = int(§&u§.§ !+§.split("-")[1]) - 1;
         if(§=!<§.§[!3§(_loc5_))
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §]p§() : void
      {
         if(!this.§-!+§)
         {
            (§;I§.getItemByName("MovieClip_Achievement") as §?g§).mClip.visible = true;
            (§;I§.getItemByName("MovieClip_Achievement") as §?g§).mClip.y = this.§'!8§ + 100;
            this.§2!$§ = §5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_Achievement") as §?g§).mClip,{"y":this.§'!8§},null,1,§5!&§.§<!C§);
            this.§-!+§ = true;
            this.§2!$§.onComplete = this.§]p§;
            this.§2!$§.play();
         }
      }
      
      private function §>!E§() : void
      {
      }
      
      private function §%j§(param1:Event) : void
      {
         var _loc2_:int = int(§&u§.§ !+§.split("-")[1]) - 1;
         if(§=!<§.§[!3§(_loc2_))
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§&u§.§7E§() == null)
               {
                  §&u§.§8v§(§&u§.§"V§("1-1"));
               }
               else
               {
                  §1!F§.§!<§();
               }
               mNextState = §1!F§.§@§;
               break;
            case "REPLAY":
               §1!F§.§4W§();
               mNextState = §1!F§.§@§;
               break;
            case "MENU":
               mNextState = §9!+§.§@§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§;I§.getItemByName("TextField_EaglePercentage") as §>B§).§ !$§.text = int(mEagleScoreCounter) + "%";
         (§;I§.getItemByName("TextField_EaglePercentageEffects") as §>B§).§ !$§.text = int(mEagleScoreCounter) + "%";
         if(this.§6e§ == -1 && mEagleScoreCounter > §%v§ && mEagleScoreCounter >= this.§'k§ && !this.§#!+§)
         {
            if(this.§,!N§ == -1)
            {
               this.§,!N§ = getTimer();
            }
            else if(getTimer() - this.§,!N§ >= §^!N§)
            {
               this.§#!+§ = true;
               (§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).mClip.visible = true;
               this.§6-§ = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x;
               this.§-,§ = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y;
               this.§6!&§ = §5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§6!&§.onComplete = this.onBadgeLanded;
               this.§6!&§.play();
            }
         }
         if(this.§6e§ >= 0)
         {
            this.§6!<§ = true;
            this.§0!"§(param1);
         }
         else if(this.§6!<§)
         {
            this.§6!<§ = false;
            _loc3_ = AngryBirdsFP11.§5@§.§!T§(§&u§.§ !+§,AngryBirdsFP11.§5@§.§<Q§(§&u§.§ !+§));
            if(this.§'k§ == 100 && _loc3_ == 3)
            {
               this.§]p§();
            }
            this.§6e§ = -0.99;
            (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x = this.§6-§;
            (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y = this.§-,§;
            this.§%4§ = 0;
            this.§+6§ = 0;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §`2§() : void
      {
         this.§%4§ = 0;
         this.§+6§ = 0;
         this.§6e§ = §[!@§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§6!&§ = null;
         (§;I§.getItemByName("MovieClip_HighScore") as §?g§).visible = true;
         §]e§.playSound("Hiscore_Badge",§>%§);
         (§;I§.getItemByName("TextField_ScoreToBeat") as §>B§).setVisibility(false);
         (§;I§.getItemByName("MovieClip_ScoreToBeatTitle") as §?g§).setVisibility(false);
         this.§`2§();
      }
      
      private function §0!"§(param1:Number) : void
      {
         (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x - this.§%4§;
         (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y - this.§+6§;
         if(this.§6e§ > 0)
         {
            this.§%4§ = (Math.random() - 0.5) * (this.§6e§ / §[!@§) * 20;
            this.§+6§ = (Math.random() - 0.5) * (this.§6e§ / §[!@§) * 20;
            (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).x + this.§%4§;
            (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y = (§;I§.getItemByName("Container_LevelEndEagleStripe") as §;1§).y + this.§+6§;
         }
         this.§6e§ -= param1 / 10;
      }
   }
}
