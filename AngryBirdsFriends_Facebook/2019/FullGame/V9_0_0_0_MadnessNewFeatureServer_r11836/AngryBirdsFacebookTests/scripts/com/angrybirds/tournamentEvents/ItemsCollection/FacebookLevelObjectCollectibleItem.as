package com.angrybirds.tournamentEvents.ItemsCollection
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.camera.CameraData;
   import com.angrybirds.engine.camera.FacebookLevelCamera;
   import com.angrybirds.engine.objects.GravityFilterCategory;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBlock;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.raycasting.RayCastHitObject;
   import com.angrybirds.engine.raycasting.RayCaster;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectCollectibleItem extends LevelObjectBlock
   {
      
      private static const COLLECTIBLE_ITEM_APPEAR_TIME:int = 1000;
      
      public static const COLLECTIBLE_ITEM_NAME_PREFIX:String = "COLLECTIBLE_ITEM";
      
      public static const DEFAULT_ITEM_NAME:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var mNewPosVec2:b2Vec2;
      
      private var mInitPosX:Number;
      
      private var mInitPosY:Number;
      
      private var mActivated:Boolean;
      
      private var mRayCaster:RayCaster;
      
      public function FacebookLevelObjectCollectibleItem(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.init();
      }
      
      private function init() : void
      {
         var posY:Number = NaN;
         var x:int = 0;
         var posX:Number = NaN;
         var closestDist:Number = NaN;
         this.mActivated = false;
         sprite.visible = false;
         gravityFilter = GravityFilterCategory.IGNOREGRAVITY;
         this.mRayCaster = new RayCaster(mWorld);
         var ccd:CameraData = (AngryBirdsEngine.smLevelMain.camera as FacebookLevelCamera).castleCamera;
         var cx:Number = ccd.x;
         var cy:Number = ccd.y;
         var positions:Array = new Array();
         for(var y:int = 1; y < 8; y++)
         {
            posY = cy + (0.5 - y / 8) * 30;
            for(x = 1; x < 12; x++)
            {
               posX = cx - x / 12 * 40;
               closestDist = this.evalCollectibleItemPos(posX,posY);
               positions.push({
                  "x":posX,
                  "y":posY,
                  "closestDist":closestDist
               });
            }
         }
         positions.sort(this.orderPositions);
         this.mInitPosX = positions[positions.length - 1].x;
         this.mInitPosY = positions[positions.length - 1].y;
         this.mNewPosVec2 = new b2Vec2(this.mInitPosX,this.mInitPosY);
         getBody().SetPosition(this.mNewPosVec2);
      }
      
      private function orderPositions(a:Object, b:Object) : int
      {
         if(a.closestDist > 6 && b.closestDist > 6)
         {
            if(a.x < b.x)
            {
               return -1;
            }
            if(a.x > b.x)
            {
               return 1;
            }
            return 0;
         }
         if(a.closestDist < b.closestDist)
         {
            return -1;
         }
         if(a.closestDist > b.closestDist)
         {
            return 1;
         }
         return 0;
      }
      
      private function evalCollectibleItemPos(posX:Number, posY:Number) : Number
      {
         var angle:Number = NaN;
         var targetX:Number = NaN;
         var targetY:Number = NaN;
         var dist:Number = NaN;
         var hitObject:RayCastHitObject = null;
         var closestDist:Number = 10;
         var rays:Array = new Array();
         for(var i:int = 1; i < 32; i++)
         {
            angle = i / 32 * Math.PI * 2;
            targetX = posX + Math.cos(angle) * 10;
            targetY = posY + Math.sin(angle) * 10;
            this.mRayCaster.rayCast(posX,posY,targetX,targetY);
            if(this.mRayCaster.hitObjectCount > 0)
            {
               hitObject = this.mRayCaster.getHitObject(0);
               rays.push({
                  "x":hitObject.hitPoint.x,
                  "y":hitObject.hitPoint.y
               });
            }
            else
            {
               rays.push({
                  "x":targetX,
                  "y":targetY
               });
            }
            dist = Math.sqrt((rays[i - 1].x - posX) * (rays[i - 1].x - posX) + (rays[i - 1].y - posY) * (rays[i - 1].y - posY));
            if(dist < closestDist)
            {
               closestDist = dist;
            }
         }
         return closestDist;
      }
      
      private function activate() : void
      {
         this.mActivated = true;
         sprite.visible = true;
         var filterData:b2FilterData = new b2FilterData();
         filterData.maskBits = 65535;
         setFilterData(filterData);
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
         playLaunchSound();
      }
      
      public function collect() : void
      {
         var itemsCollectionEventManager:ItemsCollectionManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
         if(itemsCollectionEventManager)
         {
            itemsCollectionEventManager.collectItem(this);
         }
         health = 0;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var fixture:b2Fixture = super.createFixture();
         fixture.SetSensor(true);
         return fixture;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.maskBits = 0;
         return filterData;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         playDestroyedSound();
         AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var offsetX:Number = NaN;
         var offsetY:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mNewPosVec2)
         {
            offsetX = Math.sin(lifeTimeMilliSeconds / 1000 * 1.5) * 0.5;
            offsetY = Math.sin(lifeTimeMilliSeconds / 1000 * 3) * 0.5;
            this.mNewPosVec2.x = this.mInitPosX + offsetX;
            this.mNewPosVec2.y = this.mInitPosY + offsetY;
            getBody().SetPosition(this.mNewPosVec2);
         }
         if(!this.mActivated && lifeTimeMilliSeconds > COLLECTIBLE_ITEM_APPEAR_TIME)
         {
            this.activate();
         }
      }
   }
}
