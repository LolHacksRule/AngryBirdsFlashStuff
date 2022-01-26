package §_-0y§
{
   import §_-DM§.b2Contact;
   import §_-Et§.b2Manifold;
   import §_-rg§.b2ContactImpulse;
   import §_-rg§.b2ContactListener;
   
   public class §_-LW§ extends b2ContactListener
   {
       
      
      public var §_-Gt§:§_-RD§;
      
      public function §_-LW§(param1:§_-RD§)
      {
         super();
         this.§_-Gt§ = param1;
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
         this.§_-Gt§.§_-Ia§.mLevelObjects.§_-fP§(param1.§_-cW§(),param1.§_-q-§());
      }
   }
}
