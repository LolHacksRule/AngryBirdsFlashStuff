package §?'§
{
   import §0!2§.b2Manifold;
   import §69§.b2Contact;
   import §?!0§.b2ContactImpulse;
   import §?!0§.b2ContactListener;
   
   public class §1Z§ extends b2ContactListener
   {
       
      
      public var mWorld:§'7§;
      
      public function §1Z§(param1:§'7§)
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
         this.mWorld.§;c§.objects.objectCollision(param1.§"&§().GetBody().GetUserData(),param1.§7!Z§().GetBody().GetUserData());
      }
   }
}
