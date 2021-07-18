package com.AngryBirds.LevelPlayer
{
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   
   public class LevelEngineContactListener extends b2ContactListener
   {
       
      
      public var mWorld:LevelEngineBox2D;
      
      public function LevelEngineContactListener(newWorld:LevelEngineBox2D)
      {
         super();
         this.mWorld = newWorld;
      }
      
      override public function PreSolve(contact:b2Contact, oldManifold:b2Manifold) : void
      {
         var obj1:LevelObject = this.mWorld.getObjectFromFixture(contact.GetFixtureA());
         var obj2:LevelObject = this.mWorld.getObjectFromFixture(contact.GetFixtureB());
         if(this.mWorld.mLevelMain.mLevelObjects.shouldIgnoreCollision(obj1,obj2,false))
         {
            contact.SetEnabled(false);
         }
      }
      
      override public function BeginContact(contact:b2Contact) : void
      {
         this.mWorld.mLevelMain.mLevelObjects.objectCollision(contact.GetFixtureA(),contact.GetFixtureB());
      }
   }
}
