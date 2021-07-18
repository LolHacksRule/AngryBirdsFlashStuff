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
      
      public static function markEvent(key:String, ref:String, data:String = null, forceUpload:Boolean = false) : void
      {
         if(container == null)
         {
            container = new Array();
         }
         var obj:Object = {
            "key":key,
            "reference":ref
         };
         if(data)
         {
            obj.data = data;
         }
         container.push(obj);
         if(forceUpload)
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
         var temp:Array = container;
         container = null;
         var data:Object = new Object();
         for(var i:Number = 0; i < temp.length; i++)
         {
            data["stat-" + i] = temp[i].key + ":" + temp[i].reference;
            if(temp[i].data != null)
            {
               data["stat-" + i] += ":" + temp[i].data;
            }
         }
         AngryBirdsServer.updateStats(data,updateStatsResponse);
      }
      
      public static function updateStatsResponse(response:Object) : void
      {
      }
   }
}
