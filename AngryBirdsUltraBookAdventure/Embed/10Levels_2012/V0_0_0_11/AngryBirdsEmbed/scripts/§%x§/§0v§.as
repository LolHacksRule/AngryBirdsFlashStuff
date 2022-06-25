package §%x§
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactImpulse;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class §0v§ extends b2ContactListener
   {
       
      
      public var §[N§:§2N§;
      
      public function §0v§(param1:§2N§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this.§[N§ = param1;
            }
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§[N§.§7C§.objects.objectCollision(param1.GetFixtureA().GetBody().GetUserData(),param1.GetFixtureB().GetBody().GetUserData()));
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  param1.SetEnabled(false);
               }
            }
         }
      }
   }
}
