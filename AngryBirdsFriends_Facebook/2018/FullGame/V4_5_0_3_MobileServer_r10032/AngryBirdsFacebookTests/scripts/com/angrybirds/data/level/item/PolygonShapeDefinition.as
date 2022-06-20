package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class PolygonShapeDefinition extends ShapeDefinition
   {
       
      
      private var mVertices:Vector.<b2Vec2>;
      
      public function PolygonShapeDefinition(vertices:Vector.<b2Vec2>, id:String = null)
      {
         this.mVertices = vertices;
         var bounds:Array = this.getBoundingBox();
         var min:b2Vec2 = bounds[0] as b2Vec2;
         var max:b2Vec2 = bounds[1] as b2Vec2;
         var width:Number = max.x - min.x;
         var height:Number = max.y - min.y;
         super(width,height,id);
      }
      
      public function get vertices() : Vector.<b2Vec2>
      {
         return this.mVertices;
      }
      
      public function getBoundingBox() : Array
      {
         var vertex:b2Vec2 = null;
         var minX:Number = 0;
         var minY:Number = 0;
         var maxX:Number = 0;
         var maxY:Number = 0;
         var firstLoop:Boolean = true;
         for each(vertex in this.mVertices)
         {
            if(firstLoop)
            {
               minX = maxX = vertex.x;
               minY = maxY = vertex.y;
               firstLoop = false;
            }
            else
            {
               if(vertex.x < minX)
               {
                  minX = vertex.x;
               }
               if(vertex.x > maxX)
               {
                  maxX = vertex.x;
               }
               if(vertex.y < minY)
               {
                  minY = vertex.y;
               }
               if(vertex.y > maxY)
               {
                  maxY = vertex.y;
               }
            }
         }
         return [new b2Vec2(minX,minY),new b2Vec2(maxX,maxY)];
      }
      
      override public function getB2Shape(scale:Number = 1.0) : b2Shape
      {
         var vertex:b2Vec2 = null;
         var polygon:b2PolygonShape = new b2PolygonShape();
         polygon.SetAsVector(this.mVertices);
         for each(vertex in polygon.GetVertices())
         {
            vertex.x *= scale;
            vertex.y *= scale;
         }
         return polygon;
      }
      
      override public function getDimension() : Number
      {
         return Math.max(getWidth(),getHeight()) * Math.sqrt(2);
      }
   }
}
