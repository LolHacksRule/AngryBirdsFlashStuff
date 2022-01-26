package §%b§
{
   import §3!O§.b2Contact;
   import §?§.b2Manifold;
   import §[W§.b2ContactImpulse;
   import §[W§.b2ContactListener;
   
   public class §`5§ extends b2ContactListener
   {
       
      
      public var mWorld:§-o§;
      
      public function §`5§(param1:§-o§)
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
         var _loc2_:Boolean = this.mWorld.§]!8§.objects.objectCollision(param1.§6!?§().GetBody().GetUserData(),param1.§4v§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§[!;§(false);
         }
      }
   }
}
