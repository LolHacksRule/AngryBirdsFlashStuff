package §_-Kz§
{
   import §_-43§.b2ContactImpulse;
   import §_-43§.b2ContactListener;
   import §_-Jx§.b2Manifold;
   import §_-ZX§.b2Contact;
   
   public class §_-wW§ extends b2ContactListener
   {
       
      
      public var mWorld:§_-Cg§;
      
      public function §_-wW§(param1:§_-Cg§)
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
         this.mWorld.§_-GF§.objects.objectCollision(param1.§_-ml§().GetBody().GetUserData(),param1.§_-s9§().GetBody().GetUserData());
      }
   }
}
