package §3,§
{
   import § !k§.b2ContactImpulse;
   import § !k§.b2ContactListener;
   import §6!d§.b2Manifold;
   import §]!l§.b2Contact;
   
   public class §%<§ extends b2ContactListener
   {
       
      
      public var mWorld:§^!#§;
      
      public function §%<§(param1:§^!#§)
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
         var _loc2_:Boolean = this.mWorld.§0!J§.objects.§?x§(param1.§9!&§().GetBody().GetUserData(),param1.§2%§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§+p§(false);
         }
      }
   }
}
