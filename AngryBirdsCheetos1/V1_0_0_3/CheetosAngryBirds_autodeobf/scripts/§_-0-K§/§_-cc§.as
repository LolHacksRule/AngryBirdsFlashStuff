package §_-0-K§
{
   import §_-00B§.b2ContactImpulse;
   import §_-00B§.b2ContactListener;
   import §_-Kz§.b2Manifold;
   import §_-fl§.b2Contact;
   
   public class §_-cc§ extends b2ContactListener
   {
       
      
      public var mWorld:§_-4i§;
      
      public function §_-cc§(param1:§_-4i§)
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
         this.mWorld.§_-mC§.objects.objectCollision(param1.§_-tb§().GetBody().GetUserData(),param1.§_-Ix§().GetBody().GetUserData());
      }
   }
}
