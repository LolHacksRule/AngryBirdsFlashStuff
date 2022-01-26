package §_-FQ§
{
   import §_-2V§.b2Contact;
   import §_-qW§.b2ContactImpulse;
   import §_-qW§.b2ContactListener;
   import §_-wZ§.b2Manifold;
   
   public class §_-O6§ extends b2ContactListener
   {
       
      
      public var §_-9K§:§_-v6§;
      
      public function §_-O6§(param1:§_-v6§)
      {
         super();
         this.§_-9K§ = param1;
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
         this.§_-9K§.§_-6q§.mLevelObjects.§_-LT§(param1.§_-5M§(),param1.§_-w4§());
      }
   }
}
