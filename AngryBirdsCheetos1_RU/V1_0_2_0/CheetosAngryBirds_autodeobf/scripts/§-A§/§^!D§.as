package §-A§
{
   import §3Z§.b2Contact;
   import §4!&§.b2ContactImpulse;
   import §4!&§.b2ContactListener;
   import §<!^§.b2Manifold;
   
   public class §^!D§ extends b2ContactListener
   {
       
      
      public var mWorld:§]!D§;
      
      public function §^!D§(param1:§]!D§)
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
         var _loc2_:Boolean = this.mWorld.§return§.objects.objectCollision(param1.§?7§().GetBody().GetUserData(),param1.§]!1§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§ X§(false);
         }
      }
   }
}
