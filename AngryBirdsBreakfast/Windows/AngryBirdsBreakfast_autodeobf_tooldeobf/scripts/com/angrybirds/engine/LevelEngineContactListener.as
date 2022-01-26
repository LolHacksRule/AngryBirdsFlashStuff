package com.angrybirds.engine
{
   import com.angrybirds.engine.objects.LevelObjectSensor;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactImpulse;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   import com.rovio.Box2D.Collision.b2Manifold;
   
   public class LevelEngineContactListener extends b2ContactListener
   {
       
      
      public var mWorld:LevelEngineBox2D;
      
      public function LevelEngineContactListener(param1:LevelEngineBox2D)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:LevelObjectBase = param1.GetFixtureA().GetBody().GetUserData() as LevelObjectBase;
         var _loc3_:LevelObjectBase = param1.GetFixtureB().GetBody().GetUserData() as LevelObjectBase;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.mLevelMain.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.SetEnabled(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:LevelObjectBase = param1.GetFixtureA().GetBody().GetUserData() as LevelObjectBase;
         var _loc3_:LevelObjectBase = param1.GetFixtureB().GetBody().GetUserData() as LevelObjectBase;
         if(!(_loc3_ is LevelObjectSensor))
         {
            param1.GetFixtureA().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is LevelObjectSensor))
         {
            param1.GetFixtureB().GetBody().SetAwake(true);
         }
         this.mWorld.mLevelMain.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
