package §>!L§
{
   import §!m§.b2Manifold;
   import §#!0§.b2Contact;
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §1K§:b2ContactListener;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1K§ = new b2ContactListener();
         }
      }
      
      public function b2ContactListener()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
