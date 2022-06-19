package §_-2r§
{
   import §_-yI§.b2Manifold;
   import §try§.b2ContactImpulse;
   import §try§.b2ContactListener;
   import §with§.b2Contact;
   
   public class §_-Of§ extends b2ContactListener
   {
       
      
      public var mWorld:§_-r1§;
      
      public function §_-Of§(param1:§_-r1§)
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
         this.mWorld.§_-5F§.objects.objectCollision(param1.§_-79§().GetBody().GetUserData(),param1.§_-mq§().GetBody().GetUserData());
      }
   }
}
