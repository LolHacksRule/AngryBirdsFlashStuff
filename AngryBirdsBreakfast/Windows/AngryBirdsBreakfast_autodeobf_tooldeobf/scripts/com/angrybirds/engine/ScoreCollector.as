package com.angrybirds.engine
{
   public class ScoreCollector
   {
      
      public static const SCORE_TYPE_DAMAGE:String = "damage";
      
      public static const SCORE_TYPE_REMOVED:String = "removed";
      
      public static const SCORE_TYPE_EXTRA_BIRD:String = "extraBird";
      
      private static var sDamageScores:Array;
      
      private static var sRemovedScores:Array;
      
      private static var sExtraBirdScores:Array;
       
      
      public function ScoreCollector()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         sDamageScores = [];
         sRemovedScores = [];
         sExtraBirdScores = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case SCORE_TYPE_DAMAGE:
               sDamageScores.push(param1);
               break;
            case SCORE_TYPE_REMOVED:
               sRemovedScores.push(param1);
               break;
            case SCORE_TYPE_EXTRA_BIRD:
               sExtraBirdScores.push(param1);
         }
      }
      
      public static function getScoreString() : String
      {
         var _loc1_:* = "";
         _loc1_ = sDamageScores.toString();
         if(sRemovedScores.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += sRemovedScores.toString();
         }
         if(sExtraBirdScores.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += sExtraBirdScores.toString();
         }
         return _loc1_;
      }
   }
}
