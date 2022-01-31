package §<!r§
{
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §,!Q§.§8#=§;
   import §2J§.§]#@§;
   import §3+§.§0!S§;
   import §7"G§.§8$?§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §=!P§
   {
      
      public static const §<#'§:String = "NONE";
      
      public static const §[!T§:String = "UPCOMING";
      
      public static const §^![§:String = "JOIN";
      
      public static const §-#G§:String = "PLAY";
      
      public static const § 0§:String = "CLAIM";
      
      public static const § !U§:String = "ENDED";
      
      public static const §;!J§:String = "MISSED";
      
      private static const §+#$§:String = "OT_HEADER";
      
      private static const §]d§:String = "OT_HEADER_DISABLED";
      
      private static const § "V§:String = "OT_HEADER_ICON";
      
      private static const §4"&§:String = "OT_IMAGE";
      
      private static const §#!N§:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var §,!q§:Object;
      
      private var §1!'§:§8#=§;
      
      private var §8#Q§:§'##§;
      
      private var §6!@§:Boolean;
      
      public function §=!P§(param1:§8#=§, param2:Object)
      {
         super();
         this.§1!'§ = param1;
         this.§1!'§.setEnabled(false);
         this.§8#Q§ = §'##§.§`"H§;
         this.§,!q§ = param2;
         this.§1!'§.visible = false;
         if(param2 == null)
         {
            this.§,!q§ = new Object();
            this.§,!q§.state = §<#'§;
            this.§?!9§();
         }
         else
         {
            this.§'$"§();
         }
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      private function §?!9§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§1!'§.visible = true;
         this.§6!@§ = true;
         this.§1!'§.mClip.getChildByName("Current").visible = false;
         this.§1!'§.mClip.getChildByName("Current_join").visible = false;
         this.§1!'§.mClip.getChildByName("Upcoming").visible = false;
         this.§1!'§.mClip.getChildByName("Missed").visible = false;
         this.§1!'§.mClip.getChildByName("Claim").visible = false;
         this.§1!'§.mClip.getChildByName("Ended").visible = false;
         switch(this.§,!q§.state)
         {
            case §<#'§:
               return;
            case §[!T§:
               _loc1_ = this.§1!'§.mClip.getChildByName("Upcoming") as MovieClip;
               _loc1_.visible = true;
               this.§1!'§.setEnabled(false);
               break;
            case §^![§:
               _loc1_ = this.§1!'§.mClip.getChildByName("Current_join") as MovieClip;
               this.§1!'§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §-#G§:
               _loc1_ = this.§1!'§.mClip.getChildByName("Current") as MovieClip;
               (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§,!q§.tournamentRank;
               if(this.§,!q§.tournamentRank <= 10)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(this.§,!q§.tournamentRank <= 20)
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               this.§1!'§.setEnabled(true);
               _loc1_.visible = true;
               break;
            case §;!J§:
               _loc1_ = this.§1!'§.mClip.getChildByName("Missed") as MovieClip;
               this.§1!'§.setEnabled(false);
               _loc1_.visible = true;
               break;
            case § !U§:
            case § 0§:
               if(this.§,!q§.state == § !U§)
               {
                  _loc1_ = this.§1!'§.mClip.getChildByName("Ended") as MovieClip;
                  this.§1!'§.setEnabled(false);
               }
               else
               {
                  _loc1_ = this.§1!'§.mClip.getChildByName("Claim") as MovieClip;
                  this.§1!'§.setEnabled(true);
               }
               if(this.§,!q§.leagueRankChange)
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "" + this.§,!q§.leagueRankChange;
               }
               else
               {
                  (_loc1_.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
               }
               _loc3_ = 0;
               if(this.§,!q§.coinsReward)
               {
                  _loc3_ = this.§,!q§.coinsReward;
               }
               if(this.§,!q§.leagueRewardsUpdate)
               {
                  _loc3_ = this.§,!q§.leagueRewardsUpdate[0].quantity;
               }
               _loc4_ = 0;
               if(this.§,!q§.friendRewardsUpdate)
               {
                  _loc4_ = this.§,!q§.friendRewardsUpdate[0].quantity;
               }
               if(_loc3_ > 0)
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "" + _loc3_;
               }
               else
               {
                  (_loc1_.getChildByName("RewardCoinsText") as TextField).text = "-";
               }
               if(this.§,!q§.tournamentRank == undefined)
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "-";
                  (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               else
               {
                  (_loc1_.getChildByName("PositionText") as TextField).text = "" + this.§,!q§.tournamentRank;
                  if(this.§,!q§.tournamentRank <= 10)
                  {
                     (_loc1_.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                  }
                  else if(this.§,!q§.tournamentRank <= 20)
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
         _loc2_.time = this.§,!q§.start;
         (_loc1_.getChildByName("StartDayText") as TextField).text = §#!N§[_loc2_.getDay()];
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         switch(this.§,!q§.state)
         {
            case §<#'§:
               return;
            case §[!T§:
               _loc2_ = this.§8!&§((this.§1!'§.mClip.getChildByName("Upcoming") as MovieClip).getChildByName("UpcomingTimerText") as TextField,this.§,!q§.start);
               _loc3_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc2_ == 0)
               {
                  this.§,!q§.state = §^![§;
                  this.§?!9§();
               }
               break;
            case §^![§:
            case §-#G§:
               this.§8!&§((this.§1!'§.mClip.getChildByName("Current") as MovieClip).getChildByName("DaysLeft") as TextField,this.§,!q§.end);
               _loc2_ = this.§8!&§((this.§1!'§.mClip.getChildByName("Current_join") as MovieClip).getChildByName("DaysLeft") as TextField,this.§,!q§.end);
               if(_loc2_ == 0)
               {
                  §0!S§.§>!Q§();
                  break;
               }
         }
      }
      
      protected function §8!&§(param1:TextField, param2:Number) : int
      {
         var _loc4_:Array = null;
         var _loc3_:int = this.§'"^§(param2);
         if(_loc3_ > 0)
         {
            _loc4_ = §;"x§.§%#T§(_loc3_);
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
      
      private function §'$"§() : void
      {
         var iconPosition:MovieClip = null;
         this.§6!@§ = false;
         if(this.brand == "")
         {
            iconPosition = this.§1!'§.mClip.getChildByName("IconPosition") as MovieClip;
            iconPosition.removeChildren();
            this.§?!9§();
            return;
         }
         var tournamentLoader:§8$?§ = new §8$?§();
         tournamentLoader.addEventListener(§]#@§.§["X§,function assetLoaded(param1:§]#@§):void
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
               _loc7_ = §1!'§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §6$A§.§1!m§(§+#$§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§+#$§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            _loc2_ = ["Upcoming","Missed","Ended"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §1!'§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §6$A§.§1!m§(§]d§ + _loc3_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§]d§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            (_loc5_ = §1!'§.mClip.getChildByName("IconPosition") as MovieClip).removeChildren();
            _loc6_ = §,!q§.id % 3;
            if(_loc8_ = §6$A§.§1!m§(§ "V§ + _loc3_ + "_" + _loc6_,false,false))
            {
               _loc5_.addChild(new _loc8_());
            }
            _loc2_ = ["Current_join","Upcoming"];
            for each(_loc4_ in _loc2_)
            {
               _loc7_ = §1!'§.mClip.getChildByName(_loc4_) as MovieClip;
               if(_loc8_ = §6$A§.§1!m§(§4"&§ + _loc3_ + "_" + _loc6_,false,false))
               {
                  (_loc9_ = _loc7_.getChildByName(§4"&§) as MovieClip).removeChildren();
                  _loc9_.addChild(new _loc8_());
               }
            }
            §?!9§();
         });
         tournamentLoader.§&!K§(this.brand,null,null);
      }
      
      private function §'"^§(param1:Number) : int
      {
         var _loc2_:int = (param1 - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function get tournamentId() : int
      {
         return !!this.§,!q§ ? int(this.§,!q§.id) : 0;
      }
      
      public function get buttonName() : String
      {
         return this.§1!'§.name;
      }
      
      public function §;#i§() : Boolean
      {
         if(this.§,!q§.state == § 0§ && this.§,!q§.rewardClaimed == 0)
         {
            return true;
         }
         return false;
      }
      
      public function get brand() : String
      {
         if(this.§,!q§.brand)
         {
            return this.§,!q§.brand.toUpperCase();
         }
         return "";
      }
      
      public function §4#]§() : Boolean
      {
         return this.§6!@§;
      }
   }
}
