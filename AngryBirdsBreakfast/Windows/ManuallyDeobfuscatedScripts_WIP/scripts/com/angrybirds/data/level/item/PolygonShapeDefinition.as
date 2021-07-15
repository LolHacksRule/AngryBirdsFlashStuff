package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class PolygonShapeDefinition extends ShapeDefinition
   {
       
      
      private var mVertices:Vector.<b2Vec2>;
      
      public function PolygonShapeDefinition(param1:Vector.<b2Vec2>)
      {
         this.mVertices = param1;
         var _loc2_:Array = this.getBoundingBox();
         var _loc3_:b2Vec2 = _loc2_[0] as b2Vec2;
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = _loc2_[1] as b2Vec2).x - _loc3_.x;
         var _loc6_:Number = _loc4_.y - _loc3_.y;
         super(_loc5_,_loc6_);
      }
      
      public function get vertices() : Vector.<b2Vec2>
      {
         return this.mVertices;
      }
      
      public function getBoundingBox() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.mVertices)
         {
            if(_loc5_)
            {
               _loc1_ = _loc3_ = _loc6_.x;
               _loc2_ = _loc4_ = _loc6_.y;
               _loc5_ = false;
            }
            else
            {
               if(_loc6_.x < _loc1_)
               {
                  _loc1_ = _loc6_.x;
               }
               if(_loc6_.x > _loc3_)
               {
                  _loc3_ = _loc6_.x;
               }
               if(_loc6_.y < _loc2_)
               {
                  _loc2_ = _loc6_.y;
               }
               if(_loc6_.y > _loc4_)
               {
                  _loc4_ = _loc6_.y;
               }
            }
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:b2Vec2 = null;
         var _loc2_:b2PolygonShape = new b2PolygonShape();
         _loc2_.SetAsVector(this.mVertices);
         for each(_loc3_ in _loc2_.GetVertices())
         {
            _loc3_.x *= param1;
            _loc3_.y *= param1;
         }
         return _loc2_;
      }
   }
}
