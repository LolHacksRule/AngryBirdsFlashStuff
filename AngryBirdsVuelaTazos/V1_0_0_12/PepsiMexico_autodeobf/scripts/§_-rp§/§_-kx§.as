package §_-rp§
{
   import §_-EH§.b2ContactImpulse;
   import §_-EH§.b2ContactListener;
   import §_-Nw§.b2Manifold;
   import §_-j6§.b2Contact;
   
   public class §_-kx§ extends b2ContactListener
   {
       
      
      public var §_-VH§:§_-NL§;
      
      public function §_-kx§(param1:§_-NL§)
      {
         super();
         this.§_-VH§ = param1;
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
         this.§_-VH§.§_-fE§.mLevelObjects.§_-l3§(param1.§_-uy§(),param1.§_-WC§());
      }
   }
}
