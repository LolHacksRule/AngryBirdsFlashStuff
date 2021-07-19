package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var b2_defaultListener:b2ContactListener = new b2ContactListener();
       
      
      public function b2ContactListener()
      {
         super();
      }
      
      public function BeginContact(contact:b2Contact) : void
      {
      }
      
      public function EndContact(contact:b2Contact) : void
      {
      }
      
      public function PreSolve(contact:b2Contact, oldManifold:b2Manifold) : void
      {
      }
      
      public function PostSolve(contact:b2Contact, impulse:b2ContactImpulse) : void
      {
      }
   }
}
