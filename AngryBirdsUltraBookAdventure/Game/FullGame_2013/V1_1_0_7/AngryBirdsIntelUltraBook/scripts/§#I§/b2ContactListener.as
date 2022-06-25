package §#I§
{
   import §4]§.b2Contact;
   import §>!Z§.b2Manifold;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §8d§:b2ContactListener;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8d§ = new b2ContactListener();
         }
      }
      
      public function b2ContactListener()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
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
