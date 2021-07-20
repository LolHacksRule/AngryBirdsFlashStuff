package com.angrybirds.popup.tutorial
{
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   
   public class CustomTutorialMapping extends AbstractTutorialMapping
   {
      
      public static const ALL:String = "all";
      
      public static const ALL_POWERUPS:String = "all_powerups";
      
      public static const LEVEL_BIRDS:String = "level_birds";
       
      
      public function CustomTutorialMapping()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case LEVEL_BIRDS:
               _loc2_ = this.getBirdNamesInLevel(AngryBirdsEngine.mIsRunning);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(ALL_POWERUPS),this.getTutorialNamesForMapping(LEVEL_BIRDS));
         }
         return _loc2_;
      }
      
      protected function getBirdNamesInLevel(param1:LevelMain) : Vector.<String>
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
            {
               _loc2_.push(_loc3_.name.toUpperCase());
            }
         }
         return _loc2_;
      }
   }
}
