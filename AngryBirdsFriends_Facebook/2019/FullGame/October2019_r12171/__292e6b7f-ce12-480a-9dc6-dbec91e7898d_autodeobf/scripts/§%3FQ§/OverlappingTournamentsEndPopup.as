package §?Q§
{
   import § "L§.§23§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class OverlappingTournamentsEndPopup extends AbstractPopup
   {
      
      public static const ID:String = "OverlappingTournamentsEndPopup";
      
      private static const §1#m§:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var §"?§:Object;
      
      public function OverlappingTournamentsEndPopup(param1:Object)
      {
         this.§"?§ = param1;
         super(§@#D§.NORMAL,§5R§.DEFAULT,§false§.§4#;§.Views.PopupView_OverlappingTournamentsEnd[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc2_:Object = null;
         var _loc4_:§23§ = null;
         var _loc5_:Date = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super.init();
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"?§)
         {
            if(_loc2_ != null)
            {
               _loc1_++;
               if(_loc1_ >= 3)
               {
                  _loc1_ = 3;
                  break;
               }
            }
         }
         if(_loc1_ == 0)
         {
            return;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§"?§)
         {
            (_loc4_ = §;#'§.getItemByName("Set" + _loc1_ + "_Reward" + _loc3_) as §23§).setVisibility(true);
            (_loc5_ = new Date()).time = _loc2_.start;
            (_loc4_.mClip.getChildByName("StartDayText") as TextField).text = §1#m§[_loc5_.getDay()];
            if(_loc2_.leagueRankChange == undefined)
            {
               (_loc4_.mClip.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
            }
            else
            {
               (_loc4_.mClip.getChildByName("RewardLeaguePointsText") as TextField).text = "" + _loc2_.leagueRankChange;
            }
            _loc6_ = 0;
            if(_loc2_.coinsReward)
            {
               _loc6_ = _loc2_.coinsReward;
            }
            if(_loc2_.leagueRewardsUpdate && _loc2_.leagueRewardsUpdate.items && _loc2_.leagueRewardsUpdate.itemsPrev)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc2_.leagueRewardsUpdate.items.length)
               {
                  if(_loc2_.leagueRewardsUpdate.items[_loc7_].i == "VirtualCurrency")
                  {
                     _loc6_ += _loc2_.leagueRewardsUpdate.items[_loc7_].q - _loc2_.leagueRewardsUpdate.itemsPrev[_loc7_].q;
                  }
                  _loc7_++;
               }
            }
            if(_loc2_.friendRewardsUpdate && _loc2_.friendRewardsUpdate.items && _loc2_.friendRewardsUpdate.itemsPrev)
            {
               _loc6_ += _loc2_.friendRewardsUpdate.items[0].q - _loc2_.friendRewardsUpdate.itemsPrev[0].q;
            }
            (_loc4_.mClip.getChildByName("RewardCoinsText") as TextField).text = "" + _loc6_;
            if(_loc2_.tournamentRank == undefined)
            {
               (_loc4_.mClip.getChildByName("PositionText") as TextField).text = "-";
               (_loc4_.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
            }
            else
            {
               (_loc4_.mClip.getChildByName("PositionText") as TextField).text = "" + _loc2_.tournamentRank;
               if(_loc2_.tournamentRank <= 10)
               {
                  (_loc4_.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(_loc2_.tournamentRank <= 20)
               {
                  (_loc4_.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (_loc4_.mClip.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
            }
            _loc3_++;
            if(_loc3_ >= _loc1_)
            {
               break;
            }
         }
      }
   }
}
