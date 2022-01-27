package §##§
{
   import §'!N§.§"f§;
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §4!D§.§>!4§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §3!,§ extends § !E§
   {
      
      private static const §6!F§:int = 750;
      
      private static const §5!=§:String = "EndScreenEffectChannel";
      
      private static const §?&§:Number = 30;
       
      
      private var §+4§:§]H§;
      
      private var §@!9§:Number;
      
      private var §!G§:Number = 0.0;
      
      private var §%r§:Number = 0.0;
      
      private var § case§:Boolean = false;
      
      private var §7V§:Boolean = false;
      
      private var §1f§:Number = 0.0;
      
      private var §5E§:Number = 0.0;
      
      private var §2!K§:§]H§ = null;
      
      private var §"k§:Boolean = false;
      
      private var §^!;§:Number = 0;
      
      private var §&!D§:int;
      
      private var §4r§:int = -1;
      
      public function §3!,§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §9k§.§?!F§(§5!=§,3,1);
         this.§^!;§ = (§ §.getItemByName("MovieClip_Achievement") as §,!%§).mClip.y;
      }
      
      override public function activate() : void
      {
         this.§"k§ = false;
         var _loc1_:int = §2G§.controller.getEagleScore();
         var _loc2_:int = AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§);
         var _loc3_:* = _loc1_ > _loc2_;
         §>!4§.§4J§.addEventListener(§>!4§.SERVER_CALL_COMPLETE,this.§<1§);
         if(_loc3_)
         {
            §#g§.§56§(§#g§.§&,§ + §^n§.§-7§,_loc1_);
         }
         this.§@!9§ = -1;
         this.§&!D§ = _loc1_;
         §2G§.§7!,§.background.§5!"§();
         super.activate();
         this.§ case§ = false;
         this.§7V§ = false;
         var _loc4_:Rectangle = new Rectangle(0,0,§9!A§,(§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).height);
         (§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).mClip.scrollRect = _loc4_;
         (§ §.getItemByName("TextField_EaglePercentage") as §&H§).§%!"§.text = "0%";
         (§ §.getItemByName("TextField_ScoreToBeat") as §&H§).§%!"§.text = _loc2_ + "%";
         if(_loc2_ != 0)
         {
            (§ §.getItemByName("TextField_ScoreToBeat") as §"f§).visible = true;
            (§ §.getItemByName("MovieClip_ScoreToBeatTitle") as §"f§).visible = true;
         }
         (§ §.getItemByName("MovieClip_HighScore") as §"f§).visible = false;
         (§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).visible = false;
         var _loc5_:int = int(§^n§.§-7§.split("-")[1]) - 1;
         if(§#g§.§"!C§(_loc5_))
         {
            § §.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            § §.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §'!E§() : void
      {
         if(!this.§"k§)
         {
            (§ §.getItemByName("MovieClip_Achievement") as §,!%§).mClip.visible = true;
            (§ §.getItemByName("MovieClip_Achievement") as §,!%§).mClip.y = this.§^!;§ + 100;
            this.§2!K§ = §<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_Achievement") as §,!%§).mClip,{"y":this.§^!;§},null,1,§<t§.§]q§);
            this.§"k§ = true;
            this.§2!K§.onComplete = this.§'!E§;
            this.§2!K§.play();
         }
      }
      
      private function §&c§() : void
      {
      }
      
      private function §<1§(param1:Event) : void
      {
         var _loc2_:int = int(§^n§.§-7§.split("-")[1]) - 1;
         if(§#g§.§"!C§(_loc2_))
         {
            § §.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            § §.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§^n§.§<_§() == null)
               {
                  §^n§.§4S§(§^n§.§while§("1-1"));
               }
               else
               {
                  §6l§.§'! §();
               }
               mNextState = §6l§.§=,§;
               break;
            case "REPLAY":
               §6l§.§"w§();
               mNextState = §6l§.§=,§;
               break;
            case "MENU":
               mNextState = §package§.§=,§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§ §.getItemByName("TextField_EaglePercentage") as §&H§).§%!"§.text = int(mEagleScoreCounter) + "%";
         (§ §.getItemByName("TextField_EaglePercentageEffects") as §&H§).§%!"§.text = int(mEagleScoreCounter) + "%";
         if(this.§@!9§ == -1 && mEagleScoreCounter > §!n§ && mEagleScoreCounter >= this.§&!D§ && !this.§ case§)
         {
            if(this.§4r§ == -1)
            {
               this.§4r§ = getTimer();
            }
            else if(getTimer() - this.§4r§ >= §6!F§)
            {
               this.§ case§ = true;
               (§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).mClip.visible = true;
               this.§1f§ = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x;
               this.§5E§ = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y;
               this.§+4§ = §<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).mClip,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":7,
                  "scaleY":7
               },0.1);
               this.§+4§.onComplete = this.onBadgeLanded;
               this.§+4§.play();
            }
         }
         if(this.§@!9§ >= 0)
         {
            this.§7V§ = true;
            this.§96§(param1);
         }
         else if(this.§7V§)
         {
            this.§7V§ = false;
            _loc3_ = AngryBirdsFP11.§ ;§.§1!;§(§^n§.§-7§,AngryBirdsFP11.§ ;§.§7g§(§^n§.§-7§));
            if(this.§&!D§ == 100 && _loc3_ == 3)
            {
               this.§'!E§();
            }
            this.§@!9§ = -0.99;
            (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x = this.§1f§;
            (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y = this.§5E§;
            this.§!G§ = 0;
            this.§%r§ = 0;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      protected function §2T§() : void
      {
         this.§!G§ = 0;
         this.§%r§ = 0;
         this.§@!9§ = §?&§;
      }
      
      private function onBadgeLanded() : void
      {
         this.§+4§ = null;
         (§ §.getItemByName("MovieClip_HighScore") as §,!%§).visible = true;
         §9k§.playSound("Hiscore_Badge",§5!=§);
         (§ §.getItemByName("TextField_ScoreToBeat") as §&H§).setVisibility(false);
         (§ §.getItemByName("MovieClip_ScoreToBeatTitle") as §,!%§).setVisibility(false);
         this.§2T§();
      }
      
      private function §96§(param1:Number) : void
      {
         (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x - this.§!G§;
         (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y - this.§%r§;
         if(this.§@!9§ > 0)
         {
            this.§!G§ = (Math.random() - 0.5) * (this.§@!9§ / §?&§) * 20;
            this.§%r§ = (Math.random() - 0.5) * (this.§@!9§ / §?&§) * 20;
            (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).x + this.§!G§;
            (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y = (§ §.getItemByName("Container_LevelEndEagleStripe") as §'^§).y + this.§%r§;
         }
         this.§@!9§ -= param1 / 10;
      }
   }
}
