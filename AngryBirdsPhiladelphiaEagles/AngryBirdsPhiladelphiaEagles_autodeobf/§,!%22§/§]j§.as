package §,!"§
{
   import §"U§.§!o§;
   import §&^§.§[!7§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]p§.§9!,§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import flash.events.Event;
   
   public class §]j§ extends §<z§
   {
       
      
      private var §8§:int = 0;
      
      private var §`x§:§[!9§ = null;
      
      private var §@Y§:Boolean = false;
      
      private var §=!7§:Number = 0;
      
      public function §]j§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§8§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§=!7§ = (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§@Y§ = false;
         §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
         this.§8§ = AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§);
         super.activate();
         §#! §.§`'§.background.§,+§();
         var _loc1_:§[z§ = §`!K§.§!I§(§`!K§.§5g§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§,u§();
            if(§#! §.§`'§.slingshot)
            {
               _loc3_ += §#! §.§`'§.slingshot.§5!,§();
            }
            this.§8§ = Math.min(this.§8§,_loc3_);
         }
         var _loc2_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
         if(§!D§.§%2§(_loc2_))
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §0q§.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§8§ > 0)
         {
            §0q§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §0q§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §0q§.setText(this.§8§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §0q§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §0q§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndEmbedRio[0];
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
         if(§-M§)
         {
            §!D§.§#!O§(§!D§.§6+§ + §`!K§.§5g§,param1);
            AngryBirdsFP11.§`I§.§,!0§(§`!K§.§5g§,param1);
            _loc3_ = AngryBirdsFP11.§`I§.§7j§(§`!K§.§5g§,param1);
            §!D§.§ t§(_loc3_,§`!K§.§5g§);
            §!D§.§#!O§(§!D§.§2I§ + §`!K§.§5g§,_loc3_);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§-M§)
         {
            §[!7§.playSound("Hiscore_Badge",§?!M§);
            §0q§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §0q§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §0q§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §#F§();
         }
         var _loc1_:int = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         var _loc2_:int = AngryBirdsFP11.§`I§.§7j§(§`!K§.§5g§,§#! §.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§<!Q§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§-M§)
         {
            (§#! §.§ A§ as §!D§).§%! §(§`!K§.§5g§);
         }
      }
   }
}
