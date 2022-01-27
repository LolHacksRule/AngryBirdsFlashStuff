package §8!A§
{
   import §!!0§.§ true§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §16§.§;v§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §4M§.;
   import §8]§.§93§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.events.Event;
   
   public class §2!1§ extends §!n§
   {
       
      
      private var §<!E§:int = 0;
      
      private var §#!D§:§<Q§ = null;
      
      private var §5O§:Boolean = false;
      
      private var §&x§:Number = 0;
      
      public function §2!1§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§<!E§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§&x§ = (§<A§.getItemByName("MovieClip_Achievement") as §93§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§5O§ = false;
         §;v§.§<"§.addEventListener(§;v§.SERVER_CALL_COMPLETE,this.§4!'§);
         this.§<!E§ = AngryBirdsFP11.§ !-§.§&[§(§2h§.§,!P§);
         super.activate();
         §[F§.§9u§.background.§4C§();
         var _loc1_:§5T§ = §2h§.§?J§(§2h§.§,!P§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§"z§();
            if(§[F§.§9u§.slingshot)
            {
               _loc3_ += §[F§.§9u§.slingshot.§1M§();
            }
            this.§<!E§ = Math.min(this.§<!E§,_loc3_);
         }
         var _loc2_:int = int(§2h§.§,!P§.split("-")[1]) - 1;
         if(§>!?§.§&f§(_loc2_))
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §<A§.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§<!E§ > 0)
         {
            §<A§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §<A§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §<A§.setText(this.§<!E§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §<A§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §<A§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §#4§.§]X§.Views.View_LevelEndEmbedRio[0];
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
         if(§4!M§)
         {
            §>!?§.§+s§(§>!?§.§5i§ + §2h§.§,!P§,param1,true);
            AngryBirdsFP11.§ !-§.§@v§(§2h§.§,!P§,param1);
            _loc3_ = AngryBirdsFP11.§ !-§.§^!3§(§2h§.§,!P§,param1);
            §>!?§.§+s§(§>!?§.§3a§ + §2h§.§,!P§,_loc3_,true);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§4!M§)
         {
            §#-§.playSound("Hiscore_Badge",§]0§);
            §<A§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §<A§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §<A§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §5!2§();
         }
         var _loc1_:int = AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§);
         var _loc2_:int = AngryBirdsFP11.§ !-§.§^!3§(§2h§.§,!P§,§[F§.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§,]§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§4!M§)
         {
            (§[F§.§-4§ as §>!?§).§ +§(§2h§.§,!P§);
         }
      }
   }
}
