package §_-Di§
{
   import §_-l7§.b2Contact;
   import §_-mg§.b2Manifold;
   import §_-vk§.b2ContactImpulse;
   import §_-vk§.b2ContactListener;
   
   public class §_-k5§ extends b2ContactListener
   {
       
      
      public var §_-s2§:§_-gf§;
      
      public function §_-k5§(param1:§_-gf§)
      {
         super();
         this.§_-s2§ = param1;
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
         this.§_-s2§.§_-JH§.objects.§_-5-§(param1.§_-bX§().GetBody().GetUserData(),param1.§_-sy§().GetBody().GetUserData());
      }
   }
}
