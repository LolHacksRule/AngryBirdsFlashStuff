package §_-ez§
{
   import §_-WW§.b2ContactImpulse;
   import §_-WW§.b2ContactListener;
   import §_-cw§.b2Contact;
   import §_-tK§.b2Manifold;
   
   public class §_-2-§ extends b2ContactListener
   {
       
      
      public var §_-vd§:§_-Z2§;
      
      public function §_-2-§(param1:§_-Z2§)
      {
         super();
         this.§_-vd§ = param1;
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
         this.§_-vd§.§_-9N§.mLevelObjects.§_-g9§(param1.§_-8a§(),param1.§_-tA§());
      }
   }
}
