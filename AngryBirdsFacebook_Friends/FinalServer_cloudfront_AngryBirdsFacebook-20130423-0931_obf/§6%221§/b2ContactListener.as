package §6"1§
{
   import §'"-§.b2Manifold;
   import §'"6§.b2Contact;
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var §%!Z§:b2ContactListener;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Z§ = new b2ContactListener();
         }
      }
      
      public function b2ContactListener()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
