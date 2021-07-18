package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItemMaterial;
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class LevelObjects extends Sprite
   {
      
      public static const EXPLOSIONS:Array = [[200,10,0.2],[300,9,1.5],[1000,10,0.1],[2100,15,0.1]];
      
      public static const EXPLOSION_TYPE_DEFAULT:int = 0;
      
      public static const EXPLOSION_TYPE_WHITE_BIRD_EGG:int = 1;
      
      public static const EXPLOSION_TYPE_TNT:int = 2;
      
      public static const EXPLOSION_TYPE_BLACK_BIRD:int = 3;
      
      public static const TEXTURE_WIDTH:int = 120 - 2;
      
      public static const TEXTURE_HEIGHT:int = 120 - 2;
       
      
      public var mObjects:Array;
      
      public var mTotalObjectCount:int;
      
      public var mLevelMain:LevelMain;
      
      public var mActivateSpecialPower:Boolean;
      
      public var mExplodePreviousActiveObjectOnNextClick:Boolean = false;
      
      public var mExplosions:Array;
      
      public var mTextureFinal:Sprite;
      
      public var mTextureMask:Sprite;
      
      public function LevelObjects(newLevelMain:LevelMain, level:XML)
      {
         var item:XML = null;
         super();
         this.mLevelMain = newLevelMain;
         this.mTotalObjectCount = 0;
         this.mTextureFinal = new Sprite();
         this.mTextureMask = new Sprite();
         addChild(this.mTextureFinal);
         addChild(this.mTextureMask);
         this.mObjects = new Array();
         this.addObject(level.@background,(this.mLevelMain.mLevelBorders.mBorderLeft_B2 + this.mLevelMain.mLevelBorders.mBorderRight_B2) / 2,this.mLevelMain.mLevelBorders.mBorderGround_B2 + LevelBorders.LEVEL_BORDER_GROUND_THICKNESS);
         for each(item in level.Item)
         {
            this.addObject(item.@id,item.@x,item.@y,item.@rotation);
         }
         this.setTexture(!this.mLevelMain.mEditorMode);
         this.mActivateSpecialPower = false;
         this.mExplosions = new Array();
      }
      
      public function setTexture(isOn:Boolean) : void
      {
         var glowColor:Number = NaN;
         if(isOn)
         {
            this.mTextureFinal.visible = true;
            this.mTextureMask.alpha = 0.5;
            this.mTextureFinal.mask = this.mTextureMask;
            glowColor = this.mLevelMain.mLevelBackground.mLevelBackgroundInformation.mTextureStrokeColor;
            this.mTextureFinal.filters = [new GlowFilter(glowColor,1,2,2,10)];
         }
         else
         {
            this.mTextureMask.alpha = 1;
            this.mTextureFinal.visible = false;
            this.mTextureFinal.mask = null;
         }
      }
      
      public function clear() : void
      {
         this.mLevelMain.removeChild(this);
         while(this.mObjects.length > 0)
         {
            this.removeObject(0);
         }
         this.mObjects = null;
         removeChild(this.mTextureFinal);
         removeChild(this.mTextureMask);
         this.mTextureFinal.filters = null;
         this.mTextureFinal = null;
         this.mTextureMask = null;
      }
      
      public function fillLevelTexture(rect:Rectangle) : void
      {
         var aY:int = 0;
         var temp:DisplayObject = null;
         var startIndexY:int = rect.top / TEXTURE_HEIGHT;
         if(rect.top < 0)
         {
            startIndexY--;
         }
         var lastIndexY:int = rect.bottom / TEXTURE_HEIGHT;
         lastIndexY++;
         var startIndexX:int = rect.left / TEXTURE_WIDTH;
         if(rect.left < 0)
         {
            startIndexX--;
         }
         var lastIndexX:int = rect.right / TEXTURE_WIDTH;
         lastIndexX++;
         for(var aX:int = startIndexX; aX < lastIndexX; aX++)
         {
            for(aY = startIndexY; aY < lastIndexY; aY++)
            {
               temp = new this.mLevelMain.mLevelBackground.mTextureClass();
               temp.x = aX * TEXTURE_WIDTH;
               temp.y = aY * TEXTURE_HEIGHT;
               this.mTextureFinal.addChild(temp);
            }
         }
      }
      
      public function addObject(aItemName:String, a_x:Number, a_y:Number, aRotation:Number = 0) : void
      {
         var index:int = 0;
         Log.log("LevelObjects -> AddObject() id = " + aItemName + " x = " + a_x + " y = " + a_y + " rotation = " + aRotation);
         var obj:LevelObject = new LevelObject(this,this.mLevelMain.mLevelEngine.mWorld,this.mTotalObjectCount,aItemName,a_x,a_y,aRotation);
         if(obj.isTexture())
         {
            index = 1;
            while(this.mObjects.length > index && (this.mObjects[index] as LevelObject).isTexture())
            {
               index++;
            }
            this.mObjects.splice(index,0,obj);
         }
         else
         {
            this.mObjects[this.mObjects.length] = obj;
         }
      }
      
      public function updateLevelObjectsGoingOn() : void
      {
         var obj:LevelObject = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.mHealth <= 0)
               {
                  this.removeObject(i,true,true,true);
                  i--;
               }
               else
               {
                  obj.applyNextLinearVelocity();
                  obj.updateRendererMiddleOfUpdateCycle();
               }
            }
         }
      }
      
      public function addExplosions(type:int, newX:Number, newY:Number) : void
      {
         this.mExplosions[this.mExplosions.length] = new Array();
         this.mExplosions[this.mExplosions.length - 1][0] = newX;
         this.mExplosions[this.mExplosions.length - 1][1] = newY;
         this.mExplosions[this.mExplosions.length - 1][2] = EXPLOSIONS[type][0];
         this.mExplosions[this.mExplosions.length - 1][3] = EXPLOSIONS[type][1];
         this.mExplosions[this.mExplosions.length - 1][4] = EXPLOSIONS[type][2];
         SoundEngine.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getObjectIndexFromPoint(x:Number, y:Number) : int
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.isInCoordinates(x,y))
               {
                  return i;
               }
            }
         }
         return -1;
      }
      
      public function getObjectFromPoint(x:Number, y:Number) : LevelObject
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length - 1; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj)
            {
               if(obj.isInCoordinates(x,y))
               {
                  return obj;
               }
            }
         }
         return null;
      }
      
      public function updateLevelObjectsComplete(newDeltaTime:Number, leftOverDeltaTime:Number) : void
      {
         var obj:LevelObject = null;
         var j:int = 0;
         var p:int = 0;
         var distX:Number = NaN;
         var distY:Number = NaN;
         var dist:Number = NaN;
         var MAX_DISTANCE:Number = NaN;
         var power:Number = NaN;
         var angle:Number = NaN;
         var forceX:Number = NaN;
         var forceY:Number = NaN;
         var speed:Number = NaN;
         var time:Number = NaN;
         var angle2:Number = NaN;
         var bird:LevelObject = null;
         var YELLOW_BIRD_SPECIAL_POWER_STRENGHT:Number = NaN;
         var velocityX:Number = NaN;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            obj.updateRendererEndOfUpdateCycle(leftOverDeltaTime,newDeltaTime);
            if(this.checkObjectLocation(obj,i))
            {
               obj.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
               this.removeObject(i,false,false,false);
               i--;
            }
            else if(obj.isBird() && obj.isBirdReadyToBeRemoved(newDeltaTime))
            {
               obj.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
               this.removeObject(i,false,true,true);
               i--;
            }
            else if(obj.isBird() && obj.mTargetHorizontalSpeed != 0 && obj.mRenderer.mTryToSpecial)
            {
               if(obj.mTargetHorizontalSpeed < obj.getBody().GetLinearVelocity().x)
               {
                  obj.getBody().GetLinearVelocity().x = obj.getBody().GetLinearVelocity().x - newDeltaTime / 10;
                  if(obj.mTargetHorizontalSpeed >= obj.getBody().GetLinearVelocity().x)
                  {
                     obj.mTargetHorizontalSpeed = 0;
                  }
               }
               else if(obj.mTargetHorizontalSpeed > obj.getBody().GetLinearVelocity().x)
               {
                  obj.getBody().GetLinearVelocity().x = obj.getBody().GetLinearVelocity().x + newDeltaTime / 10;
                  if(obj.mTargetHorizontalSpeed <= obj.getBody().GetLinearVelocity().x)
                  {
                     obj.mTargetHorizontalSpeed = 0;
                  }
               }
            }
            else if(obj.isBird() && obj.mTargetVerticalSpeed != 0 && obj.mRenderer.mTryToSpecial && obj.mHealth == obj.mHealthMax)
            {
               if(obj.mTargetVerticalSpeed < obj.getBody().GetLinearVelocity().y)
               {
                  obj.getBody().GetLinearVelocity().y = obj.getBody().GetLinearVelocity().y - newDeltaTime / 10;
               }
            }
         }
         while(this.mExplosions.length > 0)
         {
            for(j = 0; j < this.mObjects.length; j++)
            {
               obj = this.mObjects[j] as LevelObject;
               distX = this.mExplosions[0][0] - obj.getBody().GetPosition().x;
               distY = this.mExplosions[0][1] - obj.getBody().GetPosition().y;
               dist = Math.sqrt(distX * distX + distY * distY);
               MAX_DISTANCE = this.mExplosions[0][3];
               if(dist <= MAX_DISTANCE)
               {
                  power = this.mExplosions[0][2] * ((MAX_DISTANCE - dist) / MAX_DISTANCE) * ((MAX_DISTANCE - dist) / MAX_DISTANCE);
                  angle = Math.atan2(-distY,distX);
                  angle *= 180 / Math.PI;
                  forceX = -power * Math.cos(angle / (180 / Math.PI));
                  forceY = power * Math.sin(angle / (180 / Math.PI));
                  obj.getBody().ApplyImpulse(new b2Vec2(forceX,forceY),new b2Vec2(obj.getBody().GetPosition().x,obj.getBody().GetPosition().y));
                  obj.applyDamage(power * this.mExplosions[0][4]);
               }
            }
            this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSION_CORE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,this.mExplosions[0][0],this.mExplosions[0][1],600,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC);
            for(p = 30; p < 150; p++)
            {
               speed = 0.75 * this.mExplosions[0][3] + Math.random() * this.mExplosions[0][3];
               time = 1250 + Math.random() * 750;
               angle2 = p / (180 / Math.PI);
               this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSIONS_PARTICLE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mExplosions[0][0],this.mExplosions[0][1],time,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,speed * Math.cos(angle2),-speed * Math.sin(angle2),20,0);
               p += 4;
            }
            this.mExplosions.splice(0,1);
         }
         if(this.mActivateSpecialPower)
         {
            bird = this.mLevelMain.mActiveObject;
            if(bird && !bird.mSpecialPowerUsed)
            {
               if(bird.mObjectName.toUpperCase() == "BIRD_BLUE")
               {
                  this.addObject("BIRD_BLUE",bird.getBody().GetPosition().x,bird.getBody().GetPosition().y + 0.5);
                  (this.mObjects[this.mObjects.length - 1] as LevelObject).setLinearVelocity(new b2Vec2(bird.getBody().GetLinearVelocity().x,bird.getBody().GetLinearVelocity().y + 5));
                  this.addObject("BIRD_BLUE",bird.getBody().GetPosition().x,bird.getBody().GetPosition().y - 0.5);
                  (this.mObjects[this.mObjects.length - 1] as LevelObject).setLinearVelocity(new b2Vec2(bird.getBody().GetLinearVelocity().x,bird.getBody().GetLinearVelocity().y - 5));
               }
               else if(bird.mObjectName.toUpperCase() == "BIRD_YELLOW")
               {
                  YELLOW_BIRD_SPECIAL_POWER_STRENGHT = 1.6;
                  bird.setLinearVelocity(new b2Vec2(bird.getBody().GetLinearVelocity().x * YELLOW_BIRD_SPECIAL_POWER_STRENGHT,bird.getBody().GetLinearVelocity().y * YELLOW_BIRD_SPECIAL_POWER_STRENGHT));
               }
               else if(bird.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  this.addObject("MISC_WHITE_BIRD_EGG",bird.getBody().GetPosition().x,bird.getBody().GetPosition().y + 0.5);
                  (this.mObjects[this.mObjects.length - 1] as LevelObject).setLinearVelocity(new b2Vec2(bird.getBody().GetLinearVelocity().x / 10,30));
                  bird.mTargetVerticalSpeed = -30;
                  bird.setLinearVelocity(new b2Vec2(bird.getBody().GetLinearVelocity().x,Math.min(-30,bird.getBody().GetLinearVelocity().y)));
                  this.mLevelMain.mActiveObject = this.mObjects[this.mObjects.length - 1];
               }
               else if(bird.mObjectName.toUpperCase() == "BIRD_BLACK")
               {
                  bird.startSelfExplosion(100);
               }
               else if(bird.mObjectName.toUpperCase() == "BIRD_GREEN")
               {
                  velocityX = bird.getBody().GetLinearVelocity().x;
                  if(velocityX != 0)
                  {
                     bird.mTargetHorizontalSpeed = -velocityX * 1.5;
                  }
               }
               bird.playSoundEffect(LevelItemResourcePathSound.SOUND_SPECIAL_EFFECT);
               bird.mSpecialPowerUsed = true;
            }
            this.mActivateSpecialPower = false;
         }
      }
      
      public function explodePreviousActiveObjects() : Boolean
      {
         var obj:LevelObject = null;
         var rate:Number = NaN;
         this.mExplodePreviousActiveObjectOnNextClick = false;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i];
            if(obj && obj.mObjectName.toUpperCase() == "BIRD_BLACK")
            {
               if(!obj.mSpecialPowerUsed)
               {
                  obj.startSelfExplosion(100);
               }
               else if(obj.mSelfExplosionTimer > 0)
               {
                  rate = obj.mSelfExplosionTimer / obj.mSelfExplosionTimerMax;
                  obj.mSelfExplosionTimerMax = 200;
                  obj.mSelfExplosionTimer = obj.mSelfExplosionTimerMax * rate;
               }
               return true;
            }
         }
         return false;
      }
      
      public function checkObjectLocation(obj:LevelObject, index:int) : Boolean
      {
         if(obj && obj.mLevelItem.getItemBodyType() != LevelItemMaterial.BODY_TYPE_STATIC && (this.mLevelMain.mLevelBorders.isOutOfLevel(obj.getBody().GetPosition().x,obj.getBody().GetPosition().y) || (obj.isPig() || obj.isBlock() || obj.isMiscBlock()) && obj.getBody().GetPosition().x < LevelCamera.EDITOR_BORDER_SLINGSHOT_RIGHT))
         {
            return true;
         }
         return false;
      }
      
      public function removeObject(i:int, countScore:Boolean = false, particles:Boolean = false, explode:Boolean = false) : void
      {
         var particle:String = null;
         var speed:Number = NaN;
         var count:int = 0;
         var angle:Number = NaN;
         var p:int = 0;
         var angle2:Number = NaN;
         var randomX:Number = NaN;
         var randomY:Number = NaN;
         if(i < 0)
         {
            return;
         }
         var obj:LevelObject = this.mObjects[i] as LevelObject;
         if(obj == this.mLevelMain.mActiveObject)
         {
            this.mLevelMain.mActiveObject = null;
         }
         if(countScore)
         {
            this.mLevelMain.addScore(obj.mLevelItem.mScore,true,obj.getBody().GetPosition().x,obj.getBody().GetPosition().y - 3,LevelParticle.getTextMaterialFromEngineMaterial(obj.mObjectName));
         }
         if(particles)
         {
            if(obj.isPig())
            {
               particle = !!obj.mKilledByHeadshot ? LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT : LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION;
               this.mLevelMain.mLevelParticles.addParticle(particle,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,obj.getBody().GetPosition().x,obj.getBody().GetPosition().y - 1,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
            }
            else if(obj.isBird())
            {
               speed = 5;
               count = obj.getVolume(false) + 1;
               angle = 90;
               for(p = 0; p < count; p++)
               {
                  angle += Math.random() * (720 / count);
                  angle2 = angle / (180 / Math.PI);
                  randomX = -obj.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE;
                  randomX += Math.random() * -randomX * 2;
                  randomY = -obj.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE;
                  randomY += Math.random() * -randomY * 2;
                  this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,obj.getBody().GetPosition().x + randomX,obj.getBody().GetPosition().y + randomY,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(obj.mObjectName),speed * Math.cos(angle2),-speed * Math.sin(angle2),5,speed * 20);
               }
            }
            else if(obj.isBlock() || obj.isMiscBlock())
            {
               speed = 4;
               count = Math.min(49,Math.max(1,obj.getVolume(false))) + 1;
               angle = 90;
               for(p = 0; p < count; p++)
               {
                  angle += Math.random() * (720 / count);
                  angle2 = angle / (180 / Math.PI);
                  randomX = -obj.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE;
                  randomX += Math.random() * -randomX * 2;
                  randomY = -obj.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE;
                  randomY += Math.random() * -randomY * 2;
                  this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,obj.getBody().GetPosition().x + randomX,obj.getBody().GetPosition().y + randomY,1750 + Math.random() * 500,"",LevelParticle.getParticleMaterialFromEngineMaterial(obj.mObjectName),speed * Math.cos(angle2),-speed * Math.sin(angle2),10,speed * 50);
               }
               this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,obj.getBody().GetPosition().x,obj.getBody().GetPosition().y - 1,1000,"",LevelParticle.getParticleMaterialFromEngineMaterial(obj.mObjectName));
            }
         }
         if(explode)
         {
            if(obj.getMaterialName().toUpperCase() == "EXPLOSIVE")
            {
               if(obj.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG")
               {
                  this.addExplosions(EXPLOSION_TYPE_WHITE_BIRD_EGG,obj.getBody().GetPosition().x,obj.getBody().GetPosition().y);
               }
               else
               {
                  this.addExplosions(EXPLOSION_TYPE_TNT,obj.getBody().GetPosition().x,obj.getBody().GetPosition().y);
               }
            }
         }
         obj.kill(this.mLevelMain.mLevelEngine.mWorld);
         obj = null;
         this.mObjects[i] = null;
         this.mObjects.splice(i,1);
      }
      
      public function getObjectFromFixture(newFixture:b2Fixture) : LevelObject
      {
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            if(LevelObject(this.mObjects[i]).mFixture == newFixture)
            {
               return LevelObject(this.mObjects[i]);
            }
         }
         return null;
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         x = -sideScroll;
         y = -verticalScroll;
      }
      
      public function isPigsAlive(acceptOnlyIdle:Boolean = false) : Boolean
      {
         var obj:LevelObject = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isPig() && obj.mHealth > 0)
            {
               if(!acceptOnlyIdle || obj.mRenderer.mTryToBlink <= 0 && obj.mRenderer.mTryToScream <= 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function getPigCount(acceptOnlyIdle:Boolean = false) : int
      {
         var obj:LevelObject = null;
         var counter:int = 0;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isPig() && obj.mHealth > 0)
            {
               if(!acceptOnlyIdle || obj.mRenderer.mTryToBlink <= 0 && obj.mRenderer.mTryToScream <= 0)
               {
                  counter++;
               }
            }
         }
         return counter;
      }
      
      public function makePigsSmile(timeCoefficient:Number = 1) : void
      {
         var obj:LevelObject = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isPig() && obj.mHealth > 0)
            {
               obj.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME * timeCoefficient;
            }
         }
      }
      
      public function isBirdsAlive() : Boolean
      {
         var obj:LevelObject = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.isBird() && obj.mHealth > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var obj:LevelObject = null;
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && obj.mHealth > 0 && obj.mObjectType != LevelItem.ITEM_TYPE_BORDER)
            {
               if(obj.isDamageAwardingScore() && !obj.considerSleeping())
               {
                  return false;
               }
               if(obj.isBird() && obj.mHealth > 0)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function getRandomPig(acceptOnlyIdle:Boolean = false) : LevelObject
      {
         var i:int = 0;
         var obj:LevelObject = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var arrayLenght:int = this.mObjects.length;
         var index:int = 1 + Math.random() * this.getPigCount(acceptOnlyIdle);
         var counter:int = 0;
         while(counter < index)
         {
            for(i = 0; i < arrayLenght; i++)
            {
               obj = this.mObjects[i];
               if(obj && obj.isPig() && obj.mHealth > 0)
               {
                  if(!acceptOnlyIdle || obj.mRenderer.mTryToBlink <= 0 && obj.mRenderer.mTryToScream <= 0)
                  {
                     counter++;
                     if(counter >= index)
                     {
                        return obj;
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public function getMaxScore() : int
      {
         var i:int = 0;
         for(var counter:int = 0; i < this.mObjects.length; )
         {
            counter += (this.mObjects[i] as LevelObject).mLevelItem.mScore;
            if((this.mObjects[i] as LevelObject).isDamageAwardingScore())
            {
               counter += LevelMain.DAMAGE_SCORE_MULTILIER * int((this.mObjects[i] as LevelObject).mHealthMax);
            }
            i++;
         }
         return int(counter + this.mLevelMain.mLevelSlingshot.getMaxScore());
      }
      
      public function shouldIgnoreCollision(obj1:LevelObject, obj2:LevelObject, damage:Boolean = true) : Boolean
      {
         if(!obj1 || !obj2)
         {
            return true;
         }
         if(damage && !obj1.isFastEnoughToDamage() && !obj2.isFastEnoughToDamage())
         {
            return true;
         }
         if(damage && obj1.isBird() && obj2.isBird())
         {
            return true;
         }
         if(obj1.isBird() && obj2.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || obj2.isBird() && obj1.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG")
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(fixture1:b2Fixture, fixture2:b2Fixture) : void
      {
         var multiplier2:Number = NaN;
         var multiplier1:Number = NaN;
         var obj1:LevelObject = this.getObjectFromFixture(fixture1);
         var obj2:LevelObject = this.getObjectFromFixture(fixture2);
         if(this.shouldIgnoreCollision(obj1,obj2))
         {
            return;
         }
         var forceDivider:Number = 10;
         var materialDamageFactor1:Number = 1;
         var velocityDamageFactor1:Number = 1;
         var materialDamageFactor2:Number = 1;
         var velocityDamageFactor2:Number = 1;
         materialDamageFactor1 = obj1.getDamageFactor(obj2.getMaterialName());
         velocityDamageFactor1 = obj1.getVelocityFactor(obj2.getMaterialName());
         materialDamageFactor2 = obj2.getDamageFactor(obj1.getMaterialName());
         velocityDamageFactor2 = obj2.getVelocityFactor(obj1.getMaterialName());
         var forceX:Number = obj1.getBody().GetMass() * obj1.getBody().GetLinearVelocity().x - obj2.getBody().GetMass() * obj2.getBody().GetLinearVelocity().x;
         var forceY:Number = obj1.getBody().GetMass() * obj1.getBody().GetLinearVelocity().y - obj2.getBody().GetMass() * obj2.getBody().GetLinearVelocity().y;
         var force:Number = Math.sqrt(forceX * forceX + forceY * forceY) / forceDivider;
         var force1:Number = materialDamageFactor1 * force;
         var force2:Number = materialDamageFactor2 * force;
         var oldHealth1:Number = Math.max(0,obj1.mHealth);
         var oldHealth2:Number = Math.max(0,obj2.mHealth);
         var resultHealth1:Number = obj1.applyDamage(force2,true,obj2.isBird());
         var resultHealth2:Number = obj2.applyDamage(force1,true,obj1.isBird());
         if(obj1.isPig() && resultHealth1 <= 0 && obj2.isBird() && oldHealth2 == obj2.mHealthMax)
         {
            obj1.mKilledByHeadshot = true;
         }
         else if(obj2.isPig() && resultHealth2 <= 0 && obj1.isBird() && oldHealth1 == obj1.mHealthMax)
         {
            obj2.mKilledByHeadshot = true;
         }
         var TRACE:Boolean = false;
         if(TRACE)
         {
            Log.log("--- NEW COLLISION ---");
            Log.log("Mat Dam Factor1 = " + materialDamageFactor1 + " Mat Dam Factor2 = " + materialDamageFactor2 + " Mat Vel Factor1 = " + velocityDamageFactor1 + " Mat Vel Factor2 = " + velocityDamageFactor2);
            Log.log("Object1: " + obj1.mObjectName + " force1 = " + force1 + " obj health1 = " + oldHealth1 + " new health1 = " + resultHealth1);
            Log.log("Object2: " + obj2.mObjectName + " force2 = " + force2 + " obj health2 = " + oldHealth2 + " new health2 = " + resultHealth2);
         }
         if(resultHealth1 <= 0)
         {
            multiplier2 = (force2 - oldHealth1) / force2;
            multiplier2 *= velocityDamageFactor2;
            if(multiplier2 > 1)
            {
               multiplier2 = 1;
            }
            if(TRACE)
            {
               Log.log(obj1.mObjectName + " is killed. Speed Multiplier for " + obj2.mObjectName + " is " + multiplier2);
            }
            obj2.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(obj2.getBody().GetLinearVelocity().x * multiplier2,obj2.getBody().GetLinearVelocity().y * multiplier2));
         }
         if(resultHealth2 <= 0)
         {
            multiplier1 = (force1 - oldHealth2) / force1;
            multiplier1 *= velocityDamageFactor1;
            if(multiplier1 > 1)
            {
               multiplier1 = 1;
            }
            if(TRACE)
            {
               Log.log(obj2.mObjectName + " is killed. Speed Multiplier for " + obj1.mObjectName + " is " + multiplier1);
            }
            obj1.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(obj1.getBody().GetLinearVelocity().x * multiplier1,obj1.getBody().GetLinearVelocity().y * multiplier1));
         }
      }
      
      public function getLevelObjectsinXML() : String
      {
         var obj:LevelObject = null;
         var posX:Number = NaN;
         var posY:Number = NaN;
         var objAngle:Number = NaN;
         var isStatic:Boolean = false;
         var strXML:String = "";
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && !obj.isGround())
            {
               posX = obj.getBody().GetPosition().x;
               posY = obj.getBody().GetPosition().y;
               objAngle = obj.getAngle();
               isStatic = obj.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
               isStatic = true;
               posX = LevelEditor.roundUpCoordinate(posX,isStatic);
               posY = LevelEditor.roundUpCoordinate(posY,isStatic);
               objAngle = LevelEditor.roundUpCoordinate(objAngle,isStatic);
               strXML += "    <Item id = \"" + obj.mObjectName + "\" x = \"" + posX + "\" y = \"" + posY + "\" rotation = \"" + objAngle + "\"></Item>" + AngryBirdsSocial.LINE_BREAK_XML;
            }
         }
         return strXML;
      }
      
      public function getLevelDataInArrayFormat(includeGround:Boolean = false) : Array
      {
         var obj:LevelObject = null;
         var posX:Number = NaN;
         var posY:Number = NaN;
         var objAngle:Number = NaN;
         var isStatic:Boolean = false;
         var newSavePoint:Array = new Array();
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            obj = this.mObjects[i] as LevelObject;
            posX = obj.getBody().GetPosition().x;
            posY = obj.getBody().GetPosition().y;
            objAngle = obj.getAngle();
            isStatic = obj.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
            isStatic = true;
            posX = LevelEditor.roundUpCoordinate(posX,isStatic);
            posY = LevelEditor.roundUpCoordinate(posY,isStatic);
            objAngle = LevelEditor.roundUpCoordinate(objAngle,isStatic);
            if(obj && (!obj.isGround() || includeGround))
            {
               newSavePoint[newSavePoint.length] = new Array(obj.mObjectName,posX,posY,objAngle);
            }
         }
         return newSavePoint;
      }
      
      public function loadLevelFromArrayFormat(levelArray:Array, includeGround:Boolean = false) : void
      {
         this.removeAllTheObjects(includeGround);
         for(var i:int = 0; i < levelArray.length; i++)
         {
            this.addObject(levelArray[i][0],levelArray[i][1],levelArray[i][2],levelArray[i][3]);
         }
      }
      
      public function removeAllTheObjects(includeGround:Boolean = false) : void
      {
         var obj:LevelObject = null;
         for(var i:int = this.mObjects.length; i >= 0; i--)
         {
            obj = this.mObjects[i] as LevelObject;
            if(obj && (!obj.isGround() || includeGround))
            {
               obj = null;
               this.removeObject(i);
            }
         }
         while(this.mTextureFinal.numChildren > 0)
         {
            this.mTextureFinal.removeChildAt(0);
         }
         while(this.mTextureMask.numChildren > 0)
         {
            this.mTextureMask.removeChildAt(0);
         }
      }
      
      public function getObjectIndex(obj:LevelObject) : int
      {
         for(var i:int = 0; i < this.mObjects.length; i++)
         {
            if(this.mObjects[i] == obj)
            {
               return i;
            }
         }
         return -1;
      }
   }
}
