package §+!%§
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactImpulse;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class §^w§ extends b2ContactListener
   {
       
      
      public var §6U§:§%E§;
      
      public function §^w§(param1:§%E§)
      {
         super();
         this.§6U§ = param1;
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
         var _loc2_:Boolean = this.§6U§.§]U§.objects.objectCollision(param1.GetFixtureA().GetBody().GetUserData(),param1.GetFixtureB().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.SetEnabled(false);
         }
      }
   }
}
