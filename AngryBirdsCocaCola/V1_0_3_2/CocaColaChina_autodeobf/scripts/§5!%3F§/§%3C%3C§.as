package §5!?§
{
   import §;!7§.b2Manifold;
   import §=!U§.b2ContactImpulse;
   import §=!U§.b2ContactListener;
   import §@M§.b2Contact;
   
   public class §<<§ extends b2ContactListener
   {
       
      
      public var mWorld:§?k§;
      
      public function §<<§(param1:§?k§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§?!!§(param1.§ !N§().GetBody().GetUserData(),param1.§^9§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§<!Q§(false);
         }
      }
   }
}
