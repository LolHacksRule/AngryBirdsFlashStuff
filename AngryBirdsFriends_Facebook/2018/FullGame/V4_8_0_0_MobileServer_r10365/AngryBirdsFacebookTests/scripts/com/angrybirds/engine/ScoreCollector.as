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
      
      public static function addScore(score:int, scoreType:String) : void
      {
         if(score == 0)
         {
            return;
         }
         switch(scoreType)
         {
            case SCORE_TYPE_DAMAGE:
               sDamageScores.push(score);
               break;
            case SCORE_TYPE_REMOVED:
               sRemovedScores.push(score);
               break;
            case SCORE_TYPE_EXTRA_BIRD:
               sExtraBirdScores.push(score);
         }
      }
      
      public static function getScoreString() : String
      {
         var str:* = "";
         str = sDamageScores.toString();
         if(sRemovedScores.length > 0)
         {
            str += ",0,";
            str += sRemovedScores.toString();
         }
         if(sExtraBirdScores.length > 0)
         {
            str += ",0,";
            str += sExtraBirdScores.toString();
         }
         return str;
      }
      
      public static function clearExtraBirdScores() : void
      {
         sExtraBirdScores = [];
      }
   }
}
