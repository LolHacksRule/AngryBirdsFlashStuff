package §>Y§
{
   import §"^§.§9=§;
   import §&[§.§<c§;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.events.Event;
   
   public class §`$§ extends §!!1§
   {
       
      
      private var §^2§:int = 0;
      
      private var §#u§:§6q§ = null;
      
      private var §5!?§:Boolean = false;
      
      private var §[u§:Number = 0;
      
      public function §`$§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§^2§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         this.§[u§ = (§3g§.getItemByName("MovieClip_Achievement") as §"x§).mClip.y;
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         this.§5!?§ = false;
         §<c§.§ set§.addEventListener(§<c§.SERVER_CALL_COMPLETE,this.§?o§);
         this.§^2§ = AngryBirdsFP11.§3!?§.§@%§(§-k§.§%D§);
         super.activate();
         §9=§.§<!@§.background.§[U§();
         var _loc1_:§#!K§ = §-k§.§>!5§(§-k§.§%D§);
         if(_loc1_)
         {
            _loc3_ = _loc1_.§%!P§();
            if(§9=§.§<!@§.slingshot)
            {
               _loc3_ += §9=§.§<!@§.slingshot.§>h§();
            }
            this.§^2§ = Math.min(this.§^2§,_loc3_);
         }
         var _loc2_:int = int(§-k§.§%D§.split("-")[1]) - 1;
         if(§#'§.§2q§(_loc2_))
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §3g§.getItemByName("Button_NextLevel").setVisibility(true);
         }
         if(this.§^2§ > 0)
         {
            §3g§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §3g§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §3g§.setText(this.§^2§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §3g§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §3g§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
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
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §^!$§.§"!9§.Views.View_LevelEndEmbedRio[0];
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
         if(§1]§)
         {
            §#'§.§,B§(§#'§.§!!H§ + §-k§.§%D§,param1,true);
            AngryBirdsFP11.§3!?§.§2!F§(§-k§.§%D§,param1);
            _loc3_ = AngryBirdsFP11.§3!?§.§09§(§-k§.§%D§,param1);
            §#'§.§,B§(§#'§.§7!<§ + §-k§.§%D§,_loc3_,true);
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
      
      override protected function onBadgeLanded() : void
      {
         if(§1]§)
         {
            §25§.playSound("Hiscore_Badge",§-r§);
            §3g§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §3g§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §3g§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
            §2;§();
         }
         var _loc1_:int = AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§);
         var _loc2_:int = AngryBirdsFP11.§3!?§.§09§(§-k§.§%D§,§9=§.controller.getScore());
         if(_loc1_ == 100 && _loc2_ == 3)
         {
            this.§#&§();
         }
      }
      
      override protected function shakingOver() : void
      {
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
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         if(§1]§)
         {
            (§9=§.§'S§ as §#'§).§86§(§-k§.§%D§);
         }
      }
   }
}
