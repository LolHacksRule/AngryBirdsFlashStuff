package com.AngryBirds.io
{
   public class StatisticsManager
   {
      
      public static const STATS_ENABLED:Boolean = true;
      
      public static var container:Array = null;
       
      
      public function StatisticsManager()
      {
         super();
      }
      
      public static function markEvent(param1:String, param2:String, param3:String = null, param4:Boolean = false) : void
      {
         if(container == null)
         {
            container = new Array();
         }
         var _loc5_:Object = {
            "key":param1,
            "reference":param2
         };
         if(param3)
         {
            _loc5_.data = param3;
         }
         container.push(_loc5_);
         if(param4)
         {
            uploadPendingEvents();
         }
      }
      
      public static function uploadPendingEvents() : void
      {
         if(container == null || container.length == 0)
         {
            return;
         }
         var _loc1_:Array = container;
         container = null;
         var _loc2_:Object = new Object();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_["stat-" + _loc3_] = _loc1_[_loc3_].key + ":" + _loc1_[_loc3_].reference;
            if(_loc1_[_loc3_].data != null)
            {
               _loc2_["stat-" + _loc3_] += ":" + _loc1_[_loc3_].data;
            }
            _loc3_++;
         }
         AngryBirdsServer.updateStats(_loc2_,updateStatsResponse);
      }
      
      public static function updateStatsResponse(param1:Object) : void
      {
      }
   }
}
