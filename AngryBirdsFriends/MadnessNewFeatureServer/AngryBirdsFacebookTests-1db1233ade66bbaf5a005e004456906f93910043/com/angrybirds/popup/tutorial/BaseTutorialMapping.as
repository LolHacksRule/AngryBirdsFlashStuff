package com.angrybirds.popup.tutorial
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.LevelSlingshotObject;
   
   public class BaseTutorialMapping extends AbstractTutorialMapping
   {
      
      public static const LEVEL_BIRDS:String = "level_birds";
       
      
      public function BaseTutorialMapping()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(mappingId:String) : Vector.<String>
      {
         var tutorialNames:Vector.<String> = new Vector.<String>(0);
         switch(mappingId)
         {
            case LEVEL_BIRDS:
               tutorialNames = this.getBirdNamesInLevel(AngryBirdsEngine.smLevelMain);
         }
         return tutorialNames;
      }
      
      protected function getBirdNamesInLevel(levelMain:LevelMain) : Vector.<String>
      {
         var bird:LevelSlingshotObject = null;
         var birdsToShow:Vector.<String> = new Vector.<String>();
         for each(bird in levelMain.slingshot.mBirds)
         {
            if(birdsToShow.indexOf(bird.name) < 0)
            {
               birdsToShow.push(bird.name);
            }
         }
         return birdsToShow;
      }
   }
}
