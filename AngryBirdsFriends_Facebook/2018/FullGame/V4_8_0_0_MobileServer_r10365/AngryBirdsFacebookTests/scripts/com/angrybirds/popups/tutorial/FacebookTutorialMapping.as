package com.angrybirds.popups.tutorial
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.popup.tutorial.AbstractTutorialMapping;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   
   public class FacebookTutorialMapping extends AbstractTutorialMapping
   {
      
      public static const ALL:String = "all";
      
      public static const ALL_POWERUPS:String = "all_powerups";
      
      public static const LEVEL_NORMAL_BIRDS:String = "level_normal_birds";
      
      public static const LEVEL_ALL_BIRDS:String = "level_all_birds";
       
      
      public function FacebookTutorialMapping()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(mappingId:String) : Vector.<String>
      {
         var tutorialNames:Vector.<String> = new Vector.<String>(0);
         switch(mappingId)
         {
            case ALL_POWERUPS:
               tutorialNames = this.getPowerUpNames();
               break;
            case LEVEL_NORMAL_BIRDS:
               tutorialNames = this.getBirdNamesInLevel(AngryBirdsEngine.smLevelMain,false);
               break;
            case LEVEL_ALL_BIRDS:
               tutorialNames = this.getBirdNamesInLevel(AngryBirdsEngine.smLevelMain,true);
               break;
            case ALL:
               tutorialNames = tutorialNames.concat(this.getTutorialNamesForMapping(ALL_POWERUPS),this.getTutorialNamesForMapping(LEVEL_ALL_BIRDS));
         }
         return tutorialNames;
      }
      
      protected function getPowerUpNames() : Vector.<String>
      {
         var powerupDefiniton:PowerupDefinition = null;
         var powerupsToShow:Vector.<String> = new Vector.<String>();
         for each(powerupDefiniton in PowerupType.allPowerups)
         {
            powerupsToShow.push(powerupDefiniton.identifier.toUpperCase());
         }
         return powerupsToShow;
      }
      
      protected function getBirdNamesInLevel(levelMain:LevelMain, includeSpecialBirds:Boolean) : Vector.<String>
      {
         var bird:LevelSlingshotObject = null;
         var birdsToShow:Vector.<String> = new Vector.<String>();
         for each(bird in AngryBirdsEngine.smLevelMain.slingshot.mBirds)
         {
            if(!((bird.name == "BIRD_SARDINE" || bird.name == "BIRD_WINGMAN" || bird.name == "POWERUP_BOOMBOX") && !includeSpecialBirds))
            {
               if(birdsToShow.indexOf(bird.name) < 0)
               {
                  birdsToShow.push(bird.name);
               }
            }
         }
         return birdsToShow;
      }
   }
}
