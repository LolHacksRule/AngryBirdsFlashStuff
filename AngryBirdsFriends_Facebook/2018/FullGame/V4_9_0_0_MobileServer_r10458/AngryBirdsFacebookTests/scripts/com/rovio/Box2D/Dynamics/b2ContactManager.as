package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.IBroadPhase;
   import com.rovio.Box2D.Collision.b2ContactPoint;
   import com.rovio.Box2D.Collision.b2DynamicTreeBroadPhase;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.Contacts.b2ContactEdge;
   import com.rovio.Box2D.Dynamics.Contacts.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const s_evalCP:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var m_broadPhase:IBroadPhase;
      
      b2internal var m_contactList:b2Contact;
      
      b2internal var m_contactCount:int;
      
      b2internal var m_contactFilter:b2ContactFilter;
      
      b2internal var m_contactListener:b2ContactListener;
      
      b2internal var m_contactFactory:b2ContactFactory;
      
      b2internal var m_allocator;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.m_contactCount = 0;
         this.m_contactFilter = b2ContactFilter.b2_defaultFilter;
         this.m_contactListener = b2ContactListener.b2_defaultListener;
         this.m_contactFactory = new b2ContactFactory(this.m_allocator);
         this.m_broadPhase = new b2DynamicTreeBroadPhase();
      }
      
      public function AddPair(proxyUserDataA:*, proxyUserDataB:*) : void
      {
         var fA:b2Fixture = null;
         var fB:b2Fixture = null;
         var fixtureA:b2Fixture = proxyUserDataA as b2Fixture;
         var fixtureB:b2Fixture = proxyUserDataB as b2Fixture;
         var bodyA:b2Body = fixtureA.GetBody();
         var bodyB:b2Body = fixtureB.GetBody();
         if(bodyA == bodyB)
         {
            return;
         }
         var edge:b2ContactEdge = bodyB.GetContactList();
         while(edge)
         {
            if(edge.other == bodyA)
            {
               fA = edge.contact.GetFixtureA();
               fB = edge.contact.GetFixtureB();
               if(fA == fixtureA && fB == fixtureB)
               {
                  return;
               }
               if(fA == fixtureB && fB == fixtureA)
               {
                  return;
               }
            }
            edge = edge.next;
         }
         if(bodyB.ShouldCollide(bodyA) == false)
         {
            return;
         }
         if(this.m_contactFilter.ShouldCollide(fixtureA,fixtureB) == false)
         {
            return;
         }
         var c:b2Contact = this.m_contactFactory.Create(fixtureA,fixtureB);
         fixtureA = c.GetFixtureA();
         fixtureB = c.GetFixtureB();
         bodyA = fixtureA.m_body;
         bodyB = fixtureB.m_body;
         c.m_prev = null;
         c.m_next = this.m_world.m_contactList;
         if(this.m_world.m_contactList != null)
         {
            this.m_world.m_contactList.m_prev = c;
         }
         this.m_world.m_contactList = c;
         c.m_nodeA.contact = c;
         c.m_nodeA.other = bodyB;
         c.m_nodeA.prev = null;
         c.m_nodeA.next = bodyA.m_contactList;
         if(bodyA.m_contactList != null)
         {
            bodyA.m_contactList.prev = c.m_nodeA;
         }
         bodyA.m_contactList = c.m_nodeA;
         c.m_nodeB.contact = c;
         c.m_nodeB.other = bodyA;
         c.m_nodeB.prev = null;
         c.m_nodeB.next = bodyB.m_contactList;
         if(bodyB.m_contactList != null)
         {
            bodyB.m_contactList.prev = c.m_nodeB;
         }
         bodyB.m_contactList = c.m_nodeB;
         ++this.m_world.m_contactCount;
      }
      
      public function FindNewContacts() : void
      {
         this.m_broadPhase.UpdatePairs(this.AddPair);
      }
      
      public function Destroy(c:b2Contact) : void
      {
         var fixtureA:b2Fixture = c.GetFixtureA();
         var fixtureB:b2Fixture = c.GetFixtureB();
         var bodyA:b2Body = fixtureA.GetBody();
         var bodyB:b2Body = fixtureB.GetBody();
         if(c.IsTouching())
         {
            this.m_contactListener.EndContact(c);
         }
         if(c.m_prev)
         {
            c.m_prev.m_next = c.m_next;
         }
         if(c.m_next)
         {
            c.m_next.m_prev = c.m_prev;
         }
         if(c == this.m_world.m_contactList)
         {
            this.m_world.m_contactList = c.m_next;
         }
         if(c.m_nodeA.prev)
         {
            c.m_nodeA.prev.next = c.m_nodeA.next;
         }
         if(c.m_nodeA.next)
         {
            c.m_nodeA.next.prev = c.m_nodeA.prev;
         }
         if(c.m_nodeA == bodyA.m_contactList)
         {
            bodyA.m_contactList = c.m_nodeA.next;
         }
         if(c.m_nodeB.prev)
         {
            c.m_nodeB.prev.next = c.m_nodeB.next;
         }
         if(c.m_nodeB.next)
         {
            c.m_nodeB.next.prev = c.m_nodeB.prev;
         }
         if(c.m_nodeB == bodyB.m_contactList)
         {
            bodyB.m_contactList = c.m_nodeB.next;
         }
         this.m_contactFactory.Destroy(c);
         --this.m_contactCount;
      }
      
      public function Collide() : void
      {
         var fixtureA:b2Fixture = null;
         var fixtureB:b2Fixture = null;
         var bodyA:b2Body = null;
         var bodyB:b2Body = null;
         var proxyA:* = undefined;
         var proxyB:* = undefined;
         var overlap:Boolean = false;
         var cNuke:b2Contact = null;
         var c:b2Contact = this.m_world.m_contactList;
         while(c)
         {
            fixtureA = c.GetFixtureA();
            fixtureB = c.GetFixtureB();
            bodyA = fixtureA.GetBody();
            bodyB = fixtureB.GetBody();
            if(bodyA.IsAwake() == false && bodyB.IsAwake() == false)
            {
               c = c.GetNext();
            }
            else
            {
               if(c.m_flags & b2Contact.e_filterFlag || bodyA.m_forceContactFiltering || bodyB.m_forceContactFiltering)
               {
                  if(bodyB.ShouldCollide(bodyA) == false)
                  {
                     cNuke = c;
                     c = cNuke.GetNext();
                     this.Destroy(cNuke);
                     continue;
                  }
                  if(this.m_contactFilter.ShouldCollide(fixtureA,fixtureB) == false)
                  {
                     cNuke = c;
                     c = cNuke.GetNext();
                     this.Destroy(cNuke);
                     continue;
                  }
                  c.m_flags &= ~b2Contact.e_filterFlag;
               }
               proxyA = fixtureA.m_proxy;
               proxyB = fixtureB.m_proxy;
               overlap = this.m_broadPhase.TestOverlap(proxyA,proxyB);
               if(overlap == false)
               {
                  cNuke = c;
                  c = cNuke.GetNext();
                  this.Destroy(cNuke);
               }
               else
               {
                  c.Update(this.m_contactListener);
                  c = c.GetNext();
               }
            }
         }
      }
   }
}
