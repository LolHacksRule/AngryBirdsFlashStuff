package §0!j§
{
   import §!!o§.b2Manifold;
   import §!r§.b2internal;
   import §'!^§.b2Contact;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §^&§:b2ContactListener = new b2ContactListener();
       
      
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
