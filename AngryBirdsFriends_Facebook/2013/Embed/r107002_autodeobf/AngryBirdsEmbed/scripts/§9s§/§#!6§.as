package §9s§
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactImpulse;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class §#!6§ extends b2ContactListener
   {
       
      
      public var mWorld:§=i§;
      
      public function §#!6§(param1:§=i§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§4!I§.objects.§,m§(param1.GetFixtureA().GetBody().GetUserData(),param1.GetFixtureB().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§4!I§.objects.objectCollision(param1.GetFixtureA().GetBody().GetUserData(),param1.GetFixtureB().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.SetEnabled(false);
         }
      }
   }
}
