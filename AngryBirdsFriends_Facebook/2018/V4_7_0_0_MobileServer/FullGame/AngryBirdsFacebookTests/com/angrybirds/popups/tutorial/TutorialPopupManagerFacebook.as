package com.angrybirds.popups.tutorial
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.user.UserProgress;
   import com.angrybirds.popup.tutorial.ILinkageSolver;
   import com.angrybirds.popup.tutorial.ITutorialMapping;
   import com.angrybirds.popup.tutorial.ITutorialTitleSolver;
   import com.angrybirds.popup.tutorial.TutorialPopupManager;
   import com.angrybirds.powerups.PowerupType;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.IPopupManager;
   import flash.display.MovieClip;
   
   public class TutorialPopupManagerFacebook extends TutorialPopupManager
   {
       
      
      public function TutorialPopupManagerFacebook(popupManager:IPopupManager, dataModel:DataModel, layerIndex:int, linkageSolver:ILinkageSolver = null, tutorialNameMapper:ITutorialMapping = null, titleSolver:ITutorialTitleSolver = null)
      {
         super(popupManager,dataModel,layerIndex,linkageSolver,tutorialNameMapper,titleSolver);
      }
      
      public static function showTutorials(skipChecks:Boolean = false, skipPowerupBirds:Boolean = false) : void
      {
         var i:int = 0;
         var birdSeen:Boolean = false;
         var tutorialManager:TutorialPopupManager = AngryBirdsBase.singleton.tutorialPopupManager;
         var birdTypes:String = !!skipPowerupBirds ? FacebookTutorialMapping.LEVEL_NORMAL_BIRDS : FacebookTutorialMapping.LEVEL_ALL_BIRDS;
         var birdsToShow:Vector.<String> = tutorialManager.tutorialNameMapping.getTutorialNamesForMapping(birdTypes);
         if(!skipChecks)
         {
            for(i = birdsToShow.length - 1; i >= 0; i--)
            {
               birdSeen = userProgress.hasTutorialBeenSeen(birdsToShow[i]);
               if(birdSeen)
               {
                  birdsToShow.splice(i,1);
               }
            }
            if(birdsToShow.length > 0)
            {
               userProgress.saveTutorialSeen(birdsToShow.toString());
            }
         }
         if(birdsToShow.length > 0)
         {
            AngryBirdsBase.singleton.tutorialPopupManager.openMultipleTutorialPopups(birdsToShow,true,true,true,true);
         }
      }
      
      public static function showPowerUpTutorials(powerUpEventName:String, skipChecks:Boolean = false) : Boolean
      {
         var i:int = 0;
         var powerupSeen:Boolean = false;
         var powerUpsToShow:Vector.<String> = new Vector.<String>();
         if(powerUpEventName == "")
         {
            powerUpEventName = "ALL_BASIC";
         }
         switch(powerUpEventName)
         {
            case "ALL_BASIC":
               powerUpsToShow.push(PowerupType.sMightyEagle.eventName);
               powerUpsToShow.push(PowerupType.sEarthquake.eventName);
               powerUpsToShow.push(PowerupType.sBirdFood.eventName);
               powerUpsToShow.push(PowerupType.sExtraSpeed.eventName);
               powerUpsToShow.push(PowerupType.sLaserSight.eventName);
               break;
            case "ALL_EXTRABIRD":
               powerUpsToShow.push(PowerupType.sMightyEagle.eventName);
               powerUpsToShow.push(PowerupType.sEarthquake.eventName);
               powerUpsToShow.push(PowerupType.sBirdFood.eventName);
               powerUpsToShow.push(PowerupType.sExtraSpeed.eventName);
               powerUpsToShow.push(PowerupType.sLaserSight.eventName);
               powerUpsToShow.push(PowerupType.sExtraBird.eventName);
               break;
            case "ALL_TOURNAMENT":
               powerUpsToShow.push(PowerupType.sEarthquake.eventName);
               powerUpsToShow.push(PowerupType.sBirdFood.eventName);
               powerUpsToShow.push(PowerupType.sExtraSpeed.eventName);
               powerUpsToShow.push(PowerupType.sLaserSight.eventName);
               powerUpsToShow.push(PowerupType.sExtraBird.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               powerUpsToShow.push(PowerupType.sMightyEagle.eventName);
               powerUpsToShow.push(PowerupType.sEarthquake.eventName);
               powerUpsToShow.push(PowerupType.sBirdFood.eventName);
               powerUpsToShow.push(PowerupType.sExtraSpeed.eventName);
               powerUpsToShow.push(PowerupType.sLaserSight.eventName);
               powerUpsToShow.push(PowerupType.sExtraBird.eventName);
               powerUpsToShow.push(PowerupType.sTntDrop.eventName);
               break;
            case "ALL_MUSHROOM":
               powerUpsToShow.push(PowerupType.sMightyEagle.eventName);
               powerUpsToShow.push(PowerupType.sEarthquake.eventName);
               powerUpsToShow.push(PowerupType.sBirdFood.eventName);
               powerUpsToShow.push(PowerupType.sExtraSpeed.eventName);
               powerUpsToShow.push(PowerupType.sLaserSight.eventName);
               powerUpsToShow.push(PowerupType.sExtraBird.eventName);
               powerUpsToShow.push(PowerupType.sMushroom.eventName);
               break;
            case PowerupType.sPumpkinDrop.eventName:
               break;
            default:
               powerUpsToShow.push(powerUpEventName);
         }
         if(!skipChecks)
         {
            for(i = powerUpsToShow.length - 1; i >= 0; i--)
            {
               powerupSeen = userProgress.hasTutorialBeenSeen(powerUpsToShow[i]);
               if(powerupSeen)
               {
                  powerUpsToShow.splice(i,1);
               }
            }
            if(powerUpsToShow.length > 0)
            {
               userProgress.saveTutorialSeen(powerUpsToShow.toString());
            }
         }
         if(powerUpsToShow.length > 0)
         {
            AngryBirdsBase.singleton.tutorialPopupManager.openMultipleTutorialPopups(powerUpsToShow,true,true,true,true);
         }
         return powerUpsToShow.length > 0;
      }
      
      public static function closeCurrentTutorial() : void
      {
         AngryBirdsBase.singleton.tutorialPopupManager.closeCurrentTutorial();
      }
      
      protected static function get userProgress() : UserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as UserProgress;
      }
      
      override protected function getTutorialPopup(tutorialClip:MovieClip, name:String, firstRun:Boolean, priority:int) : IPopup
      {
         return new TutorialPopupFacebook(mLayerIndex,priority,tutorialClip,name,titleSolver,firstRun);
      }
   }
}
