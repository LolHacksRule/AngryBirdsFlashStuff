package com.angrybirds.data.level
{
   import com.rovio.utils.HashMap;
   import com.rovio.utils.LuaUtils;
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   
   public class LevelManagerCustom extends LevelManager
   {
       
      
      public function LevelManagerCustom()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : EpisodeModel
      {
         return new EpisodeModelCustom(param1);
      }
      
      override public function getLevelForId(param1:String) : LevelModel
      {
         var _loc2_:EpisodeModel = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.getLevel(param1);
      }
      
      public function initializeStarLimitsFromLua(param1:String, param2:LevelItemManagerCustom) : void
      {
         var _loc5_:* = null;
         var _loc6_:HashMap = null;
         var _loc7_:EpisodeModel = null;
         var _loc8_:String = null;
         var _loc9_:HashMap = null;
         var _loc10_:HashMap = null;
         var _loc11_:LevelModel = null;
         var _loc3_:HashMap = new HashMap();
         var _loc4_:Object = LuaUtils.luaToObject(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new HashMap(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in mEpisodes)
         {
            for each(_loc8_ in _loc7_.getLevelNames())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.getLevel(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
