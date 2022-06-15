package §`,§
{
   import §!!L§.§8"^§;
   import §,#,§.§=#o§;
   import §-$'§.§4$A§;
   import §1#`§.§&#m§;
   import §^"3§.§^"C§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §+!>§
   {
      
      public static const §?!"§:String = "NONE";
      
      public static const §?X§:String = "UPCOMING";
      
      public static const §1!a§:String = "JOIN";
      
      public static const §=3§:String = "PLAY";
      
      public static const §>!o§:String = "CLAIM";
      
      public static const §]D§:String = "ENDED";
      
      public static const §'#5§:String = "MISSED";
      
      private static const §!A§:String = "OT_HEADER";
      
      private static const §?"W§:String = "OT_HEADER_DISABLED";
      
      private static const §-$E§:String = "OT_HEADER_ICON";
      
      private static const §^""§:String = "OT_IMAGE";
      
      private static const §1#m§:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var §@"y§:Object;
      
      private var §=!H§:§^"C§;
      
      private var §<$B§:§7!$§;
      
      private var §@p§:Boolean;
      
      public function §+!>§(param1:§^"C§, param2:Object)
      {
         super();
         this.§=!H§ = param1;
         this.§=!H§.setEnabled(false);
         this.§<$B§ = §7!$§.§+!,§;
         this.§@"y§ = param2;
         this.§=!H§.visible = false;
         if(param2 == null)
         {
            this.§@"y§ = new Object();
            this.§@"y§.state = §?!"§;
            this.§^!a§();
         }
         else
         {
            this.§6#D§();
         }
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      private function §^!a§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§=!H§.visible = true;
         this.§@p§ = true;
         this.§=!H§.mClip.getChildByName("Current").visible = false;
         this.§=!H§.mClip.getChildByName("Current_join").visible = false;
         this.§=!H§.mClip.getChildByName("Upcoming").visible = false;
         this.§=!H§.mClip.getChildByName("Missed").visible = false;
         this.§=!H§.mClip.getChildByName("Claim").visible = false;
         this.§=!H§.mClip.getChildByName("Ended").visible = false;
         switch(this.§@"y§.state)
         {
            case §?!"§:
               return;
            case §?X§:
               _loc1_ = this.§=!H§.mClip.getChildByName("Upcoming") as MovieClip;
               _loc1_.visible = true;
               this.§=!H§.setEnabled(false);
               break;
            case §1!a§:
               _loc1_ = this.§=!H§.mClip.getChildByName("Current_join") as MovieClip;
               this.§=!H§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §=3§:
               _loc1_ = this.§=!H§.mClip.getChildByName("Current") as MovieClip;
               (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§@"y§.tournamentRank;
               if(this.§@"y§.tournamentRank <= 10)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(this.§@"y§.tournamentRank <= 20)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               this.§=!H§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §'#5§:
               _loc1_ = this.§=!H§.mClip.getChildByName("Missed") as MovieClip;
               this.§=!H§.setEnabled(false);
               _loc1_.visible = true;
               break;
            case §]D§:
            case §>!o§:
               if(this.§@"y§.state == §]D§)
               {
                  _loc1_ = this.§=!H§.mClip.getChildByName("Ended") as MovieClip;
                  this.§=!H§.setEnabled(false);
               }
               else
               {
                  _loc1_ = this.§=!H§.mClip.getChildByName("Claim") as MovieClip;
                  this.§=!H§.setEnabled(true);
               }
               if(this.§@"y§.leagueRankChange)
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "" + this.§@"y§.leagueRankChange;
               }
               else
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
               }
               _loc3_ = 0;
               if(this.§@"y§.coinsReward)
               {
                  _loc3_ = this.§@"y§.coinsReward;
               }
               if(this.§@"y§.leagueRewardsUpdate)
               {
                  _loc3_ = this.§@"y§.leagueRewardsUpdate[0].quantity;
               }
               _loc4_ = 0;
               if(this.§@"y§.friendRewardsUpdate)
               {
                  _loc4_ = this.§@"y§.friendRewardsUpdate[0].quantity;
               }
               if(_loc3_ > 0)
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "" + _loc3_;
               }
               else
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "-";
               }
               if(this.§@"y§.tournamentRank == undefined)
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "-";
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               else
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§@"y§.tournamentRank;
                  if(this.§@"y§.tournamentRank <= 10)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                  }
                  else if(this.§@"y§.tournamentRank <= 20)
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
         _loc2_.time = this.§@"y§.start;
         (_loc1_.getChildByName("StartDayText") as TextField).text = §1#m§[_loc2_.getDay()];
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         switch(this.§@"y§.state)
         {
            case §?!"§:
               return;
            case §?X§:
               _loc2_ = this.§9!=§((this.§=!H§.mClip.getChildByName("Upcoming") as MovieClip).getChildByName("UpcomingTimerText") as TextField,this.§@"y§.start);
               _loc3_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc2_ == 0)
               {
                  this.§@"y§.state = §1!a§;
                  this.§^!a§();
               }
               break;
            case §1!a§:
            case §=3§:
               this.§9!=§((this.§=!H§.mClip.getChildByName("Current") as MovieClip).getChildByName("DaysLeft") as TextField,this.§@"y§.end);
               _loc2_ = this.§9!=§((this.§=!H§.mClip.getChildByName("Current_join") as MovieClip).getChildByName("DaysLeft") as TextField,this.§@"y§.end);
               if(_loc2_ == 0)
               {
                  §8"^§.§!#C§();
                  break;
               }
         }
      }
      
      protected function §9!=§(param1:TextField, param2:Number) : int
      {
         var _loc4_:Array = null;
         var _loc3_:int = this.§&"%§(param2);
         if(_loc3_ > 0)
         {
            _loc4_ = §7"U§.§&#M§(_loc3_);
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
      
      private function §6#D§() : void
      {
         var iconPosition:MovieClip = null;
         this.§@p§ = false;
         if(this.brand == "")
         {
            iconPosition = this.§=!H§.mClip.getChildByName("IconPosition") as MovieClip;
            iconPosition.removeChildren();
            this.§^!a§();
            return;
         }
         var tournamentLoader:§4$A§ = new §4$A§();
         tournamentLoader.addEventListener(§&#m§.§]"]§,function assetLoaded(param1:§&#m§):void
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
               _loc7_ = §=!H§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §[a§.§8#k§(§!A§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§!A§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            _loc2_ = ["Upcoming","Missed","Ended"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §=!H§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §[a§.§8#k§(§?"W§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§?"W§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            (_loc5_ = §=!H§.mClip.getChildByName("IconPosition") as MovieClip).removeChildren();
            _loc6_ = §@"y§.id % 3;
            if(_loc8_ = §[a§.§8#k§(§-$E§ + _loc3_ + "_" + _loc6_,false,false))
            {
               _loc5_.addChild(new _loc8_());
            }
            _loc2_ = ["Current_join","Upcoming"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §=!H§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §[a§.§8#k§(§^""§ + _loc3_ + "_" + _loc6_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§^""§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            §^!a§();
         });
         tournamentLoader.§;"z§(this.brand,null,null);
      }
      
      private function §&"%§(param1:Number) : int
      {
         var _loc2_:int = (param1 - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function get tournamentId() : int
      {
         return !!this.§@"y§ ? int(this.§@"y§.id) : 0;
      }
      
      public function get buttonName() : String
      {
         return this.§=!H§.name;
      }
      
      public function §"!n§() : Boolean
      {
         if(this.§@"y§.state == §>!o§ && this.§@"y§.rewardClaimed == 0)
         {
            return true;
         }
         return false;
      }
      
      public function get brand() : String
      {
         if(this.§@"y§.brand)
         {
            return this.§@"y§.brand.toUpperCase();
         }
         return "";
      }
      
      public function §7!?§() : Boolean
      {
         return this.§@p§;
      }
   }
}
