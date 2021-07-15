package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const e_points:int = 1;
      
      public static const e_faceA:int = 2;
      
      public static const e_faceB:int = 4;
       
      
      public var m_proxyA:b2DistanceProxy;
      
      public var m_proxyB:b2DistanceProxy;
      
      public var m_type:int;
      
      public var m_localPoint:b2Vec2;
      
      public var m_axis:b2Vec2;
      
      function b2SeparationFunction()
      {
         this.m_localPoint = new b2Vec2();
         this.m_axis = new b2Vec2();
         super();
      }
      
      public function Initialize(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3701
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         switch(this.m_type)
         {
            case e_points:
               _loc3_ = b2Math.MulTMV(param1.R,this.m_axis);
               _loc4_ = b2Math.MulTMV(param2.R,this.m_axis.GetNegative());
               _loc5_ = this.m_proxyA.GetSupportVertex(_loc3_);
               _loc6_ = this.m_proxyB.GetSupportVertex(_loc4_);
               _loc7_ = b2Math.MulX(param1,_loc5_);
               return Number(((_loc8_ = b2Math.MulX(param2,_loc6_)).x - _loc7_.x) * this.m_axis.x + (_loc8_.y - _loc7_.y) * this.m_axis.y);
            case e_faceA:
               _loc10_ = b2Math.MulMV(param1.R,this.m_axis);
               _loc7_ = b2Math.MulX(param1,this.m_localPoint);
               _loc4_ = b2Math.MulTMV(param2.R,_loc10_.GetNegative());
               _loc6_ = this.m_proxyB.GetSupportVertex(_loc4_);
               return Number(((_loc8_ = b2Math.MulX(param2,_loc6_)).x - _loc7_.x) * _loc10_.x + (_loc8_.y - _loc7_.y) * _loc10_.y);
            case e_faceB:
               _loc10_ = b2Math.MulMV(param2.R,this.m_axis);
               _loc8_ = b2Math.MulX(param2,this.m_localPoint);
               _loc3_ = b2Math.MulTMV(param1.R,_loc10_.GetNegative());
               _loc5_ = this.m_proxyA.GetSupportVertex(_loc3_);
               return Number(((_loc7_ = b2Math.MulX(param1,_loc5_)).x - _loc8_.x) * _loc10_.x + (_loc7_.y - _loc8_.y) * _loc10_.y);
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}
