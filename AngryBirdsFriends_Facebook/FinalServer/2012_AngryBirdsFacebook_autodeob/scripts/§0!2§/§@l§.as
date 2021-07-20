package §0!2§
{
   import § !0§.b2Manifold;
   import §&!Y§.b2ContactImpulse;
   import §&!Y§.b2ContactListener;
   import §4!2§.b2Contact;
   
   public class §@l§ extends b2ContactListener
   {
       
      
      public var mWorld:§+!T§;
      
      public function §@l§(param1:§+!T§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§^!"§.objects.objectCollisionEnded(param1.§-!x§().GetBody().GetUserData(),param1.§6$§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§^!"§.objects.objectCollision(param1.§-!x§().GetBody().GetUserData(),param1.§6$§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§^!a§(false);
         }
      }
   }
}
