package §9T§
{
   import §&U§.b2Contact;
   import §4]§.b2ContactImpulse;
   import §4]§.b2ContactListener;
   import §7$§.b2Manifold;
   
   public class §"a§ extends b2ContactListener
   {
       
      
      public var mWorld:§&,§;
      
      public function §"a§(param1:§&,§)
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
         var _loc2_:Boolean = this.mWorld.§&?§.objects.objectCollision(param1.§?O§().GetBody().GetUserData(),param1.§-K§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§;!K§(false);
         }
      }
   }
}
