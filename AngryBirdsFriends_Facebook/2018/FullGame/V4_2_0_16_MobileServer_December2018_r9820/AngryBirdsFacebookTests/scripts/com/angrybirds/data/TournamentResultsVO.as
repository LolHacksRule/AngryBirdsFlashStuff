package com.angrybirds.data
{
   public class TournamentResultsVO
   {
       
      
      public var user:UserTournamentScoreVO;
      
      public var first:UserTournamentScoreVO;
      
      public var second:UserTournamentScoreVO;
      
      public var third:UserTournamentScoreVO;
      
      public var fourth:UserTournamentScoreVO;
      
      public var bronzeTrophies:int;
      
      public var silverTrophies:int;
      
      public var goldTrophies:int;
      
      public var rewardItemId:String;
      
      public var rewardQuantity:int;
      
      public function TournamentResultsVO()
      {
         super();
      }
   }
}
