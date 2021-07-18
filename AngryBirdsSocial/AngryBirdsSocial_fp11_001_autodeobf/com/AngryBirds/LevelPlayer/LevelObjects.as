package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItemMaterial;
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.states.StateLevelLoad;
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
      
      public static const EXPLOSIONS:Array = [[10,500,7.5,600],[10,500,7.5,600],[10,1500,5,150],[15,1750,5,300]];
      
      public static const EXPLOSION_TYPE_DEFAULT:int = 0;
      
      public static const EXPLOSION_TYPE_WHITE_BIRD_EGG:int = 1;
      
      public static const EXPLOSION_TYPE_TNT:int = 2;
      
      public static const EXPLOSION_TYPE_BLACK_BIRD:int = 3;
       
      
      public var mObjects:Array;
      
      public var mTotalObjectCount:int;
      
      public var mLevelMain:LevelMain;
      
      public var mActivateSpecialPower:Boolean;
      
      public var mExplodePreviousActiveObjectOnNextClick:Boolean = false;
      
      public var mExplosions:Array;
      
      public var mTextureFinal:Sprite;
      
      public var mTextureMask:Sprite;
      
      public function LevelObjects(param1:LevelMain, param2:XML)
      {
         var _loc3_:XML = null;
         super();
         this.mLevelMain = param1;
         this.mTotalObjectCount = 0;
         this.mTextureFinal = new Sprite();
         this.mTextureMask = new Sprite();
         addChild(this.mTextureFinal);
         addChild(this.mTextureMask);
         this.mObjects = new Array();
         if(StateLevelLoad.smRunLevelHack)
         {
            param2.@background = "ThemeHills";
         }
         this.addObject(param2.@background,(this.mLevelMain.mLevelBorders.mBorderLeft_B2 + this.mLevelMain.mLevelBorders.mBorderRight_B2) / 2,this.mLevelMain.mLevelBorders.mBorderGround_B2 + LevelBorders.LEVEL_BORDER_GROUND_THICKNESS);
         for each(_loc3_ in param2.Item)
         {
            this.addObject(_loc3_.@id,_loc3_.@x,_loc3_.@y,_loc3_.@rotation);
         }
         this.setTexture(!this.mLevelMain.mEditorMode);
         this.mActivateSpecialPower = false;
         this.mExplosions = new Array();
      }
      
      public function setTexture(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            this.mTextureFinal.visible = true;
            this.mTextureMask.alpha = 0.5;
            this.mTextureFinal.mask = this.mTextureMask;
            _loc2_ = this.mLevelMain.mLevelBackground.mLevelBackgroundInformation.mTextureStrokeColor;
            this.mTextureFinal.filters = [new GlowFilter(_loc2_,1,3,3,10)];
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
      
      public function fillLevelTexture(param1:Rectangle) : void
      {
         var _loc4_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:DisplayObject = null;
         var _loc2_:DisplayObject = new this.mLevelMain.mLevelBackground.mTextureClass();
         var _loc3_:int = _loc2_.width - 2;
         _loc4_ = _loc2_.height - 2;
         var _loc5_:int = param1.top / _loc4_;
         if(param1.top < 0)
         {
            _loc5_--;
         }
         var _loc6_:* = (_loc6_ = int(param1.bottom / _loc4_)) + 1;
         var _loc7_:int = param1.left / _loc3_;
         if(param1.left < 0)
         {
            _loc7_--;
         }
         var _loc8_:* = (_loc8_ = int(param1.right / _loc3_)) + 1;
         var _loc9_:int = _loc7_;
         while(_loc9_ < _loc8_)
         {
            _loc10_ = _loc5_;
            while(_loc10_ < _loc6_)
            {
               (_loc11_ = new this.mLevelMain.mLevelBackground.mTextureClass()).x = _loc9_ * _loc3_;
               _loc11_.y = _loc10_ * _loc4_;
               this.mTextureFinal.addChild(_loc11_);
               _loc10_++;
            }
            _loc9_++;
         }
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0) : LevelObject
      {
         var _loc6_:int = 0;
         Log.log("LevelObjects -> AddObject() id = " + param1 + " x = " + param2 + " y = " + param3 + " rotation = " + param4);
         var _loc5_:LevelObject;
         if((_loc5_ = new LevelObject(this,this.mLevelMain.mLevelEngine.mWorld,this.mTotalObjectCount,param1,param2,param3,param4)).isTexture())
         {
            _loc6_ = 1;
            while(this.mObjects.length > _loc6_ && (this.mObjects[_loc6_] as LevelObject).isTexture())
            {
               _loc6_++;
            }
            this.mObjects.splice(_loc6_,0,_loc5_);
         }
         else
         {
            this.mObjects[this.mObjects.length] = _loc5_;
         }
         return _loc5_;
      }
      
      public function updateLevelObjectsGoingOn() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mObjects.length)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_)
            {
               if(_loc2_.mHealth <= 0)
               {
                  this.removeObject(_loc1_,true,true,true);
                  _loc1_--;
               }
               else
               {
                  _loc2_.applyNextLinearVelocity();
                  _loc2_.updateRendererMiddleOfUpdateCycle();
               }
            }
            _loc1_++;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.mExplosions[this.mExplosions.length] = new Array();
         this.mExplosions[this.mExplosions.length - 1][0] = param2;
         this.mExplosions[this.mExplosions.length - 1][1] = param3;
         this.mExplosions[this.mExplosions.length - 1][2] = EXPLOSIONS[param1][0];
         this.mExplosions[this.mExplosions.length - 1][3] = EXPLOSIONS[param1][1];
         this.mExplosions[this.mExplosions.length - 1][4] = EXPLOSIONS[param1][2];
         this.mExplosions[this.mExplosions.length - 1][5] = EXPLOSIONS[param1][3];
         SoundEngine.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getObjectIndexFromPoint(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.mObjects[_loc3_] as LevelObject)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc3_;
               }
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : LevelObject
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.mObjects.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.mObjects[_loc3_] as LevelObject)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function updateLevelObjectsComplete(param1:Number, param2:Number) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:LevelObject = null;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:LevelObject = null;
         var _loc30_:LevelObject = null;
         var _loc31_:LevelObject = null;
         var _loc32_:Number = NaN;
         var _loc3_:LevelObject = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc4_] as LevelObject;
            _loc3_.updateRendererEndOfUpdateCycle(param2,param1);
            if(this.checkObjectLocation(_loc3_,_loc4_))
            {
               _loc3_.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
               this.removeObject(_loc4_,false,false,false);
               _loc4_--;
            }
            else if(_loc3_.isBird() && _loc3_.isBirdReadyToBeRemoved(param1))
            {
               _loc3_.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
               this.removeObject(_loc4_,false,true,true);
               _loc4_--;
            }
            else if(_loc3_.isBird() && _loc3_.mTargetHorizontalSpeed != 0 && _loc3_.mRenderer.mTryToSpecial)
            {
               if(_loc3_.mTargetHorizontalSpeed < _loc3_.getBody().GetLinearVelocity().x)
               {
                  _loc3_.getBody().GetLinearVelocity().x = _loc3_.getBody().GetLinearVelocity().x - param1 / 10;
                  if(_loc3_.mTargetHorizontalSpeed >= _loc3_.getBody().GetLinearVelocity().x)
                  {
                     _loc3_.mTargetHorizontalSpeed = 0;
                  }
               }
               else if(_loc3_.mTargetHorizontalSpeed > _loc3_.getBody().GetLinearVelocity().x)
               {
                  _loc3_.getBody().GetLinearVelocity().x = _loc3_.getBody().GetLinearVelocity().x + param1 / 10;
                  if(_loc3_.mTargetHorizontalSpeed <= _loc3_.getBody().GetLinearVelocity().x)
                  {
                     _loc3_.mTargetHorizontalSpeed = 0;
                  }
               }
            }
            else if(_loc3_.isBird() && _loc3_.mTargetVerticalSpeed != 0 && _loc3_.mRenderer.mTryToSpecial && _loc3_.mHealth == _loc3_.mHealthMax)
            {
               if(_loc3_.mTargetVerticalSpeed < _loc3_.getBody().GetLinearVelocity().y)
               {
                  _loc3_.getBody().GetLinearVelocity().y = _loc3_.getBody().GetLinearVelocity().y - param1 / 10;
               }
            }
            _loc4_++;
         }
         while(this.mExplosions.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.mObjects.length)
            {
               _loc3_ = this.mObjects[_loc5_] as LevelObject;
               _loc7_ = this.mExplosions[0][0];
               _loc8_ = this.mExplosions[0][1];
               _loc9_ = _loc3_.getBody().GetPosition().x - _loc7_;
               _loc10_ = _loc3_.getBody().GetPosition().y - _loc8_;
               _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
               _loc12_ = this.mExplosions[0][2];
               _loc13_ = this.mExplosions[0][4];
               if(_loc11_ <= _loc12_)
               {
                  _loc14_ = this.mExplosions[0][3];
                  if(_loc11_ > 1)
                  {
                     _loc14_ /= _loc11_;
                  }
                  _loc15_ = _loc14_ * (_loc9_ / _loc11_);
                  _loc16_ = _loc14_ * (_loc10_ / _loc11_);
                  _loc3_.getBody().ApplyImpulse(new b2Vec2(_loc15_,_loc16_),new b2Vec2(_loc7_,_loc8_));
               }
               if(_loc11_ <= _loc13_)
               {
                  _loc17_ = this.mExplosions[0][5];
                  if(_loc11_ > 1)
                  {
                     _loc17_ /= _loc11_;
                  }
                  _loc3_.applyDamage(_loc17_,false,false);
               }
               _loc5_++;
            }
            this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSION_CORE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,this.mExplosions[0][0],this.mExplosions[0][1],600,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC);
            _loc6_ = 30;
            while(_loc6_ < 150)
            {
               _loc18_ = 0.75 * _loc12_ + Math.random() * _loc12_;
               _loc19_ = 1250 + Math.random() * 750;
               _loc20_ = _loc6_ / (180 / Math.PI);
               this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_EXPLOSIONS_PARTICLE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.mExplosions[0][0],this.mExplosions[0][1],_loc19_,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC,_loc18_ * Math.cos(_loc20_),-_loc18_ * Math.sin(_loc20_),20,0);
               _loc6_ = (_loc6_ += 4) + 1;
            }
            this.mExplosions.splice(0,1);
         }
         if(this.mActivateSpecialPower)
         {
            if((_loc21_ = this.mLevelMain.mActiveObject) && !_loc21_.mSpecialPowerUsed)
            {
               if(_loc21_.mObjectName.toUpperCase() == "BIRD_BLUE")
               {
                  _loc22_ = _loc21_.getBody().GetPosition().x;
                  _loc23_ = _loc21_.getBody().GetPosition().y;
                  _loc24_ = _loc21_.getBody().GetLinearVelocity().x;
                  _loc25_ = _loc21_.getBody().GetLinearVelocity().y;
                  _loc26_ = Math.sqrt(_loc24_ * _loc24_ + _loc25_ * _loc25_);
                  _loc27_ = -_loc24_ / _loc26_;
                  _loc28_ = _loc25_ / _loc26_;
                  (_loc29_ = this.addObject("BIRD_BLUE",_loc22_ - _loc28_,_loc23_ - _loc27_)).setLinearVelocity(new b2Vec2(_loc24_ - 7 * _loc28_,_loc25_ - 7 * _loc27_));
                  this.mLevelMain.addTrailingObject(_loc29_);
                  (_loc30_ = this.addObject("BIRD_BLUE",_loc22_ + _loc28_,_loc23_ + _loc27_)).setLinearVelocity(new b2Vec2(_loc24_ + 7 * _loc28_,_loc25_ + 7 * _loc27_));
                  this.mLevelMain.addTrailingObject(_loc30_);
               }
               else if(_loc21_.mObjectName.toUpperCase() == "BIRD_YELLOW")
               {
                  _loc21_.speedUpObject(LevelSlingshot.BIRD_LAUNCH_FORCE);
               }
               else if(_loc21_.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  _loc22_ = _loc21_.getBody().GetPosition().x;
                  _loc23_ = _loc21_.getBody().GetPosition().y;
                  (_loc31_ = this.addObject("MISC_WHITE_BIRD_EGG",_loc22_,_loc23_ + 1)).getBody().SetLinearVelocity(new b2Vec2(0,100));
                  this.mLevelMain.mActiveObject = _loc31_;
                  _loc21_.getBody().ApplyImpulse(new b2Vec2(30 * _loc21_.getBody().GetMass(),-60 * _loc21_.getBody().GetMass()),new b2Vec2(_loc22_ - 0.5,_loc23_));
               }
               else if(_loc21_.mObjectName.toUpperCase() == "BIRD_BLACK")
               {
                  _loc21_.startSelfExplosion(100);
               }
               else if(_loc21_.mObjectName.toUpperCase() == "BIRD_GREEN")
               {
                  if((_loc32_ = _loc21_.getBody().GetLinearVelocity().x) != 0)
                  {
                     _loc21_.mTargetHorizontalSpeed = -_loc32_ * 1.5;
                  }
               }
               _loc21_.playSoundEffect(LevelItemResourcePathSound.SOUND_SPECIAL_EFFECT);
               _loc21_.mSpecialPowerUsed = true;
            }
            this.mActivateSpecialPower = false;
         }
      }
      
      public function explodePreviousActiveObjects() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc3_:Number = NaN;
         this.mExplodePreviousActiveObjectOnNextClick = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.mObjects.length)
         {
            _loc2_ = this.mObjects[_loc1_];
            if(_loc2_ && _loc2_.mObjectName.toUpperCase() == "BIRD_BLACK")
            {
               if(!_loc2_.mSpecialPowerUsed)
               {
                  _loc2_.startSelfExplosion(100);
               }
               else if(_loc2_.mSelfExplosionTimer > 0)
               {
                  _loc3_ = _loc2_.mSelfExplosionTimer / _loc2_.mSelfExplosionTimerMax;
                  _loc2_.mSelfExplosionTimerMax = 200;
                  _loc2_.mSelfExplosionTimer = _loc2_.mSelfExplosionTimerMax * _loc3_;
               }
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function checkObjectLocation(param1:LevelObject, param2:int) : Boolean
      {
         if(StateLevelLoad.smRunLevelHack)
         {
            return false;
         }
         if(param1 && param1.mLevelItem.getItemBodyType() != LevelItemMaterial.BODY_TYPE_STATIC && this.mLevelMain.mLevelBorders.isOutOfLevel(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObject(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:LevelObject;
         if((_loc5_ = this.mObjects[param1] as LevelObject) == this.mLevelMain.mActiveObject)
         {
            this.mLevelMain.mActiveObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.mLevelItem.mScore,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,LevelParticle.getTextMaterialFromEngineMaterial(_loc5_.mObjectName));
         }
         if(param3)
         {
            if(_loc5_.isPig())
            {
               _loc6_ = !!_loc5_.mKilledByHeadshot ? LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT : LevelParticle.PARTICLE_NAME_PIG_DESTRUCTION;
               this.mLevelMain.mLevelParticles.addParticle(_loc6_,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 1,2000,"",LevelParticle.PARTICLE_MATERIAL_PIGS);
            }
            else if(_loc5_.isBird())
            {
               _loc7_ = 5;
               _loc8_ = _loc5_.getVolume(false) + 1;
               _loc9_ = 90;
               _loc10_ = 0;
               while(_loc10_ < _loc8_)
               {
                  _loc11_ = (_loc9_ += Math.random() * (720 / _loc8_)) / (180 / Math.PI);
                  _loc12_ = (_loc12_ = -_loc5_.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc12_ * 2;
                  _loc13_ = (_loc13_ = -_loc5_.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc13_ * 2;
                  this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,_loc5_.getBody().GetPosition().x + _loc12_,_loc5_.getBody().GetPosition().y + _loc13_,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(_loc5_.mObjectName),_loc7_ * Math.cos(_loc11_),-_loc7_ * Math.sin(_loc11_),5,_loc7_ * 20);
                  _loc10_++;
               }
            }
            else if(_loc5_.isBlock() || _loc5_.isMiscBlock())
            {
               _loc7_ = 4;
               _loc8_ = Math.min(49,Math.max(1,_loc5_.getVolume(false))) + 1;
               _loc9_ = 90;
               _loc10_ = 0;
               while(_loc10_ < _loc8_)
               {
                  _loc11_ = (_loc9_ += Math.random() * (720 / _loc8_)) / (180 / Math.PI);
                  _loc12_ = (_loc12_ = -_loc5_.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc12_ * 2;
                  _loc13_ = (_loc13_ = -_loc5_.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc13_ * 2;
                  this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,_loc5_.getBody().GetPosition().x + _loc12_,_loc5_.getBody().GetPosition().y + _loc13_,1750 + Math.random() * 500,"",LevelParticle.getParticleMaterialFromEngineMaterial(_loc5_.mObjectName),_loc7_ * Math.cos(_loc11_),-_loc7_ * Math.sin(_loc11_),10,_loc7_ * 50);
                  _loc10_++;
               }
               this.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_STATIC_PARTICLE,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 1,1000,"",LevelParticle.getParticleMaterialFromEngineMaterial(_loc5_.mObjectName));
            }
         }
         if(param4)
         {
            if(_loc5_.getMaterialName().toUpperCase() == "WHITE_EGG" || _loc5_.getMaterialName().toUpperCase() == "TNT")
            {
               if(_loc5_.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG")
               {
                  this.addExplosions(EXPLOSION_TYPE_WHITE_BIRD_EGG,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y);
               }
               else
               {
                  this.addExplosions(EXPLOSION_TYPE_TNT,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y);
               }
            }
         }
         _loc5_.kill(this.mLevelMain.mLevelEngine.mWorld);
         _loc5_ = null;
         this.mObjects[param1] = null;
         this.mObjects.splice(param1,1);
      }
      
      public function getObjectFromFixture(param1:b2Fixture) : LevelObject
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            if(LevelObject(this.mObjects[_loc2_]).mFixture == param1)
            {
               return LevelObject(this.mObjects[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         x = -param1;
         y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.isPig() && _loc3_.mHealth > 0)
            {
               if(!param1 || _loc3_.mRenderer.mTryToBlink <= 0 && _loc3_.mRenderer.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:LevelObject = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.mObjects.length)
         {
            if((_loc4_ = this.mObjects[_loc3_] as LevelObject) && _loc4_.isPig() && _loc4_.mHealth > 0)
            {
               if(!param1 || _loc4_.mRenderer.mTryToBlink <= 0 && _loc4_.mRenderer.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.isPig() && _loc3_.mHealth > 0)
            {
               _loc3_.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME * param1;
            }
            _loc2_++;
         }
      }
      
      public function isBirdsAlive() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mObjects.length)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.isBird() && _loc2_.mHealth > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mObjects.length)
         {
            _loc2_ = this.mObjects[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.mHealth > 0 && _loc2_.mObjectType != LevelItem.ITEM_TYPE_BORDER)
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.considerSleeping())
               {
                  return false;
               }
               if(_loc2_.isBird() && _loc2_.mHealth > 0)
               {
                  return false;
               }
            }
            _loc1_++;
         }
         return true;
      }
      
      public function getRandomPig(param1:Boolean = false) : LevelObject
      {
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.mObjects.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.mObjects[_loc5_]) && _loc6_.isPig() && _loc6_.mHealth > 0)
               {
                  if(!param1 || _loc6_.mRenderer.mTryToBlink <= 0 && _loc6_.mRenderer.mTryToScream <= 0)
                  {
                     _loc4_++;
                     if(_loc4_ >= _loc3_)
                     {
                        return _loc6_;
                     }
                  }
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function getMaxScore() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc1_ += (this.mObjects[_loc2_] as LevelObject).mLevelItem.mScore;
            if((this.mObjects[_loc2_] as LevelObject).isDamageAwardingScore())
            {
               _loc1_ += LevelMain.DAMAGE_SCORE_MULTILIER * int((this.mObjects[_loc2_] as LevelObject).mHealthMax);
            }
            _loc2_++;
         }
         return int(_loc1_ + this.mLevelMain.mLevelSlingshot.getMaxScore());
      }
      
      public function shouldIgnoreCollision(param1:LevelObject, param2:LevelObject, param3:Boolean = true) : Boolean
      {
         if(!param1 || !param2)
         {
            return true;
         }
         if(param3 && !param1.isFastEnoughToDamage() && !param2.isFastEnoughToDamage())
         {
            return true;
         }
         if(param3 && param1.isBird() && param2.isBird())
         {
            return true;
         }
         if(param1.isBird() && param2.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || param2.isBird() && param1.mObjectName.toUpperCase() == "MISC_WHITE_BIRD_EGG")
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc3_:LevelObject = this.getObjectFromFixture(param1);
         var _loc4_:LevelObject = this.getObjectFromFixture(param2);
         if(this.shouldIgnoreCollision(_loc3_,_loc4_))
         {
            return;
         }
         var _loc5_:Number = 10;
         var _loc6_:Number = 1;
         var _loc7_:Number = 1;
         var _loc8_:Number = 1;
         var _loc9_:Number = 1;
         _loc6_ = _loc3_.getDamageFactor(_loc4_.getMaterialName());
         _loc7_ = _loc3_.getVelocityFactor(_loc4_.getMaterialName());
         _loc8_ = _loc4_.getDamageFactor(_loc3_.getMaterialName());
         _loc9_ = _loc4_.getVelocityFactor(_loc3_.getMaterialName());
         var _loc10_:Number = _loc3_.getBody().GetMass() * _loc3_.getBody().GetLinearVelocity().x - _loc4_.getBody().GetMass() * _loc4_.getBody().GetLinearVelocity().x;
         var _loc11_:Number = _loc3_.getBody().GetMass() * _loc3_.getBody().GetLinearVelocity().y - _loc4_.getBody().GetMass() * _loc4_.getBody().GetLinearVelocity().y;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / _loc5_;
         var _loc13_:Number = _loc6_ * _loc12_;
         var _loc14_:Number = _loc8_ * _loc12_;
         var _loc15_:Number = Math.max(0,_loc3_.mHealth);
         var _loc16_:Number = Math.max(0,_loc4_.mHealth);
         var _loc17_:Number = _loc3_.applyDamage(_loc14_,true,_loc4_.isBird());
         var _loc18_:Number = _loc4_.applyDamage(_loc13_,true,_loc3_.isBird());
         if(_loc3_.isPig() && _loc17_ <= 0 && _loc4_.isBird() && _loc16_ == _loc4_.mHealthMax)
         {
            _loc3_.mKilledByHeadshot = true;
         }
         else if(_loc4_.isPig() && _loc18_ <= 0 && _loc3_.isBird() && _loc15_ == _loc3_.mHealthMax)
         {
            _loc4_.mKilledByHeadshot = true;
         }
         var _loc19_:Boolean;
         if(_loc19_ = false)
         {
            Log.log("--- NEW COLLISION ---");
            Log.log("Mat Dam Factor1 = " + _loc6_ + " Mat Dam Factor2 = " + _loc8_ + " Mat Vel Factor1 = " + _loc7_ + " Mat Vel Factor2 = " + _loc9_);
            Log.log("Object1: " + _loc3_.mObjectName + " force1 = " + _loc13_ + " obj health1 = " + _loc15_ + " new health1 = " + _loc17_);
            Log.log("Object2: " + _loc4_.mObjectName + " force2 = " + _loc14_ + " obj health2 = " + _loc16_ + " new health2 = " + _loc18_);
         }
         if(_loc17_ <= 0)
         {
            if((_loc20_ = (_loc20_ = (_loc14_ - _loc15_) / _loc14_) * _loc9_) > 1)
            {
               _loc20_ = 1;
            }
            if(_loc19_)
            {
               Log.log(_loc3_.mObjectName + " is killed. Speed Multiplier for " + _loc4_.mObjectName + " is " + _loc20_);
            }
            _loc4_.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(_loc4_.getBody().GetLinearVelocity().x * _loc20_,_loc4_.getBody().GetLinearVelocity().y * _loc20_));
         }
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc13_ - _loc16_) / _loc13_) * _loc7_) > 1)
            {
               _loc21_ = 1;
            }
            if(_loc19_)
            {
               Log.log(_loc4_.mObjectName + " is killed. Speed Multiplier for " + _loc3_.mObjectName + " is " + _loc21_);
            }
            _loc3_.setLinearVelocityForEndOfUpdateCycle(new b2Vec2(_loc3_.getBody().GetLinearVelocity().x * _loc21_,_loc3_.getBody().GetLinearVelocity().y * _loc21_));
         }
      }
      
      public function getLevelObjectsinXML() : String
      {
         var _loc3_:LevelObject = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && !_loc3_.isGround())
            {
               _loc4_ = _loc3_.getBody().GetPosition().x;
               _loc5_ = _loc3_.getBody().GetPosition().y;
               _loc6_ = _loc3_.getAngle();
               _loc7_ = _loc3_.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
               _loc7_ = true;
               _loc4_ = LevelEditor.roundUpCoordinate(_loc4_,_loc7_);
               _loc5_ = LevelEditor.roundUpCoordinate(_loc5_,_loc7_);
               _loc6_ = LevelEditor.roundUpCoordinate(_loc6_,_loc7_);
               _loc1_ += "    <Item id = \"" + _loc3_.mObjectName + "\" x = \"" + _loc4_ + "\" y = \"" + _loc5_ + "\" rotation = \"" + _loc6_ + "\"></Item>" + AngryBirdsSocial.LINE_BREAK_XML;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getWorldinXMLForJSON() : String
      {
         var _loc3_:LevelObject = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && !_loc3_.isGround())
            {
               _loc4_ = _loc3_.getBody().GetPosition().x;
               _loc5_ = _loc3_.getBody().GetPosition().y;
               _loc6_ = _loc3_.getAngle();
               _loc7_ = _loc3_.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
               _loc7_ = true;
               _loc4_ = LevelEditor.roundUpCoordinate(_loc4_,_loc7_);
               _loc5_ = LevelEditor.roundUpCoordinate(_loc5_,_loc7_);
               _loc6_ = LevelEditor.roundUpCoordinate(_loc6_,_loc7_);
               _loc1_ += "<Item id = \"" + _loc3_.mObjectName + "\" x = \"" + _loc4_ + "\" y = \"" + _loc5_ + "\" rotation = \"" + _loc6_ + "\" angle = \"" + _loc6_ + "\" />" + AngryBirdsSocial.LINE_BREAK_XML;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getWorldinJSON() : String
      {
         var _loc4_:LevelObject = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = false;
         var _loc1_:String = "";
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.mObjects.length)
         {
            if((_loc4_ = this.mObjects[_loc3_] as LevelObject) && !_loc4_.isGround())
            {
               _loc2_++;
               _loc5_ = _loc4_.getBody().GetPosition().x;
               _loc6_ = _loc4_.getBody().GetPosition().y;
               _loc7_ = _loc4_.getAngle();
               _loc8_ = _loc4_.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
               _loc8_ = true;
               _loc5_ = LevelEditor.roundUpCoordinate(_loc5_,_loc8_);
               _loc6_ = LevelEditor.roundUpCoordinate(_loc6_,_loc8_);
               _loc7_ = LevelEditor.roundUpCoordinate(_loc7_,_loc8_);
               _loc1_ += "\"block_" + _loc2_ + "\": {\"id\":\"" + _loc4_.mObjectName + "\"" + ",\"x\":\"" + _loc5_ + "\"" + ",\"y\":\"" + _loc6_ + "\"" + ",\"rotation\":\"" + _loc7_ + "\",\"angle\":\"" + _loc7_ + "\" }";
               if(_loc3_ + 1 < this.mObjects.length)
               {
                  _loc1_ += "," + AngryBirdsSocial.LINE_BREAK_XML;
               }
               else
               {
                  _loc1_ += AngryBirdsSocial.LINE_BREAK_XML;
               }
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function getBlocksCount() : Number
      {
         var _loc3_:LevelObject = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && !_loc3_.isGround())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getLevelDataInArrayFormat(param1:Boolean = false) : Array
      {
         var _loc4_:LevelObject = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = false;
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < this.mObjects.length)
         {
            _loc5_ = (_loc4_ = this.mObjects[_loc3_] as LevelObject).getBody().GetPosition().x;
            _loc6_ = _loc4_.getBody().GetPosition().y;
            _loc7_ = _loc4_.getAngle();
            _loc8_ = _loc4_.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC;
            _loc8_ = true;
            _loc5_ = LevelEditor.roundUpCoordinate(_loc5_,_loc8_);
            _loc6_ = LevelEditor.roundUpCoordinate(_loc6_,_loc8_);
            _loc7_ = LevelEditor.roundUpCoordinate(_loc7_,_loc8_);
            if(_loc4_ && (!_loc4_.isGround() || param1))
            {
               _loc2_[_loc2_.length] = new Array(_loc4_.mObjectName,_loc5_,_loc6_,_loc7_);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function loadLevelFromArrayFormat(param1:Array, param2:Boolean = false) : void
      {
         this.removeAllTheObjects(param2);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            this.addObject(param1[_loc3_][0],param1[_loc3_][1],param1[_loc3_][2],param1[_loc3_][3]);
            _loc3_++;
         }
      }
      
      public function removeAllTheObjects(param1:Boolean = false) : void
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.mObjects.length;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.mObjects[_loc2_] as LevelObject;
            if(_loc3_ && (!_loc3_.isGround() || param1))
            {
               _loc3_ = null;
               this.removeObject(_loc2_);
            }
            _loc2_--;
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
      
      public function getObjectIndex(param1:LevelObject) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mObjects.length)
         {
            if(this.mObjects[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}
