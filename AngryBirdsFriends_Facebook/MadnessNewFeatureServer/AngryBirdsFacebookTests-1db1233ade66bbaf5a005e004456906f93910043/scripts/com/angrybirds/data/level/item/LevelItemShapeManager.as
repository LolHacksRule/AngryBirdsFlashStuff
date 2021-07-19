package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.factory.Log;
   import com.rovio.utils.HashMap;
   import flash.geom.Point;
   
   public class LevelItemShapeManager
   {
       
      
      private var mShapes:HashMap;
      
      public function LevelItemShapeManager()
      {
         super();
      }
      
      public function loadShapes(shapes:XMLList) : void
      {
         var shape:XML = null;
         var id:String = null;
         var shapeName:String = null;
         var vertices:Array = null;
         var vertex:XML = null;
         var radius:Number = NaN;
         this.mShapes = new HashMap();
         for each(shape in shapes.Shape)
         {
            if(shape.@shape == "CIRCLE" || shape.@shape == "POLYGON" || shape.@shape == "NONE")
            {
               id = shape.@id;
               shapeName = shape.@shape;
               vertices = new Array();
               for each(vertex in shape.Vertex)
               {
                  vertices.push(new b2Vec2(vertex.@x,vertex.@y));
               }
               if(shapeName == "CIRCLE")
               {
                  radius = parseFloat(shape.Radius[0].@value);
                  this.newShapeCircle(id,shapeName,radius,vertices);
               }
               else
               {
                  this.newShapePolygon(id,shapeName,vertices,shape.@flipAngleCorrection);
               }
            }
            else
            {
               if(shape.attribute("shape").length() <= 0)
               {
                  Log.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + shape.@id);
               }
               if(shape.attribute("width").length() <= 0)
               {
                  Log.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + shape.@id);
               }
               if(shape.attribute("height").length() <= 0)
               {
                  Log.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + shape.@id);
               }
               this.newShape(shape.@id,shape.@shape,shape.@width,shape.@height,shape.@flipAngleCorrection);
            }
         }
      }
      
      public function newShape(id:String, shape:String, width:Number, height:Number, angleCorrection:Number) : void
      {
         this.mShapes[id.toLowerCase()] = new RectangleShapeDefinition(width,height,id);
      }
      
      public function newShapePolygon(id:String, shape:String, vertexList:Array, angleCorrection:Number) : void
      {
         var definition:ShapeDefinition = new PolygonShapeDefinition(Vector.<b2Vec2>(vertexList),id);
         this.mShapes[id.toLowerCase()] = definition;
      }
      
      public function newShapeCircle(id:String, shape:String, radius:Number, vertexList:Array) : void
      {
         var definition:ShapeDefinition = new CircleShapeDefinition(radius,new Point(vertexList[0].x,vertexList[0].y),id);
         this.mShapes[id.toLowerCase()] = definition;
      }
      
      public function getShape(id:String) : ShapeDefinition
      {
         var ret:ShapeDefinition = this.mShapes[id.toLowerCase()];
         if(!ret)
         {
            Log.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + id);
         }
         return ret;
      }
   }
}
