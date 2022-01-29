package com.angrybirds.engine.objects.utils
{
   import flash.geom.Point;
   
   public class ObjectDistanceResults
   {
      
      private static var MAX_POOL_SIZE:uint;
      
      private static var GROWTH_VAL:uint;
      
      private static var counter:uint;
      
      private static var pool:Vector.<ObjectDistanceResults>;
      
      private static var currentObj:ObjectDistanceResults;
       
      
      public var distance:Number;
      
      public var contact:Point;
      
      public function ObjectDistanceResults()
      {
         super();
      }
      
      public static function init(poolSize:uint, growthVal:uint) : void
      {
         var distResult:ObjectDistanceResults = null;
         MAX_POOL_SIZE = poolSize;
         GROWTH_VAL = growthVal;
         counter = poolSize;
         pool = new Vector.<ObjectDistanceResults>(MAX_POOL_SIZE);
         var i:uint = poolSize;
         while(--i > -1)
         {
            distResult = new ObjectDistanceResults();
            distResult.contact = new Point();
            pool[i] = distResult;
         }
      }
      
      public static function getObject() : ObjectDistanceResults
      {
         var distResult:ObjectDistanceResults = null;
         if(counter > 0)
         {
            return currentObj = pool[--counter];
         }
         var i:uint = GROWTH_VAL;
         while(--i > -1)
         {
            distResult = new ObjectDistanceResults();
            distResult.contact = new Point();
            pool.unshift(distResult);
         }
         counter = GROWTH_VAL;
         return getObject();
      }
      
      public static function disposeObj(obj:ObjectDistanceResults) : void
      {
         var _loc2_:* = counter++;
         pool[_loc2_] = obj;
      }
      
      public static function dispose() : void
      {
         var i:int = 0;
         var obj:ObjectDistanceResults = null;
         if(pool)
         {
            for(i = 0; i < pool.length; i++)
            {
               obj = pool[i];
               obj = null;
            }
         }
         pool = null;
         currentObj = null;
      }
   }
}
