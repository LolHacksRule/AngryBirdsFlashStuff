package §9!'§
{
   import §%E§.b2Contact;
   import §+d§.b2ContactImpulse;
   import §+d§.b2ContactListener;
   import §=n§.b2Manifold;
   
   public class §%9§ extends b2ContactListener
   {
       
      
      public var mWorld:§8U§;
      
      public function §%9§(param1:§8U§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§]B§.objects.§#Z§(param1.§5m§().GetBody().GetUserData(),param1.§3t§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§]B§.objects.§>!]§(param1.§5m§().GetBody().GetUserData(),param1.§3t§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§5!?§(false);
         }
      }
   }
}
