package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItemMaterial;
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.LevelItemsData.LevelItemShape;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class LevelObject extends Sprite
   {
      
      public static const BIRDS_SLEEP_TIME_BEFORE_REMOVAL:Number = 2000;
      
      public static const INTERPOLATE_DISPLAY_OBJECTS:Boolean = true;
       
      
      public var mLevelObjects:LevelObjects;
      
      public var mFixture:b2Fixture;
      
      public var mRenderer:LevelObjectRenderer;
      
      public var mObjectId:int;
      
      public var mObjectShape:int;
      
      public var mObjectName:String;
      
      public var mObjectType:int;
      
      public var mHealth:Number;
      
      public var mHealthMax:Number;
      
      public var mDefence:Number;
      
      public var mColors:Number;
      
      public var mLevelItem:LevelItem;
      
      public var mNextLinearVelocity:b2Vec2;
      
      public var mSleepingDuration:Number;
      
      private var mXScreenNext:Number;
      
      private var mYScreenNext:Number;
      
      private var mRotationScreenNext:Number;
      
      private var mXScreenPrevious:Number;
      
      private var mYScreenPrevious:Number;
      
      private var mRotationScreenPrevious:Number;
      
      public var mSpecialPowerUsed:Boolean = false;
      
      public var mTargetHorizontalSpeed:Number = 0;
      
      public var mTargetVerticalSpeed:Number = 0;
      
      public var mSelfExplosionTimer:Number = -1;
      
      public var mSelfExplosionTimerMax:Number = -1;
      
      public var mKilledByHeadshot:Boolean = false;
      
      public var mPowerUpDamageMultiplier:Number = 1;
      
      public var mInterpolationXOffset:Number = 0;
      
      public var mInterpolationYOffset:Number = 0;
      
      public function LevelObject(aLevelObjects:LevelObjects, aWorld:b2World, aId:int, aItemName:String, aX:Number, aY:Number, aRotation:Number)
      {
         var bd:b2BodyDef = null;
         var body:b2Body = null;
         var vertices:Array = null;
         var dimensions:Array = null;
         super();
         this.mObjectName = aItemName;
         this.mLevelItem = LevelItems.getItem(aItemName);
         this.mLevelObjects = aLevelObjects;
         this.mObjectId = aId;
         this.mObjectType = this.mLevelItem.mItemType;
         this.mObjectShape = this.mLevelItem.getItemShapeType();
         if(this.isTexture())
         {
            this.mLevelObjects.mTextureMask.addChild(this);
         }
         else
         {
            this.mLevelObjects.addChild(this);
         }
         this.mRenderer = new LevelObjectRenderer(this);
         if(!this.mRenderer.loadAnimation())
         {
            if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_POLYGON || this.mObjectShape == LevelItemShape.SHAPE_TYPE_RECT)
            {
               this.mObjectShape = LevelItemShape.SHAPE_TYPE_RECT;
            }
            else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_CIRCLE)
            {
               this.mObjectShape = LevelItemShape.SHAPE_TYPE_CIRCLE;
            }
            this.mRenderer.setCodeDrawnObjectProperties(this.mObjectShape,this.mLevelItem.getItemColors(),this.mLevelItem.getItemWidth() / LevelMain.PIXEL_TO_B2_SCALE,this.mLevelItem.getItemHeight() / LevelMain.PIXEL_TO_B2_SCALE);
         }
         this.mRenderer.calculateWidthHeightRatio();
         bd = new b2BodyDef();
         bd.position.Set(aX,aY);
         bd.type = this.mLevelItem.getItemBodyType();
         bd.allowSleep = true;
         bd.active = true;
         bd.awake = true;
         if(this.isBird())
         {
            bd.bullet = true;
            bd.angularDamping = 2;
            this.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME + 1;
         }
         else
         {
            bd.angularDamping = 1;
            bd.bullet = false;
         }
         body = aWorld.CreateBody(bd);
         var w:Number = this.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE;
         var h:Number = this.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE;
         var polygon:b2PolygonShape = new b2PolygonShape();
         var circle:b2CircleShape = new b2CircleShape();
         if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_RECT)
         {
            polygon.SetAsArray(this.mRenderer.getCollisionRect(),4);
            this.mFixture = body.CreateFixture2(polygon,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_POLYGON)
         {
            vertices = this.mRenderer.getCollisionVertice();
            polygon.SetAsArray(vertices,vertices.length);
            this.mFixture = body.CreateFixture2(polygon,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_CIRCLE)
         {
            dimensions = this.mRenderer.getCollisionCircle();
            circle = new b2CircleShape(dimensions[0]);
            circle.SetLocalPosition(new b2Vec2(dimensions[1],dimensions[2]));
            this.mFixture = body.CreateFixture2(circle,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_RECT)
         {
            polygon = b2PolygonShape.AsBox(w,h);
            this.mFixture = body.CreateFixture2(polygon,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_CIRCLE)
         {
            circle = new b2CircleShape(w);
            this.mFixture = body.CreateFixture2(circle,this.mLevelItem.getItemDensity());
         }
         this.mFixture.SetFriction(this.mLevelItem.getItemFriction());
         this.mFixture.SetRestitution(this.mLevelItem.getItemRestitution());
         this.mDefence = this.mLevelItem.getItemDefence();
         if(this.mLevelItem.mHealthMax > 0)
         {
            this.mHealth = this.mHealthMax = this.mLevelItem.mHealthMax;
         }
         else
         {
            this.mHealth = this.mHealthMax = this.getVolume(true) * this.mLevelItem.getItemStrenght();
         }
         if(this.mLevelItem.mItemType == LevelItem.ITEM_TYPE_BORDER)
         {
            this.mRenderer.visible = false;
         }
         else
         {
            this.mRenderer.setDamagedFrame();
         }
         if(aRotation != 0)
         {
            this.setAngle(aRotation);
         }
         this.updateRendererMiddleOfUpdateCycle();
         this.updateRendererEndOfUpdateCycle(0,1);
         if(this.isTexture())
         {
            this.mLevelObjects.fillLevelTexture(getRect(this.mLevelObjects.mTextureMask));
         }
      }
      
      public static function playSoundEffectStatic(effectIndex:int, soundPath:LevelItemResourcePathSound, channelName:String = "") : void
      {
         var soundClipName:String = soundPath.mPaths[effectIndex];
         if(soundClipName.length > 0)
         {
            if(channelName.length <= 0)
            {
               channelName = soundPath.mSoundChannelName;
            }
            SoundEngine.playSoundFromVariation(soundClipName,channelName);
         }
      }
      
      public function kill(aWorld:b2World) : void
      {
         aWorld.DestroyBody(this.getBody());
         this.mRenderer.kill();
         graphics.clear();
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.isTexture())
         {
            this.mLevelObjects.mTextureMask.removeChild(this);
         }
         else
         {
            this.mLevelObjects.removeChild(this);
         }
         this.mFixture = null;
         this.mNextLinearVelocity = null;
         this.mLevelItem = null;
      }
      
      public function setAngle(a_angle:Number) : void
      {
         this.getBody().SetAngle((360 - a_angle % 360) / (180 / Math.PI));
      }
      
      public function getAngle() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function rotateSmooth(deltaTime:Number = -1) : void
      {
         if(deltaTime != 0)
         {
            this.rotate(deltaTime / 10);
         }
      }
      
      public function rotate(angle:Number, roundUp:Boolean = false) : void
      {
         var temp:Number = NaN;
         var remainder:Number = NaN;
         if(roundUp)
         {
            temp = this.getAngle();
            temp = (temp + 360) % 360;
            remainder = temp % angle;
            if(remainder < angle / 2)
            {
               temp -= remainder;
            }
            else
            {
               temp += angle - remainder;
            }
            this.setAngle(temp);
         }
         this.setAngle(this.getAngle() + angle);
      }
      
      public function rotateAroundPivot(angle:Number, pivot:Point) : void
      {
         this.rotate(angle,true);
         var oldPos:b2Vec2 = this.getBody().GetPosition();
         var oldXToPivot:Number = oldPos.x - pivot.x;
         var oldYToPivot:Number = oldPos.y - pivot.y;
         if(oldXToPivot == 0 && oldYToPivot == 0)
         {
            return;
         }
         var radius:Number = Math.sqrt(oldXToPivot * oldXToPivot + oldYToPivot * oldYToPivot);
         var oldAngle:Number = oldXToPivot / oldYToPivot;
         var oldAngleDegrees:Number = Math.atan(oldAngle) * 180 / Math.PI;
         if(oldYToPivot < 0)
         {
            oldAngleDegrees += 180;
         }
         var newAngleDegrees:Number = oldAngleDegrees + angle;
         var newAngle:Number = newAngleDegrees * Math.PI / 180;
         var x:Number = Math.sin(newAngle) * radius;
         var y:Number = Math.cos(newAngle) * radius;
         var newPos:b2Vec2 = new b2Vec2(pivot.x + x,pivot.y + y);
         this.getBody().SetPosition(newPos);
      }
      
      public function setLinearVelocity(linearVelocity:b2Vec2, applyAngularVelocity:Boolean = false, applyRotationTowards:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(linearVelocity);
         if(applyAngularVelocity)
         {
            this.setAngularVelocityBasedOnLinear();
         }
         if(applyRotationTowards)
         {
            this.setRotationBasedOnLinear();
         }
      }
      
      public function isInCoordinates(x:Number, y:Number) : Boolean
      {
         return this.mFixture.TestPoint(new b2Vec2(x,y));
      }
      
      public function isInsideRectangle(top:Number, bottom:Number, left:Number, right:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= left && this.getBody().GetPosition().x <= right && this.getBody().GetPosition().y >= top && this.getBody().GetPosition().y <= bottom;
      }
      
      public function setLinearVelocityForEndOfUpdateCycle(linearVelocity:b2Vec2) : void
      {
         this.mNextLinearVelocity = linearVelocity;
      }
      
      public function applyNextLinearVelocity() : void
      {
         if(this.mNextLinearVelocity)
         {
            this.setLinearVelocity(this.mNextLinearVelocity,false);
            this.mNextLinearVelocity = null;
         }
      }
      
      public function setAngularVelocityBasedOnLinear(v:b2Vec2 = null) : void
      {
         if(!v)
         {
            v = this.getBody().GetLinearVelocity();
         }
         if(v.x == 0 && v.y == 0)
         {
            this.getBody().SetAngularVelocity(0);
         }
         else
         {
            this.getBody().SetAngularVelocity(Math.atan2(v.x,v.y));
         }
      }
      
      public function setRotationBasedOnLinear(v:b2Vec2 = null) : void
      {
         if(!v)
         {
            v = this.getBody().GetLinearVelocity();
         }
         var angle:Number = Math.atan2(-v.y,v.x) * (180 / Math.PI);
         this.setAngle(angle);
      }
      
      public function setAngularVelocity(angularVelocity:Number) : void
      {
         this.getBody().SetAngularVelocity(angularVelocity);
      }
      
      public function getBody() : b2Body
      {
         return this.mFixture.GetBody();
      }
      
      public function updateB2CoordinatesBasedOnPixels(ax:Number = -9999, ay:Number = -9999) : void
      {
         if(ax != -9999)
         {
            x = ax;
            y = ay;
         }
         this.getBody().GetPosition().x = x * LevelMain.PIXEL_TO_B2_SCALE;
         this.getBody().GetPosition().y = y * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function updateRendererEndOfUpdateCycle(leftOverDeltaTime:Number, totalDeltaTime:Number) : void
      {
         var blur:Number = NaN;
         var setVisualState:Boolean = false;
         if(this.updateSelfExplode(totalDeltaTime))
         {
            setVisualState = true;
         }
         if(this.updateSpecialFrameAnimations(totalDeltaTime))
         {
            setVisualState = true;
         }
         if(this.updateFlyingFrameAnimations(totalDeltaTime))
         {
            setVisualState = true;
         }
         if(this.updateScreamingFrameAnimations(totalDeltaTime))
         {
            setVisualState = true;
         }
         if(this.updateBlinkingFrameAnimations(totalDeltaTime))
         {
            setVisualState = true;
         }
         if(setVisualState)
         {
            this.mRenderer.setVisualState();
         }
         if(this.mPowerUpDamageMultiplier > 1 && this.mRenderer.mGlowFilter)
         {
            blur = 4 + (this.mRenderer.mGlowFilter.blurX - 4 + totalDeltaTime / 20) % 28;
            this.mRenderer.mGlowFilter.blurX = blur;
            this.mRenderer.mGlowFilter.blurY = blur;
            this.mRenderer.filters = [this.mRenderer.mGlowFilter];
         }
         if(this.mRenderer.mSparklesContainer)
         {
            this.mRenderer.updateSparkles(totalDeltaTime);
         }
         if(INTERPOLATE_DISPLAY_OBJECTS)
         {
            this.interpolateRenderer(leftOverDeltaTime);
         }
         else
         {
            rotation = this.mRotationScreenNext;
            x = this.mXScreenNext;
            y = this.mYScreenNext;
         }
      }
      
      public function startSelfExplosion(defaultTime:Number = -1) : void
      {
         this.mSelfExplosionTimer = 0;
         if(defaultTime >= 0)
         {
            this.mSelfExplosionTimerMax = defaultTime;
         }
         else if(this.mObjectName == "BIRD_BLACK")
         {
            this.mSelfExplosionTimerMax = 2000;
         }
         else
         {
            this.mSelfExplosionTimerMax = 5000;
         }
      }
      
      public function updateSelfExplode(deltaTime:Number) : Boolean
      {
         if(this.mSelfExplosionTimer >= 0)
         {
            this.mSelfExplosionTimer += deltaTime;
            if(this.mSelfExplosionTimer > this.mSelfExplosionTimerMax)
            {
               if(this.mObjectName == "BIRD_BLACK")
               {
                  this.mLevelObjects.addExplosions(LevelObjects.EXPLOSION_TYPE_BLACK_BIRD,this.getBody().GetPosition().x,this.getBody().GetPosition().y);
               }
               else
               {
                  this.mLevelObjects.addExplosions(LevelObjects.EXPLOSION_TYPE_DEFAULT,this.getBody().GetPosition().x,this.getBody().GetPosition().y);
               }
               this.mSelfExplosionTimer = -1;
            }
            return true;
         }
         return false;
      }
      
      public function updateRendererMiddleOfUpdateCycle() : void
      {
         var xb2:Number = this.getBody().GetPosition().x;
         var yb2:Number = this.getBody().GetPosition().y;
         this.mRotationScreenPrevious = this.mRotationScreenNext;
         this.mXScreenPrevious = this.mXScreenNext;
         this.mYScreenPrevious = this.mYScreenNext;
         this.mRotationScreenNext = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.mXScreenNext = xb2 / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = yb2 / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function updateSpecialFrameAnimations(deltaTime:Number) : Boolean
      {
         var showIt:Boolean = false;
         var setVisualState:Boolean = false;
         if(this.isBird())
         {
            showIt = false;
            if(this.mSpecialPowerUsed)
            {
               if(this.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  showIt = true;
               }
               else if(this.mObjectName.toUpperCase() == "BIRD_YELLOW" || this.mObjectName.toUpperCase() == "BIRD_GREEN")
               {
                  if(this.mRenderer.mTryToFly)
                  {
                     showIt = true;
                  }
               }
               if(showIt)
               {
                  if(!this.mRenderer.mTryToSpecial)
                  {
                     this.mRenderer.mTryToSpecial = true;
                     setVisualState = true;
                  }
               }
               else if(this.mRenderer.mTryToSpecial)
               {
                  this.mRenderer.mTryToSpecial = false;
                  if(this.mRenderer.mIsSpecial)
                  {
                     this.mRenderer.mIsSpecial = false;
                     setVisualState = true;
                  }
               }
            }
         }
         return setVisualState;
      }
      
      public function updateBlinkingFrameAnimations(deltaTime:Number) : Boolean
      {
         var setVisualState:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.mRenderer.mTryToBlink > 0)
            {
               if(this.mRenderer.mTryToBlink >= LevelObjectRenderer.BLINK_TIME)
               {
                  setVisualState = true;
                  if(this.isPig())
                  {
                     this.playSoundEffect(LevelItemResourcePathSound.SOUND_TALK);
                  }
                  this.mRenderer.mTryToBlink = LevelObjectRenderer.BLINK_TIME - 1;
               }
               this.mRenderer.mTryToBlink -= deltaTime;
               if(this.mRenderer.mTryToBlink <= 0)
               {
                  setVisualState = true;
               }
            }
            else if(this.mRenderer.mIsBlinking)
            {
               this.mRenderer.mTryToBlink = 0;
               this.mRenderer.mIsBlinking = false;
               setVisualState = true;
            }
         }
         return setVisualState;
      }
      
      public function updateFlyingFrameAnimations(deltaTime:Number) : Boolean
      {
         var setVisualState:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.getBody().IsAwake() && this.mHealth == this.mHealthMax)
            {
               if(!this.mRenderer.mTryToFly)
               {
                  this.mRenderer.mTryToFly = true;
                  setVisualState = true;
               }
               if(this.isBird())
               {
                  if((this.mObjectName.toUpperCase() == "BIRD_GREEN" || this.mObjectName.toUpperCase() == "BIRD_WHITE") && this.mSpecialPowerUsed)
                  {
                     this.setAngle(this.getAngle() - deltaTime * 360 / 1000);
                  }
                  else
                  {
                     this.setRotationBasedOnLinear();
                  }
               }
            }
            else if(this.mRenderer.mTryToFly)
            {
               this.mRenderer.mTryToFly = false;
               if(this.mRenderer.mIsFlying)
               {
                  this.mRenderer.mIsFlying = false;
                  setVisualState = true;
               }
            }
         }
         return setVisualState;
      }
      
      public function updateScreamingFrameAnimations(deltaTime:Number) : Boolean
      {
         var setVisualState:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.mRenderer.mTryToScream > 0)
            {
               if(this.mRenderer.mTryToScream >= LevelObjectRenderer.SCREAM_TIME)
               {
                  setVisualState = true;
                  if(this.isBird() && this.mRenderer.mTryToFly)
                  {
                     this.playSoundEffect(LevelItemResourcePathSound.SOUND_FLYING);
                  }
                  else
                  {
                     this.playSoundEffect(LevelItemResourcePathSound.SOUND_SCREAM);
                  }
                  this.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME - 1;
               }
               this.mRenderer.mTryToScream -= deltaTime;
               if(this.mRenderer.mTryToScream <= 0)
               {
                  setVisualState = true;
               }
               else if(this.mLevelObjects.mLevelMain.mLevelState == LevelMain.LEVEL_STATE_FAIL)
               {
               }
            }
            else if(this.mRenderer.mIsScreaming)
            {
               this.mRenderer.mTryToScream = 0;
               this.mRenderer.mIsScreaming = false;
               setVisualState = true;
            }
         }
         return setVisualState;
      }
      
      public function interpolateRenderer(timeLeft:Number, totalTime:Number = -1) : void
      {
         var trailParticles:Array = null;
         var i:Number = NaN;
         if(timeLeft > 0)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + timeLeft + " overriding to 0");
         }
         if(totalTime < 0)
         {
            totalTime = this.mLevelObjects.mLevelMain.mLevelEngine.mTimeStepForLastUpdate * 1000;
         }
         timeLeft *= -1;
         if(this.mXScreenNext == this.mXScreenPrevious || timeLeft == 0)
         {
            this.mInterpolationXOffset = 0;
            x = this.mXScreenNext;
         }
         else
         {
            this.mInterpolationXOffset = timeLeft * (this.mXScreenPrevious - this.mXScreenNext) / totalTime;
            x = this.mXScreenNext + this.mInterpolationXOffset;
         }
         if(this.mYScreenNext == this.mYScreenPrevious || timeLeft == 0)
         {
            this.mInterpolationYOffset = 0;
            y = this.mYScreenNext;
         }
         else
         {
            this.mInterpolationYOffset = timeLeft * (this.mYScreenPrevious - this.mYScreenNext) / totalTime;
            y = this.mYScreenNext + this.mInterpolationYOffset;
         }
         if(this.mRotationScreenNext == this.mRotationScreenPrevious || timeLeft == 0)
         {
            rotation = this.mRotationScreenNext;
         }
         else if(this.mRotationScreenPrevious > this.mRotationScreenNext && this.mRotationScreenPrevious - this.mRotationScreenNext <= 180)
         {
            rotation = this.mRotationScreenNext + timeLeft * (this.mRotationScreenPrevious - this.mRotationScreenNext) / totalTime;
         }
         else if(this.mRotationScreenPrevious > this.mRotationScreenNext && this.mRotationScreenPrevious - this.mRotationScreenNext > 180)
         {
            rotation = this.mRotationScreenNext + timeLeft * (this.mRotationScreenPrevious - 360 - this.mRotationScreenNext) / totalTime;
         }
         else if(this.mRotationScreenPrevious < this.mRotationScreenNext && this.mRotationScreenNext - this.mRotationScreenPrevious <= 180)
         {
            rotation = this.mRotationScreenNext + timeLeft * (this.mRotationScreenPrevious - this.mRotationScreenNext) / totalTime;
         }
         else if(this.mRotationScreenPrevious < this.mRotationScreenNext && this.mRotationScreenNext - this.mRotationScreenPrevious > 180)
         {
            rotation = this.mRotationScreenNext + timeLeft * (this.mRotationScreenPrevious + 360 - this.mRotationScreenNext) / totalTime;
         }
         if(this == AngryBirdsSocial.smLevelMain.mActiveObject)
         {
            trailParticles = AngryBirdsSocial.smLevelMain.mLevelParticles.getGroup(LevelParticles.PARTICLE_GROUP_TRAILS);
            for(i = 0; i < trailParticles.length; i++)
            {
               if(!trailParticles[i].visible && trailParticles[i].x < this.x)
               {
                  trailParticles[i].visible = true;
               }
            }
         }
      }
      
      public function get boxCoordinateInBox2D() : Point
      {
         if(!INTERPOLATE_DISPLAY_OBJECTS)
         {
         }
         return null;
      }
      
      public function isBird() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BIRD;
      }
      
      public function isPig() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_PIG;
      }
      
      public function isTexture() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_TEXTURE;
      }
      
      public function isGround() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BORDER;
      }
      
      public function isBlock() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BLOCK;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_MISC;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return this.isPig() || this.isBlock() || this.isMiscBlock();
      }
      
      public function isBirdReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         if(this.mObjectName == "BIRD_BLACK" && this.mSpecialPowerUsed && this.mSelfExplosionTimer < 0)
         {
            return true;
         }
         if(this.isBird() && this.considerSleeping() && this.mHealth < this.mHealthMax && this.mSelfExplosionTimer < 0)
         {
            this.mSleepingDuration += deltaTime;
            if(this.mSleepingDuration >= BIRDS_SLEEP_TIME_BEFORE_REMOVAL)
            {
               return true;
            }
         }
         else
         {
            this.mSleepingDuration = 0;
         }
         return false;
      }
      
      public function getSpeedVectorMaginitude() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(damage:Number, addScore:Boolean = true, damagedByActiveObject:Boolean = false) : Number
      {
         var score:int = 0;
         var speed:Number = NaN;
         var count:int = 0;
         var angle:Number = NaN;
         var i:int = 0;
         var angle2:Number = NaN;
         if(this.mDefence < 0)
         {
            if(damage > 30)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
            }
            else if(damage > 12)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_DAMAGED);
            }
            else if(damage > 3)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_CLICKED);
            }
            return this.mHealth;
         }
         if(damage < this.mDefence)
         {
            if(damage >= this.mDefence / 2)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_CLICKED);
            }
            if(this.isBird() && this.mHealth == this.mHealthMax)
            {
               this.mHealth = this.mHealthMax - 1;
            }
            return this.mHealth;
         }
         damage -= this.mDefence;
         if(addScore && this.isDamageAwardingScore())
         {
            score = LevelMain.DAMAGE_SCORE_MULTILIER * Math.min(int(damage),int(this.mHealth));
            if(damagedByActiveObject)
            {
               this.mLevelObjects.mLevelMain.addScore(score,this.mHealth > damage,this.getBody().GetPosition().x,this.getBody().GetPosition().y,LevelParticle.getTextMaterialFromEngineMaterial(this.mObjectName));
            }
         }
         this.mHealth -= damage;
         if(this.mLevelObjects.mLevelMain.mEditorMode)
         {
            this.mHealth = this.mHealthMax;
         }
         if(this.mObjectName.toUpperCase() == "BIRD_BLACK" && !this.mSpecialPowerUsed)
         {
            this.mSpecialPowerUsed = true;
            this.startSelfExplosion();
         }
         else if(this.mObjectName.toUpperCase() == "BIRD_WHITE" && this.mSpecialPowerUsed)
         {
            this.mHealth = this.mHealthMax - 1;
         }
         if(this.mHealth < 1 && this.isBird())
         {
            this.mHealth = 1;
         }
         if(this.mHealth < 1)
         {
            this.mHealth = 0;
            LevelObject.playSoundEffectStatic(LevelItemResourcePathSound.SOUND_DESTROYED,this.mLevelItem.mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound,"ChannelDestroyed");
         }
         else
         {
            this.playSoundEffect(LevelItemResourcePathSound.SOUND_DAMAGED);
            if(this.isBird())
            {
               speed = this.getSpeedVectorMaginitude() / 10;
               count = 1 + speed * this.getVolume(false) * 0.15;
               angle = 90;
               for(i = 0; i < count; i++)
               {
                  angle += Math.random() * (720 / count);
                  angle2 = angle / (180 / Math.PI);
                  this.mLevelObjects.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.getBody().GetPosition().x,this.getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(this.mObjectName),speed * Math.cos(angle2),-speed * Math.sin(angle2),5,speed * 20);
               }
            }
         }
         this.mRenderer.setDamagedFrame();
         return this.mHealth;
      }
      
      public function playSoundEffect(effectIndex:int) : void
      {
         LevelObject.playSoundEffectStatic(effectIndex,this.mLevelItem.mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound);
      }
      
      public function getDamageFactor(targetMaterial:String) : Number
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).getDamagaMultiplier(targetMaterial) * this.mPowerUpDamageMultiplier;
      }
      
      public function getVelocityFactor(targetMaterial:String) : Number
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).getVelocityMultiplier(targetMaterial);
      }
      
      public function getMaterialName() : String
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).mName;
      }
      
      public function isFastEnoughToDamage() : Boolean
      {
         return this.getBody().IsAwake() && (this.isBird() && this.mHealth == this.mHealthMax || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function considerSleeping() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         if(Math.abs(this.getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function setPowerUpDamageMultiplier(newDamage:Number = 3) : void
      {
         this.mPowerUpDamageMultiplier = newDamage;
         if(this.mPowerUpDamageMultiplier > 1)
         {
            this.mRenderer.addGlowFilter();
         }
         else
         {
            this.mRenderer.filters = [];
            this.mRenderer.mGlowFilter = null;
         }
      }
      
      public function getVolume(multiplyWithWidthHeightRatio:Boolean) : Number
      {
         var volume:Number = 0;
         if(this.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC)
         {
            volume = this.mRenderer.mW * this.mRenderer.mH * (LevelMain.PIXEL_TO_B2_SCALE * LevelMain.PIXEL_TO_B2_SCALE);
         }
         else
         {
            volume = this.getBody().GetMass() / this.mFixture.GetDensity();
            if(multiplyWithWidthHeightRatio)
            {
               volume *= this.getWidthHeightMultiplier();
            }
         }
         return volume;
      }
      
      public function getWidthHeightMultiplier() : Number
      {
         var ratio:Number = 1;
         return Number(ratio - ratio / 2 * Math.min(10,this.mRenderer.mWidthHeightRatio - 1) / 10);
      }
   }
}
