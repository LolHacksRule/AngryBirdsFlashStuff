package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var m_vertices:Vector.<b2Vec2>;
      
      public var m_count:int;
      
      public var m_radius:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(shape:b2Shape) : void
      {
         var circle:b2CircleShape = null;
         var polygon:b2PolygonShape = null;
         switch(shape.GetType())
         {
            case b2Shape.e_circleShape:
               circle = shape as b2CircleShape;
               this.m_vertices = new Vector.<b2Vec2>(1,true);
               this.m_vertices[0] = circle.m_p;
               this.m_count = 1;
               this.m_radius = circle.m_radius;
               break;
            case b2Shape.e_polygonShape:
               polygon = shape as b2PolygonShape;
               this.m_vertices = polygon.m_vertices;
               this.m_count = polygon.m_vertexCount;
               this.m_radius = polygon.m_radius;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function GetSupport(d:b2Vec2) : Number
      {
         var value:Number = NaN;
         var bestIndex:int = 0;
         var bestValue:Number = this.m_vertices[0].x * d.x + this.m_vertices[0].y * d.y;
         for(var i:int = 1; i < this.m_count; i++)
         {
            value = this.m_vertices[i].x * d.x + this.m_vertices[i].y * d.y;
            if(value > bestValue)
            {
               bestIndex = i;
               bestValue = value;
            }
         }
         return bestIndex;
      }
      
      public function GetSupportVertex(d:b2Vec2) : b2Vec2
      {
         var value:Number = NaN;
         var bestIndex:int = 0;
         var bestValue:Number = this.m_vertices[0].x * d.x + this.m_vertices[0].y * d.y;
         for(var i:int = 1; i < this.m_count; i++)
         {
            value = this.m_vertices[i].x * d.x + this.m_vertices[i].y * d.y;
            if(value > bestValue)
            {
               bestIndex = i;
               bestValue = value;
            }
         }
         return this.m_vertices[bestIndex];
      }
      
      public function GetVertexCount() : int
      {
         return this.m_count;
      }
      
      public function GetVertex(index:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= index && index < this.m_count);
         return this.m_vertices[index];
      }
   }
}
