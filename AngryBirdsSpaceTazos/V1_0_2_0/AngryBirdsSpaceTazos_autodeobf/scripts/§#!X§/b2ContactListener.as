package §#!X§
{
   import §3!1§.b2Contact;
   import §3m§.b2Manifold;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §4!h§:b2ContactListener = new b2ContactListener();
       
      
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
