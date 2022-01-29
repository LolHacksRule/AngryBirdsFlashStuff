package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.AddFriendsVO;
   import com.angrybirds.data.ChallengeVO;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.InviteVO;
   import com.angrybirds.data.LeagueLevelScoreVO;
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.data.UserTotalScoreVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.rovio.factory.Log;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends ScrollerItemRenderer
   {
      
      public static var sUserId:String;
      
      public static var sPools:Dictionary = new Dictionary();
       
      
      private var mLoader:Loader;
      
      private var mCurrentPlate:BasePlate;
      
      public function FriendItemRenderer()
      {
         super();
      }
      
      private function getPlate(type:Class) : BasePlate
      {
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         var pool:Array = sPools[type];
         if(pool.length == 0)
         {
            return new type();
         }
         return pool.pop();
      }
      
      private function returnPlate(plate:BasePlate) : void
      {
         var type:Class = Object(this.mCurrentPlate).constructor;
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         sPools[type].push(plate);
      }
      
      private function updatePlate() : void
      {
         var targetType:Class = null;
         if(this.friendListItemVO)
         {
            switch(Object(this.friendListItemVO).constructor)
            {
               case UserLevelScoreVO:
                  targetType = LevelScorePlate;
                  break;
               case InviteVO:
                  targetType = InvitePlate;
                  break;
               case UserTotalScoreVO:
                  targetType = OverallScorePlate;
                  break;
               case UserTournamentScoreVO:
                  targetType = TournamentScorePlate;
                  break;
               case ChallengeVO:
                  targetType = TournamentChallengePlate;
                  break;
               case LeagueScoreVO:
                  targetType = LeagueScorePlate;
                  break;
               case LeagueLevelScoreVO:
                  targetType = LeagueLevelScorePlate;
                  break;
               case AddFriendsVO:
                  targetType = FriendPermissionPlate;
            }
         }
         if(!targetType)
         {
            Log.log("WARNING! Unknown score item found!");
            return;
         }
         var currentType:Class = !!this.mCurrentPlate ? Object(this.mCurrentPlate).constructor : null;
         if(targetType != currentType)
         {
            if(this.mCurrentPlate)
            {
               this.returnPlate(removeChild(this.mCurrentPlate) as BasePlate);
            }
            this.mCurrentPlate = addChild(this.getPlate(targetType)) as BasePlate;
         }
         this.mCurrentPlate.data = this.friendListItemVO;
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(value:Object) : void
      {
         super.data = value;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.updatePlate();
         }
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         return data as FriendListItemVO;
      }
      
      public function get currentPlate() : BasePlate
      {
         return this.mCurrentPlate;
      }
   }
}
