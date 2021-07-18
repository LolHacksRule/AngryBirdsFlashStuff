package com.AngryBirds.LevelPlayer
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class LevelEngineContactListener extends b2ContactListener
   {
       
      
      public var mWorld:LevelEngineBox2D;
      
      public function LevelEngineContactListener(param1:LevelEngineBox2D)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
         var _loc3_:LevelObject = this.mWorld.getObjectFromFixture(param1.GetFixtureA());
         var _loc4_:LevelObject = this.mWorld.getObjectFromFixture(param1.GetFixtureB());
         if(this.mWorld.mLevelMain.mLevelObjects.shouldIgnoreCollision(_loc3_,_loc4_,false))
         {
            param1.SetEnabled(false);
         }
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         this.mWorld.mLevelMain.mLevelObjects.objectCollision(param1.GetFixtureA(),param1.GetFixtureB());
      }
   }
}
