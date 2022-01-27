package §=!0§
{
   import §!t§.§?g§;
   import §,!1§.§]e§;
   import §-!D§.§1>§;
   import §5F§.§+!O§;
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import flash.events.Event;
   
   public class §%!H§ extends §5O§
   {
       
      
      private var §6!8§:int = 0;
      
      private var §2!$§:§!l§ = null;
      
      private var §-!+§:Boolean = false;
      
      private var §'!8§:Number = 0;
      
      public function §%!H§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§6!8§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§'!8§ = (§;I§.getItemByName("MovieClip_Achievement") as §?g§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§-!+§ = false;
         §1>§.§@!&§.addEventListener(§1>§.SERVER_CALL_COMPLETE,this.§%j§);
         this.§6!8§ = AngryBirdsFP11.§5@§.§<Q§(§&u§.§ !+§);
         super.activate();
         §0!E§.§9!B§.background.§?4§();
         var _loc1_:§#!M§ = §&u§.§`!0§(§&u§.§ !+§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§,8§();
            if(§0!E§.§9!B§.slingshot)
            {
               _loc3_ += §0!E§.§9!B§.slingshot.§%p§();
            }
            this.§6!8§ = Math.min(this.§6!8§,_loc3_);
         }
         var _loc2_:int = int(§&u§.§ !+§.split("-")[1]) - 1;
         if(§=!<§.§[!3§(_loc2_))
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §;I§.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§6!8§ > 0)
         {
            §;I§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §;I§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §;I§.setText(this.§6!8§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §;I§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §;I§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §`d§.§8?§.Views.View_LevelEndEmbedRio[0];
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
         if(§-p§)
         {
            §=!<§.§7a§(§=!<§.§%!E§ + §&u§.§ !+§,param1,true);
            AngryBirdsFP11.§5@§.§,!7§(§&u§.§ !+§,param1);
            _loc3_ = AngryBirdsFP11.§5@§.§!T§(§&u§.§ !+§,param1);
            §=!<§.§7a§(§=!<§.§"!9§ + §&u§.§ !+§,_loc3_,true);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§-p§)
         {
            §]e§.playSound("Hiscore_Badge",§>%§);
            §;I§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §;I§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §;I§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §`2§();
         }
         var _loc1_:int = AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§);
         var _loc2_:int = AngryBirdsFP11.§5@§.§!T§(§&u§.§ !+§,§0!E§.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§]p§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§-p§)
         {
            (§0!E§.§`#§ as §=!<§).§ a§(§&u§.§ !+§);
         }
      }
   }
}
