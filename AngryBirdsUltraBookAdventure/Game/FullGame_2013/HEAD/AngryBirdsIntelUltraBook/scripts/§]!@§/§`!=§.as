package §]!@§
{
   import §!m§.b2Manifold;
   import §#!0§.b2Contact;
   import §>!L§.b2ContactImpulse;
   import §>!L§.b2ContactListener;
   
   public class §`!=§ extends b2ContactListener
   {
       
      
      public var mWorld:§5L§;
      
      public function §`!=§(param1:§5L§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§`s§.objects.§"!#§(param1.§'$§().GetBody().GetUserData(),param1.§<!2§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§`U§(false);
         }
      }
   }
}
