package §8!`§
{
   import §'!#§.b2Contact;
   import §9!$§.b2Manifold;
   import §?0§.b2ContactImpulse;
   import §?0§.b2ContactListener;
   
   public class §17§ extends b2ContactListener
   {
       
      
      public var mWorld:§8s§;
      
      public function §17§(param1:§8s§)
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
         var _loc2_:Boolean = this.mWorld.§'N§.objects.objectCollision(param1.§40§().GetBody().GetUserData(),param1.§2!F§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§3!'§(false);
         }
      }
   }
}
