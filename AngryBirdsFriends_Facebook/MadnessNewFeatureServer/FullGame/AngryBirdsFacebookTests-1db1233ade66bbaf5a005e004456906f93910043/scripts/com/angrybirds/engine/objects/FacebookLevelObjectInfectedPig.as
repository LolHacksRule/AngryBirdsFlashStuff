package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.Box2D.Collision.b2Distance;
   import com.rovio.Box2D.Collision.b2DistanceInput;
   import com.rovio.Box2D.Collision.b2DistanceOutput;
   import com.rovio.Box2D.Collision.b2DistanceProxy;
   import com.rovio.Box2D.Collision.b2RayCastInput;
   import com.rovio.Box2D.Collision.b2RayCastOutput;
   import com.rovio.Box2D.Collision.b2SimplexCache;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectInfectedPig extends LevelObjectPig
   {
      
      private static const PIGS_TO_ZOMBIE_PIGS:Object = {
         "PIG_BASIC_SMALL":["HalloweenSmallPiglette"],
         "PIG_BASIC_MEDIUM":["HalloweenMediumPiglette"],
         "PIG_BASIC_BIG":["HalloweenLargePiglette"],
         "PIG_HELMET":["HalloweenHelmetPiglette"],
         "PIG_KING":["HalloweenLargePiglette","HalloweenSmallPiglette","HalloweenMediumPiglette"],
         "PIG_MUSTACHE":["HalloweenLargePiglette"]
      };
       
      
      private var mZombieSpawned:Boolean = false;
      
      public function FacebookLevelObjectInfectedPig(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         if(updateManager)
         {
            this.spawnZombie(updateManager);
         }
      }
      
      private function spawnZombie(updateManager:ILevelObjectUpdateManager) : void
      {
         var zombieName:String = null;
         var spawnObj:Object = null;
         this.mZombieSpawned = true;
         var spawnTheseZombies:Array = PIGS_TO_ZOMBIE_PIGS[itemName];
         for each(zombieName in spawnTheseZombies)
         {
            spawnObj = this.calculateClosestPointAsSpawnPoint();
            spawnObj.itemName = zombieName;
            FacebookLevelObjectManager(updateManager).addZombieSpawnPoint(spawnObj);
         }
      }
      
      private function calculatePointStraightDownAsSpawnPoint() : Object
      {
         var obj:LevelObject = null;
         var fixture:b2Fixture = null;
         var rayOutput:b2RayCastOutput = null;
         var difference:b2Vec2 = new b2Vec2(0,AngryBirdsEngine.getCurrentScreenHeight() * LevelMain.LEVEL_HEIGHT_B2);
         var vec:b2Vec2 = getBody().GetPosition();
         var vec2:b2Vec2 = new b2Vec2(vec.x,vec.y + difference.y);
         var closestFraction:Number = 1;
         var closestNormal:b2Vec2 = new b2Vec2(0,0);
         var rayInput:b2RayCastInput = new b2RayCastInput(vec,vec2);
         for(var i:int = 0; i < AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount(); i++)
         {
            obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
            if(obj && obj != this)
            {
               if((obj.levelItem.materialName == "MATERIAL_GROUND_HILLS" || obj.levelItem.materialName == "MATERIAL_GROUND_SNOW" || obj.levelItem.materialName == "MATERIAL_TEXTURE_HILLS") && obj.levelItem.isColliding)
               {
                  fixture = obj.getBody().GetFixtureList();
                  rayOutput = new b2RayCastOutput();
                  if(fixture.RayCast(rayOutput,rayInput))
                  {
                     if(rayOutput.fraction < closestFraction)
                     {
                        closestFraction = rayOutput.fraction;
                        closestNormal = rayOutput.normal;
                     }
                  }
               }
            }
         }
         var ix:Number = vec.x + closestFraction * difference.x;
         var iy:Number = vec.y + closestFraction * difference.y;
         return {
            "point":new Point(ix,iy),
            "normal":new Point(closestNormal.x,closestNormal.y)
         };
      }
      
      private function calculateClosestPointAsSpawnPoint() : Object
      {
         var closestFixture:b2Fixture = null;
         var closestPoint:b2Vec2 = null;
         var closestDistance:Number = NaN;
         var obj:LevelObject = null;
         var distOut:b2DistanceOutput = null;
         var cache:b2SimplexCache = null;
         var closestFraction:Number = 1;
         var closestNormal:b2Vec2 = new b2Vec2(0,0);
         var input:b2DistanceInput = new b2DistanceInput();
         input.transformB = getBody().GetTransform();
         input.proxyB = new b2DistanceProxy();
         input.proxyB.Set(getBody().GetFixtureList().GetShape());
         input.useRadii = true;
         var minDistance:Number = 0;
         for(var i:int = 0; i < AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount(); i++)
         {
            obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
            if(obj && obj != this)
            {
               if((obj.levelItem.materialName == "MATERIAL_GROUND_HILLS" || obj.levelItem.materialName == "MATERIAL_GROUND_SNOW" || obj.levelItem.materialName == "MATERIAL_TEXTURE_HILLS") && obj.levelItem.isColliding)
               {
                  input.transformA = obj.getBody().GetTransform();
                  input.proxyA = new b2DistanceProxy();
                  input.proxyA.Set(obj.getBody().GetFixtureList().GetShape());
                  distOut = new b2DistanceOutput();
                  cache = new b2SimplexCache();
                  cache.count = 0;
                  b2Distance.Distance(distOut,cache,input);
                  if(!closestPoint || distOut.distance < minDistance)
                  {
                     minDistance = distOut.distance;
                     closestFixture = obj.getBody().GetFixtureList();
                     closestPoint = distOut.pointA;
                     closestDistance = distOut.distance;
                  }
               }
            }
         }
         var vec:b2Vec2 = getBody().GetPosition();
         if(closestDistance == 0)
         {
            closestDistance = 1;
         }
         var dx:Number = (vec.x - closestPoint.x) / closestDistance;
         var dy:Number = (vec.y - closestPoint.y) / closestDistance;
         var vec2:b2Vec2 = new b2Vec2(vec.x - dx * LevelMain.LEVEL_WIDTH_B2,vec.y - dy * LevelMain.LEVEL_WIDTH_B2);
         var rayInput:b2RayCastInput = new b2RayCastInput(vec,vec2);
         var rayOutput:b2RayCastOutput = new b2RayCastOutput();
         if(!closestFixture.RayCast(rayOutput,rayInput))
         {
            return this.calculatePointStraightDownAsSpawnPoint();
         }
         closestFraction = rayOutput.fraction;
         closestNormal = rayOutput.normal;
         var ix:Number = vec.x + closestFraction * (vec2.x - vec.x);
         var iy:Number = vec.y + closestFraction * (vec2.y - vec.y);
         return {
            "point":new Point(ix,iy),
            "normal":new Point(closestNormal.x,closestNormal.y)
         };
      }
   }
}
