package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Collision.b2Manifold;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var b2_defaultListener:b2ContactListener = new b2ContactListener();
       
      
      public function b2ContactListener()
      {
         super();
      }
      
      public function BeginContact(param1:b2Contact) : void
      {
      }
      
      public function EndContact(param1:b2Contact) : void
      {
      }
      
      public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
   }
}
