package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]p§.§9!,§;
   import §^]§.§`!K§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §&!7§ extends § true§
   {
      
      private static const §&!=§:int = 750;
      
      private static const §?!M§:String = "EndScreenEffectChannel";
      
      private static const §`,§:Number = 30;
       
      
      private var §=r§:§[!9§;
      
      private var §2Q§:Number;
      
      private var §`!I§:Number = 0.0;
      
      private var §'^§:Number = 0.0;
      
      private var §]!G§:Boolean = false;
      
      private var §!9§:Boolean = false;
      
      private var §&G§:Number = 0.0;
      
      private var §5!?§:Number = 0.0;
      
      private var §`x§:§[!9§ = null;
      
      private var §@Y§:Boolean = false;
      
      private var §=!7§:Number = 0;
      
      private var native:int;
      
      private var §@!M§:int = -1;
      
      public function §&!7§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[!7§.§'<§(§?!M§,3,1);
         this.§=!7§ = (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§@Y§ = false;
         var _loc1_:int = §#! §.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         var _loc3_:* = _loc1_ > _loc2_;
         §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
         if(_loc3_)
         {
            §!D§.§#!O§(§!D§.§5!%§ + §`!K§.§5g§,_loc1_);
         }
         this.§2Q§ = -1;
         this.native = _loc1_;
         §#! §.§`'§.background.§,+§();
         super.activate();
         this.§]!G§ = false;
         this.§!9§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§=!I§,(§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).height);
         (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.scrollRect = _loc4_;
         (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = "0%";
         (§0q§.getItemByName("TextField_ScoreToBeat") as §@4§).§!!@§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§0q§.getItemByName("TextField_ScoreToBeat") as §var §).visible = true;
            (§0q§.getItemByName("MovieClip_ScoreToBeatTitle") as §var §).visible = true;
         }
         (§0q§.getItemByName("MovieClip_HighScore") as §var §).visible = false;
         (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).visible = false;
         var _loc5_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
         if(§!D§.§%2§(_loc5_))
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §<!Q§() : void
      {
         if(!this.§@Y§)
         {
            (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.visible = true;
            (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y = this.§=!7§ + 100;
            this.§`x§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip,{"y":this.§=!7§},null,1,§3C§.§4Z§);
            this.§@Y§ = true;
            this.§`x§.onComplete = this.§<!Q§;
            this.§`x§.play();
         }
      }
      
      private function §4c§() : void
      {
      }
      
      private function §6!"§(param1:Event) : void
      {
         var _loc2_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
         if(§!D§.§%2§(_loc2_))
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§`!K§.§6J§() == null)
               {
                  §`!K§.§!e§(§`!K§.§]!F§("1-1"));
               }
               else
               {
                  §-O§.§ b§();
               }
               mNextState = §-O§.§-A§;
               break;
            case "REPLAY":
               §-O§.§8!5§();
               mNextState = §-O§.§-A§;
               break;
            case "MENU":
               mNextState = §@f§.§-A§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(mEagleScoreCounter) + "%";
         (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(mEagleScoreCounter) + "%";
         if(this.§2Q§ == -1 && mEagleScoreCounter > §&!1§ && mEagleScoreCounter >= this.native && !this.§]!G§)
         {
            if(this.§@!M§ == -1)
            {
               this.§@!M§ = getTimer();
            }
            else if(getTimer() - this.§@!M§ >= §&!=§)
            {
               this.§]!G§ = true;
               (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip.visible = true;
               this.§&G§ = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x;
               this.§5!?§ = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y;
               this.§=r§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§=r§.onComplete = this.onBadgeLanded;
               this.§=r§.play();
            }
         }
         if(this.§2Q§ >= 0)
         {
            this.§!9§ = true;
            this.§@!,§(param1);
         }
         else if(this.§!9§)
         {
            this.§!9§ = false;
            _loc3_ = AngryBirdsFP11.§`I§.§7j§(§`!K§.§5g§,AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§));
            if(this.native == 100 && _loc3_ == 3)
            {
               this.§<!Q§();
            }
            this.§2Q§ = -0.99;
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = this.§&G§;
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = this.§5!?§;
            this.§`!I§ = 0;
            this.§'^§ = 0;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      protected function §#F§() : void
      {
         this.§`!I§ = 0;
         this.§'^§ = 0;
         this.§2Q§ = §`,§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§=r§ = null;
         (§0q§.getItemByName("MovieClip_HighScore") as §!o§).visible = true;
         §[!7§.playSound("Hiscore_Badge",§?!M§);
         (§0q§.getItemByName("TextField_ScoreToBeat") as §@4§).setVisibility(false);
         (§0q§.getItemByName("MovieClip_ScoreToBeatTitle") as §!o§).setVisibility(false);
         this.§#F§();
      }
      
      private function §@!,§(param1:Number) : void
      {
         (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x - this.§`!I§;
         (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y - this.§'^§;
         if(this.§2Q§ > 0)
         {
            this.§`!I§ = (Math.random() - 0.5) * (this.§2Q§ / §`,§) * 20;
            this.§'^§ = (Math.random() - 0.5) * (this.§2Q§ / §`,§) * 20;
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x + this.§`!I§;
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y + this.§'^§;
         }
         this.§2Q§ -= param1 / 10;
      }
   }
}
