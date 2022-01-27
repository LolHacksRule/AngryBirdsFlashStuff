package §##§
{
   import §'!N§.§%!E§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §4!D§.§>!4§;
   import §5=§.§8G§;
   import §5=§.§^n§;
   import §=8§.§,!%§;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§;Q§;
   import flash.events.Event;
   
   public class §;j§ extends §8!A§
   {
       
      
      private var §=!4§:int = 0;
      
      private var §2!K§:§]H§ = null;
      
      private var §"k§:Boolean = false;
      
      private var §^!;§:Number = 0;
      
      public function §;j§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§=!4§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!;§ = (§ §.getItemByName("MovieClip_Achievement") as §,!%§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§"k§ = false;
         §>!4§.§4J§.addEventListener(§>!4§.SERVER_CALL_COMPLETE,this.§<1§);
         this.§=!4§ = AngryBirdsFP11.§ ;§.§7g§(§^n§.§-7§);
         super.activate();
         §2G§.§7!,§.background.§5!"§();
         var _loc1_:§8G§ = §^n§.§5'§(§^n§.§-7§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§^N§();
            if(§2G§.§7!,§.slingshot)
            {
               _loc3_ += §2G§.§7!,§.slingshot.§6!,§();
            }
            this.§=!4§ = Math.min(this.§=!4§,_loc3_);
         }
         var _loc2_:int = int(§^n§.§-7§.split("-")[1]) - 1;
         if(§#g§.§"!C§(_loc2_))
         {
            § §.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            § §.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§=!4§ > 0)
         {
            § §.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            § §.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            § §.setText(this.§=!4§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            § §.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            § §.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §;Q§.static.Views.View_LevelEndEmbedRio[0];
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
         if(§6'§)
         {
            §#g§.§56§(§#g§.§9!@§ + §^n§.§-7§,param1);
            AngryBirdsFP11.§ ;§.§#!P§(§^n§.§-7§,param1);
            _loc3_ = AngryBirdsFP11.§ ;§.§1!;§(§^n§.§-7§,param1);
            §#g§.§%!C§(_loc3_,§^n§.§-7§);
            §#g§.§56§(§#g§.§3!9§ + §^n§.§-7§,_loc3_);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§6'§)
         {
            §9k§.playSound("Hiscore_Badge",§5!=§);
            § §.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            § §.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            § §.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §2T§();
         }
         var _loc1_:int = AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§);
         var _loc2_:int = AngryBirdsFP11.§ ;§.§1!;§(§^n§.§-7§,§2G§.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§'!E§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§6'§)
         {
            (§2G§.§4T§ as §#g§).§%b§(§^n§.§-7§);
         }
      }
   }
}
