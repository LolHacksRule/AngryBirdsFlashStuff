package com.angrybirds.popup.tutorial
{
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   
   public class BaseTutorialMapping extends AbstractTutorialMapping
   {
      
      public static const LEVEL_BIRDS:String = "level_birds";
       
      
      public function BaseTutorialMapping()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case LEVEL_BIRDS:
               _loc2_ = this.getBirdNamesInLevel(AngryBirdsEngine.smLevelMain);
         }
         return _loc2_;
      }
      
      protected function getBirdNamesInLevel(param1:LevelMain) : Vector.<String>
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(_loc2_.indexOf(_loc3_.name) < 0)
            {
               _loc2_.push(_loc3_.name);
            }
         }
         return _loc2_;
      }
   }
}
