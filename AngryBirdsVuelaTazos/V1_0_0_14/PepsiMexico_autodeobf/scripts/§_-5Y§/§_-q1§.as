package §_-5Y§
{
   import §_-K2§.b2Contact;
   import §_-iw§.b2Manifold;
   import §const§.b2ContactImpulse;
   import §const§.b2ContactListener;
   
   public class §_-q1§ extends b2ContactListener
   {
       
      
      public var §_-YD§:§_-eM§;
      
      public function §_-q1§(param1:§_-eM§)
      {
         super();
         this.§_-YD§ = param1;
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
         this.§_-YD§.§_-Fx§.objects.§_-fB§(param1.§_-IQ§(),param1.§_-6f§());
      }
   }
}
