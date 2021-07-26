package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemMaterialManager;
   import com.angrybirds.data.level.object.DestroyAttachedJoint;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.utils.ObjectDistanceResults;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.ItemsCollection.FacebookLevelObjectCollectibleItem;
   import com.rovio.Box2D.Collision.b2Distance;
   import com.rovio.Box2D.Collision.b2DistanceInput;
   import com.rovio.Box2D.Collision.b2DistanceOutput;
   import com.rovio.Box2D.Collision.b2DistanceProxy;
   import com.rovio.Box2D.Collision.b2RayCastInput;
   import com.rovio.Box2D.Collision.b2RayCastOutput;
   import com.rovio.Box2D.Collision.b2SimplexCache;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import data.user.FacebookUserProgress;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectManager extends LevelObjectManagerSpace
   {
      
      private static const COLLISION_DAMAGE_DISABLED_MILLISECONDS:int = 150;
      
      private static const MAXIMUM_EGGS_TO_ADD:int = 3;
       
      
      public var mBackSprite:Sprite;
      
      private var mTotalEggsAdded:int = 0;
      
      private var mLevelManager:LevelManager;
      
      private var mPortalTexturesGenerated:Boolean;
      
      protected var mZombiePigsToSpawn:Vector.<Object>;
      
      protected var mMushroomsToSpawn:Vector.<Object>;
      
      protected var mMushroomTimer:Number = 0;
      
      private var mMushroomTimerDelay:Number = 2000;
      
      private var mSoundIsPlaying:Boolean = false;
      
      public function FacebookLevelObjectManager(levelMain:LevelMain, levelManager:LevelManager, levelModel:LevelModel, sprite:Sprite, groundType:String)
      {
         this.mLevelManager = levelManager;
         this.mBackSprite = new Sprite();
         this.mBackSprite.touchable = false;
         this.mPortalTexturesGenerated = false;
         super(levelMain,levelModel,sprite,groundType);
      }
      
      override protected function addObjectFromModel(model:LevelObjectModel, id:int, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, overlay:Boolean = false, inFrontObject:Boolean = false) : LevelObjectBase
      {
         var splitItemName:Array = null;
         var lastPart:String = null;
         var easterEggId:String = null;
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            splitItemName = model.type.split("_");
            lastPart = splitItemName[splitItemName.length - 1];
            easterEggId = "1000-" + lastPart;
            if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
            {
               return null;
            }
         }
         return super.addObjectFromModel(model,id,trail,activeObject,tryToScream,scale,overlay,inFrontObject);
      }
      
      private function getLightTextureName(object:LevelObject) : String
      {
         if(object == null)
         {
            return null;
         }
         if(object is LevelObjectBird)
         {
            return "LIGHT_BIRD";
         }
         return "LIGHT_" + object.itemName;
      }
      
      protected function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsBase.singleton.dataModel);
      }
      
      override public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         this.mBackSprite.x = -sideScroll;
         this.mBackSprite.y = -verticalScroll;
         super.updateScrollAndScale(sideScroll,verticalScroll);
      }
      
      override protected function createObjectInstance(model:LevelObjectModel, sprite:Sprite, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObjectBase
      {
         var levelItem:LevelItem = null;
         levelItem = mLevelMain.levelItemManager.getItem(model.type);
         if(!levelItem)
         {
            levelItem = mLevelMain.levelItemManager.getItem(TemporaryBlock.NAME);
            if(!levelItem)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
            }
            return new TemporaryBlock(sprite,mLevelMain.animationManager.getAnimation(levelItem.itemName),mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         var animation:Animation = mLevelMain.animationManager.getAnimation(levelItem.itemName);
         if(model.type.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new FacebookLevelObjectGoldenEgg(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("SHOT_CANNON") != -1)
         {
            return new FacebookLevelObjectAmmo(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("CANNON") != -1)
         {
            return new FacebookLevelObjectCannon(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_COLLECTIBLE_EGG_") == 0 || model.type.indexOf("MISC_WONDERLAND_EGG_") == 0)
         {
            return new FacebookLevelObjectEasterCollectible(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         if(model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2") == 0 || model.type.indexOf("MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3") == 0)
         {
            return new FacebookLevelObjectXmasTreeAmmo(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new FacebookLevelObjectSnowBall(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOMB") == 0)
         {
            return new LevelObjectBombPowerup(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new FacebookLevelObjectChristmasBird(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("BIRD_WINGMAN") == 0)
         {
            return new FacebookLevelObjectWingman(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new FacebookLevelObjectEasterMushroom(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new FacebookLevelObjectFairyBlock(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("POWERUP_BOOMBOX") == 0)
         {
            return new FacebookLevelObjectBoombox(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("PARACHUTE") == 0)
         {
            return new FacebookLevelObjectParachute(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("_ZOMBIE") != -1)
         {
            return new FacebookLevelObjectZombiePig(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         if(model.type.indexOf("MISC_THEMED_") == 0 || model.type.indexOf("MISC_CHUCK_") == 0)
         {
            try
            {
               return new FacebookLevelObjectBranded(TournamentModel.instance.brandedTournamentAssetId,sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            catch(error:Error)
            {
               levelItem = mLevelMain.levelItemManager.getItem(TemporaryBlock.NAME);
               if(!levelItem)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t find level item \'" + model.type + "\'. No temporary block found."));
               }
               return new TemporaryBlock(sprite,mLevelMain.animationManager.getAnimation(levelItem.itemName),mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
         }
         else
         {
            if(model.type.indexOf("SLING_SHOT_TREE_PART_") == 0 || model.type.indexOf("POWERUP_TREESLING_FAKEBIRD") == 0 || model.type.indexOf("SLINGSCOPE_TREE_PART_6") == 0)
            {
               return new FacebookSlingshotTreepart(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("Portal") == 0)
            {
               return new FacebookLevelObjectPortal(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf(FacebookLevelObjectCollectibleItem.COLLECTIBLE_ITEM_NAME_PREFIX) == 0)
            {
               return new FacebookLevelObjectCollectibleItem(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(model.type.indexOf("BIRD_PINK") == 0)
            {
               return new FacebookLevelObjectPinkBird(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            return super.createObjectInstance(model,sprite,tryToScream,scale);
         }
      }
      
      public function addBombPowerup(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : LevelObjectBombPowerup
      {
         return addObject("POWERUP_BOMB",x,y,rotation,LevelObjectManager.ID_NEXT_FREE,false,false,false,scale) as LevelObjectBombPowerup;
      }
      
      override protected function addObjectPig(model:LevelObjectModel, sprite:Sprite, animation:Animation, levelItem:LevelItem, scale:Number = 1.0) : LevelObjectPig
      {
         return new FacebookLevelObjectPig(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
      }
      
      public function addZombieSpawnPoint(point:Object) : void
      {
         if(!this.mZombiePigsToSpawn)
         {
            this.mZombiePigsToSpawn = new Vector.<Object>();
         }
         this.mZombiePigsToSpawn.push(point);
      }
      
      override protected function getExplosionDamageMultiplier(distance:Number, maximumDistance:Number) : Number
      {
         return getExplosionDamageMultiplierClassic(distance,maximumDistance);
      }
      
      override protected function getExplosionDistanceToObject(explosionX:Number, explosionY:Number, object:LevelObject) : ObjectDistanceResults
      {
         return getExplosionDistanceToObjectClassic(explosionX,explosionY,object);
      }
      
      override protected function applyExplosionDamage(object:LevelObject, damage:Number, addScore:Boolean = false) : void
      {
         var explosionsGivePoints:Boolean = true;
         super.applyExplosionDamage(object,damage,explosionsGivePoints || addScore);
      }
      
      override protected function updateExplosionEffects(explosion:LevelExplosion, x:Number, y:Number, pushRadius:Number) : void
      {
         super.updateExplosionEffectsClassic(explosion,x,y,pushRadius);
      }
      
      override protected function shakeCameraOnExplosion(force:Number) : void
      {
         var limit:Number = 900;
         setCameraShaking(true,0.2,force / limit * 4,force / limit * 400);
      }
      
      override protected function hasMinimumCollisionSpeed(obj1:LevelObjectBase, obj2:LevelObjectBase) : Boolean
      {
         return obj1.lifeTimeMilliSeconds > COLLISION_DAMAGE_DISABLED_MILLISECONDS || obj2.lifeTimeMilliSeconds > COLLISION_DAMAGE_DISABLED_MILLISECONDS || hasMinimumCollisionSpeedClassic(obj1,obj2);
      }
      
      override public function objectCollision(obj1:LevelObjectBase, obj2:LevelObjectBase, contact:b2Contact) : Boolean
      {
         var cannon:FacebookLevelObjectCannon = null;
         var ammo:FacebookLevelObjectAmmo = null;
         if(obj1 is LevelObjectBombPowerup && obj2 is LevelObjectBombPowerup)
         {
            if(!(obj1 as LevelObjectBombPowerup).hasTouchedGround && !(obj2 as LevelObjectBombPowerup).hasTouchedGround)
            {
               return false;
            }
         }
         if(obj1 is FacebookLevelObjectAmmo && obj2 is FacebookLevelObjectCannon || obj2 is FacebookLevelObjectAmmo && obj1 is FacebookLevelObjectCannon)
         {
            cannon = FacebookLevelObjectCannon(obj1 is FacebookLevelObjectCannon ? obj1 : obj2);
            ammo = FacebookLevelObjectAmmo(obj1 is FacebookLevelObjectAmmo ? obj1 : obj2);
            if(ammo.invulnerableToParentCannonTimer > 0 && ammo.parentCannon == cannon)
            {
               return true;
            }
         }
         if(obj1 is FacebookLevelObjectXmasTreeAmmo || obj2 is FacebookLevelObjectXmasTreeAmmo)
         {
            if(obj1 is FacebookLevelObjectXmasTreeAmmo)
            {
               if(obj2 is LevelObjectBird)
               {
                  return true;
               }
               if(obj2 is FacebookLevelObjectXmasTreeAmmo)
               {
                  return true;
               }
               if(obj2.levelItem && obj2.levelItem.itemName == LevelObjectBirdWhite.WHITE_BIRD_EGG_ITEM_ID)
               {
                  return true;
               }
            }
            else if(obj2 is FacebookLevelObjectXmasTreeAmmo)
            {
               if(obj1 is LevelObjectBird)
               {
                  return true;
               }
               if(obj1.levelItem && obj1.levelItem.itemName == LevelObjectBirdWhite.WHITE_BIRD_EGG_ITEM_ID)
               {
                  return true;
               }
            }
         }
         if(obj1 is FacebookLevelObjectPortal)
         {
            if((obj1 as FacebookLevelObjectPortal).sensorContactStart(obj2))
            {
               return true;
            }
         }
         if(obj2 is FacebookLevelObjectPortal)
         {
            if((obj2 as FacebookLevelObjectPortal).sensorContactStart(obj1))
            {
               return true;
            }
         }
         if(obj1 is FacebookLevelObjectCollectibleItem)
         {
            (obj1 as FacebookLevelObjectCollectibleItem).collect();
            return true;
         }
         if(obj2 is FacebookLevelObjectCollectibleItem)
         {
            (obj2 as FacebookLevelObjectCollectibleItem).collect();
            return true;
         }
         if(obj1.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || obj2.levelItem.itemName == "MISC_RUBBER_TRAMPOLINE" || obj1.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE" || obj2.levelItem.itemName == "MISC_FB_RUBBER_TRAMPOLINE")
         {
            if(AngryBirdsEngine.smLevelMain.mLevelTimeMilliSeconds < 2000)
            {
               return true;
            }
            SoundEngine.playSound("trampoline","ChannelMisc");
         }
         return super.objectCollision(obj1,obj2,contact);
      }
      
      override public function objectCollisionEnded(obj1:LevelObjectBase, obj2:LevelObjectBase) : void
      {
         super.objectCollisionEnded(obj1,obj2);
         if(obj1 is FacebookLevelObjectPortal)
         {
            (obj1 as FacebookLevelObjectPortal).sensorContactEnd(obj2);
         }
         if(obj2 is FacebookLevelObjectPortal)
         {
            (obj2 as FacebookLevelObjectPortal).sensorContactEnd(obj1);
         }
      }
      
      override protected function getCollisionDamageFactor(collider:LevelObject, target:LevelObject) : Number
      {
         var damageFactor:Number = NaN;
         var activatedSlingShotDef:SlingShotDefinition = null;
         var category:String = null;
         var damageMultiplier:Number = NaN;
         var damageFactorLimitData:Object = null;
         if(target is LevelObjectBird)
         {
            return 1;
         }
         damageFactor = collider.getDamageFactor(target.getMaterialName());
         if(collider is LevelObjectBird)
         {
            activatedSlingShotDef = collider.getMetaDataObject("slingShotAbility") as SlingShotDefinition;
            if(activatedSlingShotDef)
            {
               category = target.levelItem.category;
               if(category == "")
               {
                  switch(target.levelItem.material.name)
                  {
                     case "MATERIAL_BLOCK_WOOD":
                        category = "Wood";
                        break;
                     case "MATERIAL_BLOCK_STONE":
                        category = "Stone";
                        break;
                     case "MATERIAL_BLOCK_ICE":
                        category = "Ice";
                        break;
                     case "OTHER_MATERIALS":
                     case "Other_Materials":
                        category = "Other_Materials";
                  }
               }
               damageMultiplier = activatedSlingShotDef.getBonusDamage(category,collider.itemName);
               damageFactorLimitData = LevelItemMaterialManager.getMaterialDamageFactorLimit(collider.itemName);
               if(damageFactorLimitData)
               {
                  if(damageFactorLimitData[target.getMaterialName()])
                  {
                     damageMultiplier = damageMultiplier > damageFactorLimitData[target.getMaterialName()] ? Number(damageFactorLimitData[target.getMaterialName()]) : Number(damageMultiplier);
                  }
                  else if(damageFactorLimitData["DEFAULT"])
                  {
                     damageMultiplier = damageMultiplier > damageFactorLimitData["DEFAULT"] ? Number(damageFactorLimitData["DEFAULT"]) : Number(damageMultiplier);
                  }
               }
               damageFactor *= damageMultiplier;
            }
         }
         return damageFactor;
      }
      
      override protected function getCollisionForceFactor(collider:LevelObject, target:LevelObject) : Number
      {
         return 1;
      }
      
      override protected function shakeCameraOnCollision(force:Number, health1:Number, health2:Number) : void
      {
         var maxHealth:Number = NaN;
         var limit:Number = NaN;
         if(force > 50)
         {
            maxHealth = Math.max(health1,health2);
            force = Math.min(force,maxHealth);
            limit = 3000000;
            force = Math.min(force * force * force,limit);
            setCameraShaking(true,0.2,5 * force / limit,force / limit * 500);
         }
      }
      
      override protected function playExplosionSound(type:int) : void
      {
         if(type != LevelExplosion.TYPE_ORANGE_BIRD && type != FacebookLevelExplosion.TYPE_SNOW_BALL_EXPLOSION)
         {
            SoundEngine.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(objectType:int) : String
      {
         switch(objectType)
         {
            case FacebookLevelExplosion.TYPE_SNOW_BALL_EXPLOSION:
               return "";
            default:
               return super.getMainExplosionCoreName(objectType);
         }
      }
      
      public function getRandomUniquePigs(count:uint) : Vector.<LevelObject>
      {
         var obj:LevelObject = null;
         var index:uint = 0;
         var pig:Vector.<LevelObject> = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var arrayLength:int = mObjects.length;
         var pigCount:int = this.getPigCount();
         if(pigCount == 0)
         {
            return null;
         }
         var pigs:Vector.<LevelObject> = new Vector.<LevelObject>();
         for(var i:int = arrayLength - 1; i >= 0; i--)
         {
            obj = mObjects[i] as LevelObject;
            if(obj && obj is LevelObjectPig && obj.health > 0)
            {
               pigs[pigs.length] = obj;
            }
         }
         var setOfUniquePigs:Vector.<LevelObject> = new Vector.<LevelObject>();
         while(setOfUniquePigs.length < count)
         {
            if(pigs.length == 0)
            {
               setOfUniquePigs[setOfUniquePigs.length] = null;
            }
            else
            {
               index = pigs.length * Math.random();
               pig = pigs.splice(index,1);
               setOfUniquePigs[setOfUniquePigs.length] = pig[0];
            }
         }
         return setOfUniquePigs;
      }
      
      public function get mushroomGrowthTime() : int
      {
         return FacebookLevelObjectEasterMushroom.totalTime;
      }
      
      public function spawnMushrooms() : void
      {
         var spawnObj:Object = null;
         var obj:LevelObject = null;
         var rnd:int = 0;
         var pigs:Vector.<LevelObject> = new Vector.<LevelObject>();
         for(var i:Number = 0; i < AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount(); i++)
         {
            obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
            if(obj is LevelObjectPig)
            {
               pigs.push(obj);
            }
         }
         if(pigs.length == 0)
         {
            return;
         }
         var valueUsed:Array = new Array();
         var amount:int = pigs.length > 4 ? 4 : int(pigs.length);
         for(var j:int = 0; j < amount; j++)
         {
            if(pigs.length > 1)
            {
               do
               {
                  rnd = this.getRandomValue(pigs.length);
               }
               while(valueUsed.indexOf(rnd) != -1);
               
               valueUsed.push(rnd);
            }
            else
            {
               rnd = 0;
            }
            spawnObj = this.calculateClosestPointAsSpawnPoint(pigs[rnd].getBody());
            if(spawnObj)
            {
               if(j == 0)
               {
                  spawnObj.scaleModifier = 1;
               }
               else if(j == 1)
               {
                  spawnObj.scaleModifier = 0.7;
               }
               else
               {
                  spawnObj.scaleModifier = 0.25;
               }
               this.addMushroomSpawnPoint(spawnObj);
            }
         }
      }
      
      protected function playMushroomSound() : void
      {
         if(this.mMushroomTimer > this.mMushroomTimerDelay && !this.mSoundIsPlaying)
         {
            this.mSoundIsPlaying = true;
            SoundEngine.playSound("mushroom_grow","ChannelMisc",0,1);
            this.mMushroomTimer = 0;
         }
      }
      
      private function getRandomBlock() : Object
      {
         var obj:LevelObject = null;
         var rnd:int = 0;
         var levelObjects:Vector.<LevelObject> = new Vector.<LevelObject>();
         for(var i:Number = 0; i < AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount(); i++)
         {
            obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
            if(obj)
            {
               if(obj is LevelObjectBlock && !(obj is LevelObjectPig) && !(obj is LevelObjectBird))
               {
                  levelObjects.push(obj);
               }
            }
         }
         if(levelObjects.length > 0)
         {
            rnd = this.getRandomValue(levelObjects.length);
            return this.calculateClosestPointAsSpawnPoint(levelObjects[rnd].getBody());
         }
         return null;
      }
      
      private function getRandomValue(value:int) : int
      {
         return Math.floor(Math.random() * value) as int;
      }
      
      private function randomNumber(low:Number = 0, high:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + high - low)) + low;
      }
      
      private function calculateClosestPointAsSpawnPoint(body:b2Body) : Object
      {
         var closestNormal:b2Vec2 = null;
         var closestFixture:b2Fixture = null;
         var closestPoint:b2Vec2 = null;
         var closestDistance:Number = NaN;
         var obj:LevelObject = null;
         var fixture:b2Fixture = null;
         var distOut:b2DistanceOutput = null;
         var cache:b2SimplexCache = null;
         var difference:b2Vec2 = new b2Vec2(0,AngryBirdsEngine.getCurrentScreenHeight() * LevelMain.LEVEL_HEIGHT_B2);
         var closestFraction:Number = 1;
         var input:b2DistanceInput = new b2DistanceInput();
         input.transformB = body.GetTransform();
         input.proxyB = new b2DistanceProxy();
         input.proxyB.Set(body.GetFixtureList().GetShape());
         input.useRadii = true;
         var minDistance:Number = LevelMain.LEVEL_WIDTH_B2;
         for(var i:Number = 0; i < AngryBirdsEngine.smLevelMain.levelObjects.getObjectCount(); i++)
         {
            obj = AngryBirdsEngine.smLevelMain.levelObjects.getObject(i) as LevelObject;
            if(obj)
            {
               if(obj.getBody().GetMass() == 0 && body.GetPosition().y < obj.getBody().GetPosition().y && (obj.isTexture() || obj.isGround()) && obj.itemName.indexOf("INVISIBLE") == -1)
               {
                  fixture = obj.getBody().GetFixtureList();
                  input.transformA = obj.getBody().GetTransform();
                  input.proxyA = new b2DistanceProxy();
                  input.proxyA.Set(obj.getBody().GetFixtureList().GetShape());
                  distOut = new b2DistanceOutput();
                  cache = new b2SimplexCache();
                  cache.count = 0;
                  b2Distance.Distance(distOut,cache,input);
                  if(minDistance > distOut.distance && body.GetPosition().y < obj.getBody().GetPosition().y)
                  {
                     minDistance = distOut.distance;
                     closestFixture = obj.getBody().GetFixtureList();
                     closestPoint = distOut.pointA;
                     closestDistance = distOut.distance;
                  }
               }
            }
         }
         var vec:b2Vec2 = body.GetPosition();
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
            return null;
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
      
      public function addMushroomSpawnPoint(point:Object) : void
      {
         if(!this.mMushroomsToSpawn)
         {
            this.mMushroomsToSpawn = new Vector.<Object>();
         }
         this.mMushroomsToSpawn.push(point);
      }
      
      override public function updateObjects(deltaTimeMilliSeconds:Number) : void
      {
         var i:int = 0;
         var spawnObj:Object = null;
         var point:Point = null;
         var normal:Point = null;
         var rot:Number = NaN;
         var obj:FacebookLevelObjectEasterMushroom = null;
         var radius:Number = NaN;
         var zombiePig:FacebookLevelObjectZombiePig = null;
         if(this.mMushroomsToSpawn != null)
         {
            this.mMushroomTimer += deltaTimeMilliSeconds;
            for(i = this.mMushroomsToSpawn.length - 1; i >= 0; i--)
            {
               spawnObj = this.mMushroomsToSpawn[i];
               point = spawnObj.point;
               normal = spawnObj.normal;
               if(!isNaN(point.x) && !isNaN(point.y))
               {
                  rot = Math.atan2(normal.x,normal.y);
                  obj = addObject("MISC_FB_EASTER_MUSHROOM",point.x + normal.x,point.y + normal.y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false) as FacebookLevelObjectEasterMushroom;
                  obj.scaleModifier = spawnObj.scaleModifier;
                  obj.setGroundPointAndNormal(point,normal);
                  obj.health *= obj.scaleModifier;
                  obj.addSpriteToBackLayer();
               }
               this.mMushroomsToSpawn.splice(i,1);
            }
            this.playMushroomSound();
         }
         if(this.mZombiePigsToSpawn != null)
         {
            for(i = this.mZombiePigsToSpawn.length - 1; i >= 0; i--)
            {
               spawnObj = this.mZombiePigsToSpawn[i];
               point = spawnObj.point;
               normal = spawnObj.normal;
               if(!isNaN(point.x) && !isNaN(point.y))
               {
                  rot = Math.atan2(normal.x,normal.y);
                  radius = -47 * LevelMain.PIXEL_TO_B2_SCALE;
                  zombiePig = FacebookLevelObjectZombiePig(addObject(spawnObj.itemName,point.x + normal.x * radius,point.y + normal.y * radius,rot * 57.2957795 + 180,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false));
                  zombiePig.setGroundPointAndNormal(point,normal);
               }
               this.mZombiePigsToSpawn.splice(i,1);
            }
         }
         this.generatePortalTexture();
         super.updateObjects(deltaTimeMilliSeconds);
      }
      
      override public function isPigsAlive() : Boolean
      {
         if(this.mZombiePigsToSpawn != null && this.mZombiePigsToSpawn.length != 0)
         {
            return true;
         }
         return super.isPigsAlive();
      }
      
      override public function getPigCount(acceptOnlyIdle:Boolean = false) : int
      {
         var superCount:int = super.getPigCount(acceptOnlyIdle);
         if(this.mZombiePigsToSpawn != null && this.mZombiePigsToSpawn.length != 0)
         {
            superCount += this.mZombiePigsToSpawn.length;
         }
         return superCount;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.mZombiePigsToSpawn != null && this.mZombiePigsToSpawn.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
      
      public function createJointAtRuntime(jointModel:LevelJointModel) : LevelJoint
      {
         return createJoint(jointModel);
      }
      
      override protected function ignoreExplosion(object:LevelObject, explosionType:int) : Boolean
      {
         var ignore:Boolean = super.ignoreExplosion(object,explosionType);
         if(object is FacebookSlingshotTreepart)
         {
            return true;
         }
         if(object is FacebookLevelObjectXmasTreeAmmo && (explosionType == LevelExplosion.TYPE_BLACK_BIRD || explosionType == LevelExplosion.TYPE_ORANGE_BIRD || explosionType == LevelExplosion.TYPE_WHITE_BIRD_EGG))
         {
            return true;
         }
         if(object is FacebookLevelObjectCollectibleItem)
         {
            return true;
         }
         if(object is FacebookLevelObjectParachute)
         {
            return true;
         }
         return ignore;
      }
      
      override public function destroyAllJoints() : void
      {
         var i:int = 0;
         var joint:LevelJoint = null;
         if(SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier)
         {
            for(i = mJoints.length; i > 0; i--)
            {
               joint = mJoints[i - 1] as LevelJoint;
               if(!joint.B2Joint || !(joint.B2Joint.GetBodyA().GetUserData() is FacebookSlingshotTreepart || joint.B2Joint.GetBodyB().GetUserData() is FacebookSlingshotTreepart))
               {
                  joint = mJoints[i - 1];
                  removeJoint(joint);
                  mJoints.splice(i - 1,1);
               }
            }
         }
         else
         {
            super.destroyAllJoints();
         }
      }
      
      override protected function removeDestroyedAttachedJoints(levelObj:LevelObject) : void
      {
         var destroyAttachedJoint:DestroyAttachedJoint = null;
         for each(destroyAttachedJoint in mDestroyAttachedJoints)
         {
            if(destroyAttachedJoint.objectId1 == levelObj.id)
            {
               destroyAttachedJoint.timerStarted = true;
            }
         }
      }
      
      public function findPortalPair(portalObject:FacebookLevelObjectPortal) : FacebookLevelObjectPortal
      {
         for(var i:int = 0; i < mObjects.length; )
         {
            if(mObjects[i] is FacebookLevelObjectPortal && mObjects[i] != portalObject && !(mObjects[i] as FacebookLevelObjectPortal).hasPortalPair() && mObjects[i].levelItem == portalObject.levelItem)
            {
               return mObjects[i] as FacebookLevelObjectPortal;
            }
            i++;
         }
         return null;
      }
      
      public function generatePortalTexture() : void
      {
         var i:int = 0;
         if(this.mPortalTexturesGenerated)
         {
            return;
         }
         var portalsFound:Boolean = false;
         for(var portalsInstalled:Boolean = true; i < mObjects.length; )
         {
            if(mObjects[i] is FacebookLevelObjectPortal)
            {
               portalsFound = true;
               if(!(mObjects[i] as FacebookLevelObjectPortal).sideBlocksInstalled)
               {
                  portalsInstalled = false;
                  break;
               }
            }
            i++;
         }
         if(!portalsFound)
         {
            this.mPortalTexturesGenerated = true;
         }
         else if(portalsInstalled)
         {
            (AngryBirdsEngine.smLevelMain.objects as LevelObjectManager).generateTerrainTexture();
            (AngryBirdsEngine.smLevelMain.objects as LevelObjectManager).setTexture(true);
            this.mPortalTexturesGenerated = true;
         }
      }
      
      public function get portalTexturesGenerated() : Boolean
      {
         return this.mPortalTexturesGenerated;
      }
      
      override public function addExplosion(type:int, x:Number, y:Number, ignoredObjectId:int = -1) : void
      {
         mExplosions.push(FacebookLevelExplosion.createExplosion(type,x,y,ignoredObjectId));
         this.playExplosionSound(type);
      }
   }
}
