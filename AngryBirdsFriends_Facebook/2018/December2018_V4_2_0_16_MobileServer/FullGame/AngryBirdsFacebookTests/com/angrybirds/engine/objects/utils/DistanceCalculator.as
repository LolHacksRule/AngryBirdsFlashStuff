package com.angrybirds.engine.objects.utils
{
   import flash.geom.Point;
   
   public class DistanceCalculator
   {
       
      
      public function DistanceCalculator()
      {
         super();
      }
      
      public static function getDistanceFromOBBToPoint(objX:Number, objY:Number, objWidth:Number, objHeight:Number, objAngle:Number, pointX:Number, pointY:Number) : ObjectDistanceResults
      {
         var diffX:Number = pointX - objX;
         var diffY:Number = pointY - objY;
         var axisX:Point = new Point(Math.cos(objAngle),Math.sin(objAngle));
         var axisY:Point = new Point(Math.cos(objAngle + Math.PI * 0.5),Math.sin(objAngle + Math.PI * 0.5));
         axisX.normalize(1);
         axisY.normalize(1);
         var closest:Vector.<Number> = new Vector.<Number>(2);
         var extend:Vector.<Number> = new <Number>[objWidth / 2,objHeight / 2];
         var axis:Vector.<Point> = new <Point>[axisX,axisY];
         var delta:Number = 0;
         var sqrDistance:Number = 0;
         for(var i:int = 0; i < 2; i++)
         {
            closest[i] = dotProduct(diffX,diffY,axis[i].x,axis[i].y);
            if(closest[i] < -extend[i])
            {
               delta = closest[i] + extend[i];
               sqrDistance += delta * delta;
               closest[i] = -extend[i];
            }
            else if(closest[i] > extend[i])
            {
               delta = closest[i] - extend[i];
               sqrDistance += delta * delta;
               closest[i] = extend[i];
            }
         }
         var closestPoint:Point = new Point(objX,objY);
         for(i = 0; i < 2; i++)
         {
            closestPoint.x += closest[i] * axis[i].x;
            closestPoint.y += closest[i] * axis[i].y;
         }
         var ret:ObjectDistanceResults = new ObjectDistanceResults();
         ret.distance = Math.sqrt(sqrDistance);
         ret.contact = closestPoint;
         return ret;
      }
      
      public static function dotProduct(x1:Number, y1:Number, x2:Number, y2:Number) : Number
      {
         return x1 * x2 + y1 * y2;
      }
   }
}
