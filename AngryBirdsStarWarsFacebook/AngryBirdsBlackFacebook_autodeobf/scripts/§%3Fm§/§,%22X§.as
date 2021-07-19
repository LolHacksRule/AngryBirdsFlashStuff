package §?m§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   import §2"Y§.§"#`§;
   import §2"a§.§9#L§;
   
   public class §,"X§ extends §+"2§
   {
       
      
      protected var §?k§:§,#_§;
      
      public function §,"X§()
      {
         super();
         this.§?k§ = new §,#_§();
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §3![§
      {
         var _loc2_:§"#G§ = §"#G§(super.createEpisodeModelFromData(param1));
         if(param1.lockedLevelCount)
         {
            _loc2_.lockedLevelCount = param1.lockedLevelCount;
         }
         return _loc2_;
      }
      
      override protected function getEpisodeModel(param1:Array) : §3![§
      {
         return new §"#G§(param1);
      }
      
      override public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = getNextLevelId();
         var _loc2_:int = getCurrentEpisodeModel().getLevelIndex(currentLevel) + 1;
         var _loc3_:String = getCurrentEpisodeModel().getCutScene(getCurrentEpisodeModel().name + "-" + _loc2_ + "-OUTRO");
         if(!_loc3_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §9#L§.§&"X§(_loc3_);
         }
         return true;
      }
      
      public function getPrettyLevelString(param1:String) : String
      {
         var _loc2_:§3![§ = getEpisodeForLevel(param1);
         return _loc2_.writtenName + " - " + (_loc2_.getLevelIndex(param1) + 1);
      }
      
      override public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(_loc2_)
         {
            return _loc2_.§%!T§;
         }
         throw new Error("No star limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
      }
      
      override public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(_loc2_)
         {
            return _loc2_.§^! §;
         }
         throw new Error("No star limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
      }
      
      protected function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(_loc2_)
         {
            return _loc2_.§&"L§;
         }
         throw new Error("No eagle limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
      }
      
      public function §0w§(param1:String, param2:§"#`§, param3:int) : void
      {
         var _loc6_:* = null;
         var _loc7_:§,#_§ = null;
         var _loc8_:§3![§ = null;
         var _loc9_:String = null;
         var _loc10_:§,#_§ = null;
         var _loc11_:§8!B§ = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc4_:§,#_§ = new §,#_§();
         var _loc5_:Object = §7#&§.§06§(param1);
         for(_loc6_ in _loc5_)
         {
            _loc4_[_loc6_.toLowerCase()] = new §,#_§(_loc5_[_loc6_]);
         }
         _loc7_ = _loc4_["default"];
         for each(_loc8_ in §<!W§)
         {
            for each(_loc9_ in _loc8_.§0!_§())
            {
               _loc10_ = _loc4_[_loc9_] || _loc7_;
               _loc11_ = _loc8_.§8N§(_loc9_);
               _loc12_ = _loc10_.silverScore;
               _loc13_ = _loc10_.goldScore;
               _loc14_ = _loc10_.eagleScore;
               if(_loc11_)
               {
                  _loc11_.scoreSilver = _loc12_;
                  _loc11_.scoreGold = _loc13_;
                  _loc11_.§%#S§(_loc14_,param2,param3);
               }
               this.§?k§[_loc9_] = new §&"U§(_loc12_,_loc13_,_loc14_);
            }
         }
      }
      
      override public function addLevel(param1:String, param2:§8!B§) : void
      {
         var _loc3_:int = this.getSilverScoreForLevel(param1);
         var _loc4_:int = this.getGoldScoreForLevel(param1);
         var _loc5_:int = this.getEagleScoreForLevel(param1);
         if(_loc3_ >= 0 && _loc4_ >= 0 && _loc5_ > 0)
         {
            param2.scoreSilver = _loc3_;
            param2.scoreGold = _loc4_;
            param2.§%#S§(_loc5_,null,0);
         }
         super.addLevel(param1,param2);
      }
   }
}
