package com.angrybirds.popups.tutorial
{
   import com.angrybirds.popup.tutorial.AbstractTutorialSolver;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.powerups.PowerupType;
   import flash.display.MovieClip;
   
   public class FacebookTutorialLinkageSolver extends AbstractTutorialSolver
   {
       
      
      public function FacebookTutorialLinkageSolver()
      {
         super();
      }
      
      protected function solveLinkageName(tutorialName:String) : String
      {
         var linkageName:String = "";
         switch(tutorialName)
         {
            case "BIRD_BLACK":
               linkageName = "TUTORIAL_BOMB";
               break;
            case "BIRD_BLUE":
               linkageName = "TUTORIAL_BLUES";
               break;
            case "BIRD_RED":
               linkageName = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               linkageName = "TUTORIAL_MATILDA";
               break;
            case "BIRD_YELLOW":
               linkageName = "TUTORIAL_CHUCK";
               break;
            case "BIRD_GREEN":
               linkageName = "TUTORIAL_HAL";
               break;
            case "BIRD_ORANGE":
               linkageName = "TUTORIAL_ORANGE";
               break;
            case "BIRD_REDBIG":
               linkageName = "TUTORIAL_TERENCE";
               break;
            case PowerupType.sEarthquake.eventName:
               linkageName = "POWERUP_TUTORIAL_BIRDQUAKE";
               break;
            case PowerupType.sBirdFood.eventName:
               linkageName = "POWERUP_TUTORIAL_SUPERSEED";
               break;
            case PowerupType.sExtraSpeed.eventName:
               linkageName = "POWERUP_TUTORIAL_KINGSLING";
               break;
            case PowerupType.sLaserSight.eventName:
               linkageName = "POWERUP_TUTORIAL_SLINGSCOPE";
               break;
            case PowerupType.sBoombox.eventName:
               linkageName = "POWERUP_TUTORIAL_BOOMBOX";
               break;
            case PowerupType.sMushroom.eventName:
               linkageName = "POWERUP_TUTORIAL_MUSHBLOOM";
               break;
            case PowerupType.sTntDrop.eventName:
               linkageName = "POWERUP_TUTORIAL_TNTDROP";
               break;
            case "BIRD_WINGMAN":
            case PowerupType.sExtraBird.eventName:
               linkageName = "POWERUP_TUTORIAL_WINGMAN";
               break;
            case "BIRD_SARDINE":
            case PowerupType.sMightyEagle.eventName:
               linkageName = "POWERUP_TUTORIAL_MIGHTYEAGLE";
               break;
            case "BIRD_PINK":
               linkageName = "TUTORIAL_STELLA";
               break;
            default:
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Tutorial linkage solver error\nTutorial linkage not found with tutorial name: " + tutorialName));
         }
         return linkageName;
      }
      
      override public function solve(targetName:String) : MovieClip
      {
         var tutorialName:String = this.solveLinkageName(targetName);
         return solveTutorialClip(tutorialName);
      }
   }
}
