package §#V§
{
   import §,G§.b2Contact;
   import §3!m§.b2internal;
   import §8w§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §]X§:b2ContactListener;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]X§ = new b2ContactListener();
         }
      }
      
      public function b2ContactListener()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
