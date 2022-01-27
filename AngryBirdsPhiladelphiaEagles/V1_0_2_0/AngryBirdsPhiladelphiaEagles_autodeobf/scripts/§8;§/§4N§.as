package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §4!6§.§<5§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §=!H§.§[R§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   import flash.events.Event;
   
   public class §4N§ extends §9h§
   {
       
      
      private var §?!H§:int = 0;
      
      private var §]!9§:§ !4§ = null;
      
      private var §3!0§:Boolean = false;
      
      private var §%O§:Number = 0;
      
      public function §4N§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§?!H§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§%O§ = (§>2§.getItemByName("MovieClip_Achievement") as §[R§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§3!0§ = false;
         §<5§.§&y§.addEventListener(§<5§.SERVER_CALL_COMPLETE,this.§!%§);
         this.§?!H§ = AngryBirdsFP11.§^O§.§=%§(§6H§.§"Q§);
         super.activate();
         §5!+§.§6!§.background.§37§();
         var _loc1_:§;!,§ = §6H§.§,!C§(§6H§.§"Q§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§?§();
            if(§5!+§.§6!§.slingshot)
            {
               _loc3_ += §5!+§.§6!§.slingshot.§;6§();
            }
            this.§?!H§ = Math.min(this.§?!H§,_loc3_);
         }
         var _loc2_:int = int(§6H§.§"Q§.split("-")[1]) - 1;
         if(§#!1§.§8!H§(_loc2_))
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §>2§.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§?!H§ > 0)
         {
            §>2§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §>2§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §>2§.setText(this.§?!H§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §>2§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §>2§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §,!;§.§2o§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function showButtonsCutScene() : void
      {
      }
      
      override protected function showButtonsNormal() : void
      {
      }
      
      override protected function setMightyEagleFeather() : void
      {
      }
      
      override protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(§,!4§)
         {
            §#!1§.§`U§(§#!1§.§5!;§ + §6H§.§"Q§,param1);
            AngryBirdsFP11.§^O§.§9!;§(§6H§.§"Q§,param1);
            _loc3_ = AngryBirdsFP11.§^O§.§'7§(§6H§.§"Q§,param1);
            §#!1§.§?%§(_loc3_,§6H§.§"Q§);
            §#!1§.§`U§(§#!1§.§8-§ + §6H§.§"Q§,_loc3_);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§,!4§)
         {
            §3V§.playSound("Hiscore_Badge",§"!2§);
            §>2§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §>2§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §>2§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §if §();
         }
         var _loc1_:int = AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§);
         var _loc2_:int = AngryBirdsFP11.§^O§.§'7§(§6H§.§"Q§,§5!+§.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§3e§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§,!4§)
         {
            (§5!+§.§5!6§ as §#!1§).§0!5§(§6H§.§"Q§);
         }
      }
   }
}
