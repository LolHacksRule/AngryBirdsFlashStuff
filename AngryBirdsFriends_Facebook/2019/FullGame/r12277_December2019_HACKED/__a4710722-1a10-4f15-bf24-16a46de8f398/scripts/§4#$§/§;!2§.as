package §4#$§
{
   import §!!H§.§ $4§;
   import §0"M§.§>$%§;
   import §<8§.§6!1§;
   import §=!&§.§<$!§;
   import §>#Y§.§,#b§;
   import §[#v§.§7"Z§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §;!2§
   {
      
      public static const §7!k§:String = "NONE";
      
      public static const §?$A§:String = "UPCOMING";
      
      public static const § u§:String = "JOIN";
      
      public static const §8#r§:String = "PLAY";
      
      public static const §4"I§:String = "CLAIM";
      
      public static const § "J§:String = "ENDED";
      
      public static const §,2§:String = "MISSED";
      
      private static const §8#"§:String = "OT_HEADER";
      
      private static const §-#'§:String = "OT_HEADER_DISABLED";
      
      private static const §5k§:String = "OT_HEADER_ICON";
      
      private static const §5"z§:String = "OT_IMAGE";
      
      private static const §9!f§:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var §^"'§:Object;
      
      private var §36§:§6!1§;
      
      private var §]!a§:§5"L§;
      
      private var §3E§:Boolean;
      
      public function §;!2§(param1:§6!1§, param2:Object)
      {
         super();
         this.§36§ = param1;
         this.§36§.setEnabled(false);
         this.§]!a§ = §5"L§.§3"1§;
         this.§^"'§ = param2;
         this.§36§.visible = false;
         if(param2 == null)
         {
            this.§^"'§ = new Object();
            this.§^"'§.state = §7!k§;
            this.§=!t§();
         }
         else
         {
            this.§>!<§();
         }
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      private function §=!t§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc3_:int = 0;
         this.§36§.visible = true;
         this.§3E§ = true;
         this.§36§.mClip.getChildByName("Current").visible = false;
         this.§36§.mClip.getChildByName("Current_join").visible = false;
         this.§36§.mClip.getChildByName("Upcoming").visible = false;
         this.§36§.mClip.getChildByName("Missed").visible = false;
         this.§36§.mClip.getChildByName("Claim").visible = false;
         this.§36§.mClip.getChildByName("Ended").visible = false;
         switch(this.§^"'§.state)
         {
            case §7!k§:
               return;
            case §?$A§:
               _loc1_ = this.§36§.mClip.getChildByName("Upcoming") as MovieClip;
               _loc1_.visible = true;
               this.§36§.setEnabled(false);
               break;
            case § u§:
               _loc1_ = this.§36§.mClip.getChildByName("Current_join") as MovieClip;
               this.§36§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §8#r§:
               _loc1_ = this.§36§.mClip.getChildByName("Current") as MovieClip;
               (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§^"'§.tournamentRank;
               if(this.§^"'§.tournamentRank <= 10)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(this.§^"'§.tournamentRank <= 20)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               this.§36§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §,2§:
               _loc1_ = this.§36§.mClip.getChildByName("Missed") as MovieClip;
               this.§36§.setEnabled(false);
               _loc1_.visible = true;
               break;
            case § "J§:
            case §4"I§:
               if(this.§^"'§.state == § "J§)
               {
                  _loc1_ = this.§36§.mClip.getChildByName("Ended") as MovieClip;
                  this.§36§.setEnabled(false);
               }
               else
               {
                  _loc1_ = this.§36§.mClip.getChildByName("Claim") as MovieClip;
                  this.§36§.setEnabled(true);
               }
               if(this.§^"'§.leagueRankChange)
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "" + this.§^"'§.leagueRankChange;
               }
               else
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
               }
               _loc3_ = 0;
               if(this.§^"'§.coinsReward)
               {
                  _loc3_ = this.§^"'§.coinsReward;
               }
               if(this.§^"'§.leagueRewardsUpdate)
               {
                  _loc3_ = this.§^"'§.leagueRewardsUpdate[0].quantity;
               }
               if(this.§^"'§.friendRewardsUpdate)
               {
                  int(this.§^"'§.friendRewardsUpdate[0].quantity);
               }
               if(_loc3_ > 0)
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "" + _loc3_;
               }
               else
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "-";
               }
               if(this.§^"'§.tournamentRank == undefined)
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "-";
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               else
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§^"'§.tournamentRank;
                  if(this.§^"'§.tournamentRank <= 10)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                  }
                  else if(this.§^"'§.tournamentRank <= 20)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
                  }
                  else
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
                  }
               }
               _loc1_.visible = true;
         }
         var _loc2_:Date = new Date();
         _loc2_.time = this.§^"'§.start;
         (_loc1_.getChildByName("StartDayText") as TextField).text = §9!f§[_loc2_.getDay()];
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         switch(this.§^"'§.state)
         {
            case §7!k§:
               return;
            case §?$A§:
               _loc2_ = this.§-#;§((this.§36§.mClip.getChildByName("Upcoming") as MovieClip).getChildByName("UpcomingTimerText") as TextField,this.§^"'§.start);
               Number(dataModel.serverSynchronizedTime.synchronizedTimeStamp);
               if(_loc2_ == 0)
               {
                  this.§^"'§.state = § u§;
                  this.§=!t§();
                  break;
               }
               break;
            case § u§:
            case §8#r§:
               this.§-#;§((this.§36§.mClip.getChildByName("Current") as MovieClip).getChildByName("DaysLeft") as TextField,this.§^"'§.end);
               _loc2_ = this.§-#;§((this.§36§.mClip.getChildByName("Current_join") as MovieClip).getChildByName("DaysLeft") as TextField,this.§^"'§.end);
               if(_loc2_ == 0)
               {
                  §7"Z§.§,#M§();
                  break;
               }
         }
      }
      
      protected function §-#;§(param1:TextField, param2:Number) : int
      {
         var _loc4_:Array = null;
         var _loc3_:int = this.§@!-§(param2);
         if(_loc3_ > 0)
         {
            _loc4_ = § $4§.§1"n§(_loc3_);
            param1.text = _loc4_[0];
            _loc4_ = null;
         }
         else
         {
            _loc3_ = 0;
            param1.text = "0";
         }
         return _loc3_;
      }
      
      private function §>!<§() : void
      {
         var iconPosition:MovieClip = null;
         this.§3E§ = false;
         if(this.brand == "")
         {
            iconPosition = this.§36§.mClip.getChildByName("IconPosition") as MovieClip;
            iconPosition.removeChildren();
            this.§=!t§();
            return;
         }
         var tournamentLoader:§>$%§ = new §>$%§();
         tournamentLoader.addEventListener(§<$!§.§3!=§,function assetLoaded(param1:§<$!§):void
         {
            var _loc4_:String = null;
            var _loc5_:MovieClip = null;
            var _loc6_:int = 0;
            var _loc7_:MovieClip = null;
            var _loc8_:Class = null;
            var _loc9_:MovieClip = null;
            tournamentLoader = null;
            var _loc2_:Array = ["Current","Current_join","Claim"];
            var _loc3_:String = "_" + brand;
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §36§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §=@§.§9!x§(§8#"§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§8#"§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            _loc2_ = ["Upcoming","Missed","Ended"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §36§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §=@§.§9!x§(§-#'§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§-#'§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            (_loc5_ = §36§.mClip.getChildByName("IconPosition") as MovieClip).removeChildren();
            _loc6_ = §^"'§.id % 3;
            if(_loc8_ = §=@§.§9!x§(§5k§ + _loc3_ + "_" + _loc6_,false,false))
            {
               _loc5_.addChild(new _loc8_());
            }
            _loc2_ = ["Current_join","Upcoming"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §36§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §=@§.§9!x§(§5"z§ + _loc3_ + "_" + _loc6_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§5"z§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            §=!t§();
         });
         tournamentLoader.§&"]§(this.brand,null,null);
      }
      
      private function §@!-§(param1:Number) : int
      {
         var _loc2_:int = (param1 - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function get tournamentId() : int
      {
         return !!this.§^"'§ ? int(this.§^"'§.id) : 0;
      }
      
      public function get buttonName() : String
      {
         return this.§36§.name;
      }
      
      public function §0"%§() : Boolean
      {
         if(this.§^"'§.state == §4"I§ && this.§^"'§.rewardClaimed == 0)
         {
            return true;
         }
         return false;
      }
      
      public function get brand() : String
      {
         if(this.§^"'§.brand)
         {
            return this.§^"'§.brand.toUpperCase();
         }
         return "";
      }
      
      public function §?$>§() : Boolean
      {
         return this.§3E§;
      }
   }
}
