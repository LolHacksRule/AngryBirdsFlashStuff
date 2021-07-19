package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var m_registers:Vector.<Vector.<b2ContactRegister>>;
      
      private var m_allocator;
      
      public function b2ContactFactory(allocator:*)
      {
         super();
         this.m_allocator = allocator;
         this.InitializeRegisters();
      }
      
      b2internal function AddType(createFcn:Function, destroyFcn:Function, type1:int, type2:int) : void
      {
         this.m_registers[type1][type2].createFcn = createFcn;
         this.m_registers[type1][type2].destroyFcn = destroyFcn;
         this.m_registers[type1][type2].primary = true;
         if(type1 != type2)
         {
            this.m_registers[type2][type1].createFcn = createFcn;
            this.m_registers[type2][type1].destroyFcn = destroyFcn;
            this.m_registers[type2][type1].primary = false;
         }
      }
      
      b2internal function InitializeRegisters() : void
      {
         var j:int = 0;
         this.m_registers = new Vector.<Vector.<b2ContactRegister>>(b2Shape.e_shapeTypeCount);
         for(var i:int = 0; i < b2Shape.e_shapeTypeCount; i++)
         {
            this.m_registers[i] = new Vector.<b2ContactRegister>(b2Shape.e_shapeTypeCount);
            for(j = 0; j < b2Shape.e_shapeTypeCount; j++)
            {
               this.m_registers[i][j] = new b2ContactRegister();
            }
         }
         this.AddType(b2CircleContact.Create,b2CircleContact.Destroy,b2Shape.e_circleShape,b2Shape.e_circleShape);
         this.AddType(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_circleShape);
         this.AddType(b2PolygonContact.Create,b2PolygonContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_polygonShape);
         this.AddType(b2EdgeAndCircleContact.Create,b2EdgeAndCircleContact.Destroy,b2Shape.e_edgeShape,b2Shape.e_circleShape);
         this.AddType(b2PolyAndEdgeContact.Create,b2PolyAndEdgeContact.Destroy,b2Shape.e_polygonShape,b2Shape.e_edgeShape);
      }
      
      public function Create(fixtureA:b2Fixture, fixtureB:b2Fixture) : b2Contact
      {
         var c:b2Contact = null;
         var type1:int = fixtureA.GetType();
         var type2:int = fixtureB.GetType();
         var reg:b2ContactRegister = this.m_registers[type1][type2];
         if(reg.pool)
         {
            c = reg.pool;
            reg.pool = c.m_next;
            --reg.poolCount;
            if(reg.primary)
            {
               c.Reset(fixtureA,fixtureB);
            }
            else
            {
               c.Reset(fixtureB,fixtureA);
            }
            return c;
         }
         var createFcn:Function = reg.createFcn;
         if(createFcn != null)
         {
            if(reg.primary)
            {
               c = createFcn(this.m_allocator);
               c.Reset(fixtureA,fixtureB);
               return c;
            }
            c = createFcn(this.m_allocator);
            c.Reset(fixtureB,fixtureA);
            c.m_reverse = true;
            return c;
         }
         return null;
      }
      
      public function Destroy(contact:b2Contact) : void
      {
         var k:int = 0;
         if(contact.m_manifold.m_pointCount > 0)
         {
            contact.m_fixtureA.m_body.SetAwake(true);
            contact.m_fixtureB.m_body.SetAwake(true);
         }
         var type1:int = contact.m_fixtureA.GetType();
         var type2:int = contact.m_fixtureB.GetType();
         if(contact.m_reverse)
         {
            type1 = contact.m_fixtureB.GetType();
            type2 = contact.m_fixtureA.GetType();
         }
         if(type1 == 0 && type2 == 1)
         {
            k = 1;
         }
         var reg:b2ContactRegister = this.m_registers[type1][type2];
         ++reg.poolCount;
         contact.m_next = reg.pool;
         reg.pool = contact;
         var destroyFcn:Function = reg.destroyFcn;
         destroyFcn(contact,this.m_allocator);
      }
   }
}
