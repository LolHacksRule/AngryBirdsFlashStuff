package §+"u§
{
   import §!!t§.§9$A§;
   import §4!n§.§#$>§;
   import §8"b§.§&!b§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §2U§
   {
      
      public static const §8#$§:int = 0;
      
      public static const §&!M§:int = 1;
      
      public static const §@";§:int = 2;
      
      public static const §<!v§:int = 3;
      
      private static const §7"u§:String = "DECO_";
      
      private static const §7M§:String = "CURRENT_TOURNAMENT_BUTTON_BG_";
      
      private static const §'!K§:String = "UPCOMING_TOURNAMENT_BUTTON_BG_";
      
      private static const §3!l§:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var §0!+§:int;
      
      private var §>!U§:Object;
      
      private var §>b§:Object;
      
      private var §,"f§:§#$>§;
      
      private var §;"§:§^"C§;
      
      public function §2U§(param1:§#$>§, param2:Object)
      {
         super();
         this.§0!+§ = §8#$§;
         this.§,"f§ = param1;
         this.§,"f§.setEnabled(false);
         this.§;"§ = §^"C§.§?q§;
         this.§>b§ = param2;
         if(param2 == null)
         {
            this.§,"f§.visible = false;
         }
         else
         {
            this.§,"f§.visible = true;
            this.§80§();
         }
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      private function §80§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc4_:int = 0;
         this.§,"f§.mClip.getChildByName("Current").visible = false;
         this.§,"f§.mClip.getChildByName("Current_join").visible = false;
         this.§,"f§.mClip.getChildByName("Upcoming").visible = false;
         this.§,"f§.mClip.getChildByName("Missed").visible = false;
         this.§,"f§.mClip.getChildByName("Claim").visible = false;
         this.§,"f§.mClip.getChildByName("Ended").visible = false;
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         this.§0!+§ = §@";§;
         if(_loc2_ < this.§>b§.start)
         {
            this.§0!+§ = §&!M§;
         }
         else if(_loc2_ >= this.§>b§.end)
         {
            this.§0!+§ = §<!v§;
         }
         switch(this.§0!+§)
         {
            case §&!M§:
               _loc1_ = this.§,"f§.mClip.getChildByName("Upcoming") as MovieClip;
               _loc1_.visible = true;
               this.§,"f§.setEnabled(false);
               break;
            case §@";§:
               if(this.§>b§.tournamentRank)
               {
                  _loc1_ = this.§,"f§.mClip.getChildByName("Current") as MovieClip;
                  (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§>b§.tournamentRank;
                  if(this.§>b§.tournamentRank <= 10)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                  }
                  else if(this.§>b§.tournamentRank <= 20)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
                  }
                  else
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
                  }
               }
               else
               {
                  _loc1_ = this.§,"f§.mClip.getChildByName("Current_join") as MovieClip;
               }
               this.§,"f§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §<!v§:
               if(!this.§>b§.tournamentRank || this.§>b§.tournamentRank == undefined)
               {
                  _loc1_ = this.§,"f§.mClip.getChildByName("Missed") as MovieClip;
                  this.§,"f§.setEnabled(false);
               }
               else if(this.§>b§.rewardClaimed == 0 && this.§>b§.coinsReward == 0 && !this.§>b§.leagueRewardsUpdate && !this.§>b§.friendRewardsUpdate)
               {
                  _loc1_ = this.§,"f§.mClip.getChildByName("Missed") as MovieClip;
                  this.§,"f§.setEnabled(false);
               }
               else
               {
                  if(this.§>b§.rewardClaimed == 1)
                  {
                     _loc1_ = this.§,"f§.mClip.getChildByName("Ended") as MovieClip;
                     this.§,"f§.setEnabled(false);
                  }
                  else
                  {
                     _loc1_ = this.§,"f§.mClip.getChildByName("Claim") as MovieClip;
                     this.§,"f§.setEnabled(true);
                  }
                  if(this.§>b§.leagueRankChange)
                  {
                     (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "" + this.§>b§.leagueRankChange;
                  }
                  else
                  {
                     (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
                  }
                  _loc4_ = 0;
                  if(this.§>b§.coinsReward)
                  {
                     _loc4_ = this.§>b§.coinsReward;
                  }
                  if(this.§>b§.leagueRewardsUpdate)
                  {
                     _loc4_ = this.§>b§.leagueRewardsUpdate[0].quantity;
                  }
                  if(this.§>b§.friendRewardsUpdate)
                  {
                     int(this.§>b§.friendRewardsUpdate[0].quantity);
                  }
                  if(_loc4_ > 0)
                  {
                     (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "" + _loc4_;
                  }
                  else
                  {
                     (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "-";
                  }
                  if(this.§>b§.tournamentRank == undefined)
                  {
                     (_loc1_.getChildByName("PositionText") as TextField).text = "-";
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
                  }
                  else
                  {
                     (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§>b§.tournamentRank;
                     if(this.§>b§.tournamentRank <= 10)
                     {
                        (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                     }
                     else if(this.§>b§.tournamentRank <= 20)
                     {
                        (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
                     }
                     else
                     {
                        (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
                     }
                  }
               }
               _loc1_.visible = true;
         }
         var _loc3_:Date = new Date();
         _loc3_.time = this.§>b§.start;
         (_loc1_.getChildByName("StartDayText") as TextField).text = §3!l§[_loc3_.getDay()];
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         switch(this.§0!+§)
         {
            case §8#$§:
               return;
            case §&!M§:
               _loc2_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc2_ >= this.§>b§.start)
               {
                  this.§80§();
               }
               else
               {
                  this.§3!j§((this.§,"f§.mClip.getChildByName("Upcoming") as MovieClip).getChildByName("UpcomingTimerText") as TextField,this.§>b§.start);
               }
               break;
            case §@";§:
               this.§3!j§((this.§,"f§.mClip.getChildByName("Current") as MovieClip).getChildByName("DaysLeft") as TextField,this.§>b§.end);
               this.§3!j§((this.§,"f§.mClip.getChildByName("Current_join") as MovieClip).getChildByName("DaysLeft") as TextField,this.§>b§.end);
         }
      }
      
      protected function §3!j§(param1:TextField, param2:Number) : void
      {
         var _loc4_:Array = null;
         var _loc3_:int = this.§&"C§(param2);
         if(_loc3_ > 0)
         {
            _loc4_ = §&!b§.§0#$§(_loc3_);
            param1.text = _loc4_[0];
            _loc4_ = null;
         }
         else
         {
            param1.text = "0";
            if(this.§0!+§ == §@";§)
            {
               §9$A§.§`o§();
            }
            this.§80§();
         }
      }
      
      private function §[!Z§() : void
      {
         var _loc3_:MovieClip = null;
         if(!this.§>!U§ || !this.§>!U§.brandedTournament)
         {
            return;
         }
         var _loc1_:MovieClip = this.§,"f§.mClip.getChildByName("Deco") as MovieClip;
         var _loc2_:Class = §2"O§.§`>§(§7"u§ + this.§>!U§.brandedTournament,false,false);
         if(_loc2_)
         {
            _loc1_.removeChildren();
            _loc3_ = new _loc2_();
            _loc1_.addChild(_loc3_);
         }
         if(this.§0!+§ == §@";§)
         {
            _loc1_ = this.§,"f§.mClip.getChildByName("Current_tournament_button_image") as MovieClip;
            if(_loc1_)
            {
               _loc2_ = §2"O§.§`>§(§7M§ + this.§>!U§.brandedTournament,false,false);
               if(_loc2_)
               {
                  _loc1_.removeChildren();
                  _loc3_ = new _loc2_();
                  _loc1_.addChild(_loc3_);
               }
            }
         }
         else if(this.§0!+§ == §&!M§)
         {
            _loc1_ = this.§,"f§.mClip.getChildByName("Upcoming_tournament_button_bg") as MovieClip;
            if(_loc1_)
            {
               _loc2_ = §2"O§.§`>§(§'!K§ + this.§>!U§.brandedTournament,false,false);
               if(_loc2_)
               {
                  _loc1_.removeChildren();
                  _loc3_ = new _loc2_();
                  _loc1_.addChild(_loc3_);
               }
            }
         }
      }
      
      private function §&"C§(param1:Number) : int
      {
         var _loc2_:int = (param1 - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function get tournamentId() : int
      {
         return !!this.§>b§ ? int(this.§>b§.id) : 0;
      }
      
      public function get buttonName() : String
      {
         return this.§,"f§.name;
      }
      
      public function §0!#§() : Boolean
      {
         if(this.§0!+§ == §<!v§ && this.§>b§.rewardClaimed == 0)
         {
            return true;
         }
         return false;
      }
      
      public function §<!-§() : Boolean
      {
         return this.§0!#§() || this.§0!+§ == §@";§ || this.§0!+§ == §&!M§;
      }
   }
}
