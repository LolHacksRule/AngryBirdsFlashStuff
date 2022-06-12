package §"J§
{
   import §%4§.b2Manifold;
   import §;!e§.b2Contact;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §;!V§:b2ContactListener = new b2ContactListener();
       
      
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
