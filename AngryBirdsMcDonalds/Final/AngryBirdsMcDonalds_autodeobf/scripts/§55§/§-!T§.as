package §55§
{
   import §&!P§.b2Manifold;
   import §-0§.b2ContactImpulse;
   import §-0§.b2ContactListener;
   import §4!4§.b2Contact;
   
   public class §-!T§ extends b2ContactListener
   {
       
      
      public var mWorld:§4U§;
      
      public function §-!T§(param1:§4U§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§3X§(param1.§<D§().GetBody().GetUserData(),param1.§5!?§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§#c§(false);
         }
      }
   }
}
