package com.angrybirds.engine
{
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.angrybirds.engine.objects.LevelObjectSensor;
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactImpulse;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class LevelEngineContactListener extends b2ContactListener
   {
       
      
      public var mWorld:LevelEngineBox2D;
      
      public function LevelEngineContactListener(newWorld:LevelEngineBox2D)
      {
         super();
         this.mWorld = newWorld;
      }
      
      override public function PostSolve(c:b2Contact, i:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(contact:b2Contact, oldManifold:b2Manifold) : void
      {
      }
      
      override public function BeginContact(contact:b2Contact) : void
      {
         var objA:LevelObjectBase = contact.GetFixtureA().GetBody().GetUserData() as LevelObjectBase;
         var objB:LevelObjectBase = contact.GetFixtureB().GetBody().GetUserData() as LevelObjectBase;
         var shouldIgnoreCollision:Boolean = this.mWorld.mLevelMain.objects.objectCollision(objA,objB,contact);
         if(shouldIgnoreCollision)
         {
            contact.SetEnabled(false);
         }
      }
      
      override public function EndContact(contact:b2Contact) : void
      {
         var objA:LevelObjectBase = contact.GetFixtureA().GetBody().GetUserData() as LevelObjectBase;
         var objB:LevelObjectBase = contact.GetFixtureB().GetBody().GetUserData() as LevelObjectBase;
         if(!(objB is LevelObjectSensor))
         {
            contact.GetFixtureA().GetBody().SetAwake(true);
         }
         if(!(objA is LevelObjectSensor))
         {
            contact.GetFixtureB().GetBody().SetAwake(true);
         }
         this.mWorld.mLevelMain.objects.objectCollisionEnded(objA,objB);
      }
   }
}
