package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Dynamics.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Collision.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var m_registers:Vector.<Vector.<b2ContactRegister>>;
      
      private var m_allocator;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.m_allocator = param1;
         this.InitializeRegisters();
      }
      
      b2internal function AddType(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.m_registers[param3][param4].createFcn = param1;
         this.m_registers[param3][param4].destroyFcn = param2;
         this.m_registers[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.m_registers[param4][param3].createFcn = param1;
            this.m_registers[param4][param3].destroyFcn = param2;
            this.m_registers[param4][param3].primary = false;
         }
      }
      
      b2internal function InitializeRegisters() : void
      {
         var _loc2_:int = 0;
         this.m_registers = new Vector.<Vector.<b2ContactRegister>>(b2Shape.e_shapeTypeCount);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.e_shapeTypeCount)
         {
            this.m_registers[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.e_shapeTypeCount);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.e_shapeTypeCount)
            {
               this.m_registers[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.AddType(b2CircleContact.Create,b2CircleContact.Destroy,b2Shape.e_circleShape,b2Shape.e_circleShape);
         this.AddType(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_circleShape);
         this.AddType(b2PolygonContact.Create,b2PolygonContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_polygonShape);
         this.AddType(b2EdgeAndCircleContact.Create,b2EdgeAndCircleContact.Destroy,b2Shape.e_edgeShape,b2Shape.e_circleShape);
         this.AddType(b2PolyAndEdgeContact.Create,b2PolyAndEdgeContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_edgeShape);
      }
      
      public function Create(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.GetType();
         var _loc4_:int = param2.GetType();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.m_registers[_loc3_][_loc4_]).pool)
         {
            _loc6_ = _loc5_.pool;
            _loc5_.pool = _loc6_.m_next;
            --_loc5_.poolCount;
            _loc6_.Reset(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.m_allocator)).Reset(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.m_allocator)).Reset(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function Destroy(param1:b2Contact) : void
      {
         if(param1.m_manifold.m_pointCount > 0)
         {
            param1.m_fixtureA.m_body.SetAwake(true);
            param1.m_fixtureB.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.m_fixtureA.GetType();
         var _loc3_:int = param1.m_fixtureB.GetType();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.m_registers[_loc2_][_loc3_]).poolCount;
         param1.m_next = _loc4_.pool;
         _loc4_.pool = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.m_allocator);
      }
   }
}
