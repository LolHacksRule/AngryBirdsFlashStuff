package com.angrybirds.data.level.item
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.display.DisplayObject;
   
   public class LevelItemSpace extends LevelItem
   {
       
      
      private var mLuaObject:Object;
      
      private var mDamageSprites:Vector.<DamageSpriteDefinition>;
      
      private var mDensity:Number;
      
      private var mFriction:Number;
      
      private var mRestitution:Number;
      
      private var mStrength:Number;
      
      private var mDefence:Number;
      
      private var mZOrder:int;
      
      private var mIsColliding:Boolean;
      
      private var mDestroyedSound:String;
      
      private var mDamageSound:String;
      
      private var mCollisionSound:String;
      
      protected var mSoundManagerLua:LevelItemSoundManagerLua;
      
      public function LevelItemSpace(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, destroyedScoreInc:int, front:Boolean = false)
      {
         var damageSpriteLuaObject:Object = null;
         var particleAmount:int = 0;
         this.mDamageSprites = new Vector.<DamageSpriteDefinition>();
         this.mLuaObject = luaObject;
         this.mIsColliding = luaObject.collision != undefined ? Boolean(luaObject.collision) : true;
         if(material != null)
         {
            this.mDensity = luaObject.density != undefined ? Number(luaObject.density) : Number(material.density);
            this.mFriction = luaObject.friction != undefined ? Number(luaObject.friction) : Number(material.friction);
            this.mRestitution = luaObject.restitution != undefined ? Number(luaObject.restitution) : Number(material.restitution);
            this.mStrength = luaObject.strength != undefined ? Number(luaObject.strength) : Number(material.strength);
            this.mDefence = luaObject.defence != undefined ? Number(luaObject.defence) : Number(material.defence);
         }
         this.mDestroyedSound = luaObject.destroyedSound != undefined ? luaObject.destroyedSound : null;
         this.mDamageSound = luaObject.damageSound != undefined ? luaObject.damageSound : null;
         this.mCollisionSound = luaObject.collisionSound != undefined ? luaObject.collisionSound : null;
         var materialSpace:LevelItemMaterialSpace = material as LevelItemMaterialSpace;
         if(materialSpace)
         {
            this.mZOrder = luaObject.z_order != undefined ? int(luaObject.z_order) : int(materialSpace.zOrder);
         }
         for each(damageSpriteLuaObject in this.mLuaObject.damageSprites)
         {
            this.mDamageSprites.push(new DamageSpriteDefinition(damageSpriteLuaObject.sprite,damageSpriteLuaObject.max,damageSpriteLuaObject.min,damageSpriteLuaObject.particles || ""));
         }
         this.mDamageSprites.sort(this.sortOnMaxHealth);
         particleAmount = !!luaObject.particleAmount ? int(luaObject.particleAmount) : -1;
         super(luaObject.definition,itemType,material,resourcePathsSound,null,destroyedScoreInc,luaObject.floatingScoreFont,luaObject.damageScore != undefined ? int(luaObject.damageScore) : -1,"",luaObject.strength != undefined ? int(luaObject.strength) : (!!material ? int(material.strength) : -1),luaObject.scale != undefined ? Number(luaObject.scale) : Number(1),front,"",1,particleAmount,false,luaObject.levelGoal);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.mIsColliding;
      }
      
      public function playSoundLua(soundGroupName:String, soundChannel:String = null, loopCount:Number = 0, startTime:Number = 0) : void
      {
         if(this.mSoundManagerLua)
         {
            this.mSoundManagerLua.playSound(soundGroupName,soundChannel,loopCount,startTime);
         }
      }
      
      private function sortOnMaxHealth(a:DamageSpriteDefinition, b:DamageSpriteDefinition) : int
      {
         if(a.maxHealth > b.maxHealth)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : ShapeDefinition
      {
         var dimensions:Rectangle = null;
         var width:Number = NaN;
         var height:Number = NaN;
         var extraMargin:Number = NaN;
         var radius:Number = NaN;
         var vertices:Vector.<b2Vec2> = null;
         var originalShape:PolygonShapeDefinition = null;
         var boundingBox:Array = null;
         var centerX:Number = NaN;
         var centerY:Number = NaN;
         var vertex:Object = null;
         var vector:b2Vec2 = null;
         var magicScale:Number = 0.92;
         if(!mShape)
         {
            extraMargin = b2Settings.LINEAR_SLOP_COMPENSATION_FLASH;
            if(this.isMaterialStatic)
            {
               magicScale = 1;
               extraMargin = 0;
            }
            if(this.mLuaObject.scale)
            {
               magicScale = this.mLuaObject.scale;
            }
            switch(String(this.mLuaObject.type).toLowerCase())
            {
               case "box":
                  if(this.mLuaObject.width && this.mLuaObject.height)
                  {
                     if(this.mLuaObject.scale)
                     {
                        width = this.mLuaObject.width * this.mLuaObject.scale;
                        height = this.mLuaObject.height * this.mLuaObject.scale;
                     }
                     else
                     {
                        width = this.mLuaObject.width;
                        height = this.mLuaObject.height;
                     }
                  }
                  else
                  {
                     dimensions = this.getGraphicsDimensions();
                     width = dimensions.width * LevelMain.PIXEL_TO_B2_SCALE * magicScale;
                     height = dimensions.height * LevelMain.PIXEL_TO_B2_SCALE * magicScale;
                  }
                  width -= extraMargin * 2;
                  height -= extraMargin * 2;
                  mShape = new RectangleShapeDefinition(width,height);
                  break;
               case "circle":
                  radius = 0;
                  if(this.mLuaObject.radius)
                  {
                     radius = this.mLuaObject.radius;
                  }
                  else if(this.mLuaObject.width)
                  {
                     radius = this.mLuaObject.width / 2;
                  }
                  else
                  {
                     dimensions = this.getGraphicsDimensions();
                     radius = dimensions.width * LevelMain.PIXEL_TO_B2_SCALE * mScale / 2 * magicScale;
                     radius -= extraMargin * 2;
                  }
                  mShape = new CircleShapeDefinition(radius,new Point(0,0));
                  break;
               case "polygon":
                  if(this.mLuaObject.width && this.mLuaObject.height)
                  {
                     if(this.mLuaObject.scale)
                     {
                        width = this.mLuaObject.width * this.mLuaObject.scale;
                        height = this.mLuaObject.height * this.mLuaObject.scale;
                     }
                     else
                     {
                        width = this.mLuaObject.width;
                        height = this.mLuaObject.height;
                     }
                  }
                  else
                  {
                     dimensions = this.getGraphicsDimensions();
                     width = dimensions.width * LevelMain.PIXEL_TO_B2_SCALE * mScale;
                     height = dimensions.height * LevelMain.PIXEL_TO_B2_SCALE * mScale;
                     if(this.getItemDensity() != 0)
                     {
                        width *= magicScale;
                        height *= magicScale;
                     }
                  }
                  vertices = new Vector.<b2Vec2>(0);
                  for each(vertex in this.mLuaObject.vertices)
                  {
                     vertices.push(new b2Vec2((vertex.x - 0.5) * width,(vertex.y - 0.5) * height));
                  }
                  originalShape = new PolygonShapeDefinition(vertices);
                  boundingBox = originalShape.getBoundingBox();
                  centerX = (boundingBox[0].x + boundingBox[1].x) / 2;
                  centerY = (boundingBox[0].y + boundingBox[1].y) / 2;
                  for each(vector in vertices)
                  {
                     if(vector.x > centerX)
                     {
                        vector.x -= extraMargin;
                     }
                     else if(vector.x < centerX)
                     {
                        vector.x += extraMargin;
                     }
                     if(vector.y > centerY)
                     {
                        vector.y -= extraMargin;
                     }
                     else if(vector.y < centerY)
                     {
                        vector.y += extraMargin;
                     }
                  }
                  mShape = new PolygonShapeDefinition(vertices);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.mLuaObject.type + "\' for item \'" + this.mLuaObject.definition + "\'.");
            }
         }
         return mShape;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var frameList:Array = null;
         var frameTimeStamps:Array = null;
         var frames:Array = null;
         var id:int = 0;
         var damageFrame:DamageSpriteDefinition = null;
         if(this.mLuaObject.animations || this.mLuaObject.spriteAnimation)
         {
            return this.readAnimations(this.mLuaObject.animations,this.mLuaObject.spriteAnimation);
         }
         if(this.mDamageSprites.length == 0)
         {
            frameTimeStamps = [];
            if(this.mLuaObject.themeTexture)
            {
               frameList = [this.mLuaObject.themeTexture];
            }
            else
            {
               frameList = [this.mLuaObject.sprite];
            }
            return [[LevelObject.ANIMATION_NORMAL,[["1",frameList,frameTimeStamps]]]];
         }
         frames = [["1",[this.mLuaObject.sprite]]];
         id = 1;
         for each(damageFrame in this.mDamageSprites)
         {
            if(damageFrame.maxHealth < 100)
            {
               id++;
               frames.push([id.toString(),[damageFrame.spriteName]]);
            }
         }
         return [[LevelObject.ANIMATION_NORMAL,frames]];
      }
      
      protected function readAnimations(animationsWebStyle:Object, animationsMobileStyle:Object) : Array
      {
         var luaAnimationDef:Object = null;
         var sound:Array = null;
         var frameList:Array = null;
         var frameTimeStamps:Array = null;
         var channel:String = null;
         var damageIndex:uint = 0;
         var graphicDef:Object = null;
         var frames:Array = null;
         var frameArray:Array = null;
         var damageRangeMax:int = 0;
         var damageRangeMin:int = 0;
         var index:int = 0;
         var frameTimeStamp:Number = NaN;
         var frameTimes:Array = null;
         var normalAnimationFound:Boolean = false;
         var startAnimation:String = null;
         var animations:Object = null;
         var counter:uint = 0;
         var id:* = null;
         var v:Object = null;
         var animationDefinitions:Array = new Array();
         if(animationsWebStyle)
         {
            for each(luaAnimationDef in animationsWebStyle)
            {
               if(luaAnimationDef.id)
               {
                  sound = [];
                  if(luaAnimationDef.sound)
                  {
                     channel = !!luaAnimationDef.sound.channel ? luaAnimationDef.sound.channel : SoundEngine.DEFAULT_CHANNEL_NAME;
                     sound.push([luaAnimationDef.sound.name,channel]);
                  }
                  frameList = [];
                  frameTimeStamps = [];
                  if(luaAnimationDef.graphic)
                  {
                     damageIndex = 0;
                     for each(graphicDef in luaAnimationDef.graphic)
                     {
                        damageIndex++;
                        frames = [];
                        frameArray = graphicDef.frames;
                        damageRangeMax = !!graphicDef.max ? int(graphicDef.max) : 100;
                        damageRangeMin = graphicDef.min;
                        for(index = 0; index < frameArray.length; index++)
                        {
                           frames.push(frameArray[index]);
                           frameTimeStamp = 40;
                           frameTimes = graphicDef.frameTime;
                           if(frameTimes != null && frameTimes.length > 0)
                           {
                              if(frameTimes[index] != null)
                              {
                                 frameTimeStamp = frameTimes[index];
                              }
                              else
                              {
                                 frameTimeStamp = frameTimes[0];
                              }
                           }
                           if(frameTimes != null)
                           {
                              frameTimeStamps.push(frameTimeStamp);
                           }
                        }
                        frameList.push([damageIndex.toString(),frames,frameTimeStamps]);
                     }
                  }
                  animationDefinitions.push([luaAnimationDef.id,frameList]);
               }
            }
         }
         else if(animationsMobileStyle)
         {
            normalAnimationFound = false;
            startAnimation = animationsMobileStyle.startAnimation;
            animations = animationsMobileStyle.animations;
            counter = 0;
            for(id in animations)
            {
               counter++;
               v = animations[id];
               if(v)
               {
                  frameList = [];
                  v.priority = v.priority || 1;
                  v.loop = v.loop;
                  frameTimes = v.frameTimes;
                  if(!frameTimes)
                  {
                     frameTimes = [];
                  }
                  if(frameTimes.length == 1 && v.sprites.length > 1)
                  {
                     for(index = 0; index < v.sprites.length; index++)
                     {
                        frameTimes.push(frameTimes[0]);
                     }
                  }
                  for(index = 0; index < frameTimes.length; index++)
                  {
                     frameTimes[index] *= 1000;
                  }
                  sound = [];
                  frameList.push([counter.toString(),v.sprites,frameTimes,sound,startAnimation,v.loop,v.priority]);
                  animationDefinitions.push([id,frameList]);
                  if(!normalAnimationFound && id == "normal")
                  {
                     normalAnimationFound = true;
                  }
               }
            }
            if(!normalAnimationFound)
            {
               frameList = [];
               frameList.push(["1",[this.mLuaObject.sprite],[],[],startAnimation,v.loop,v.priority]);
               animationDefinitions.unshift(["normal",frameList]);
            }
         }
         return animationDefinitions;
      }
      
      protected function readAnimation(animationIndex:int, animation:Object) : Array
      {
         var content:Object = null;
         var soundName:String = null;
         var frameName:String = null;
         var frameTimeStamp:Number = NaN;
         var frameTimes:Array = animation.frameTime;
         var frameList:Array = [];
         var frameTimeStamps:Array = [];
         var sounds:Array = [];
         var sound:Object = animation.sound;
         if(sound)
         {
            sounds.push(sound.name);
         }
         var spriteSet:Array = animation.sprites[animationIndex];
         var frameCount:int = spriteSet.length;
         for(var index:int = 0; index < frameCount; index++)
         {
            content = spriteSet[index];
            if(content.constructor == Object)
            {
               if(content.sound && sounds.length == 0)
               {
                  soundName = content.sound;
                  sounds.push(soundName);
               }
            }
            else
            {
               frameName = content as String;
               frameList.push(frameName);
               frameTimeStamp = 40;
               if(frameTimes != null && frameTimes.length > 0)
               {
                  if(frameTimes[index] != null)
                  {
                     frameTimeStamp = frameTimes[index];
                  }
                  else
                  {
                     frameTimeStamp = frameTimes[0];
                  }
               }
               if(frameTimes != null)
               {
                  frameTimeStamps.push(frameTimeStamp);
               }
            }
         }
         return [(animationIndex + 1).toString(),frameList,frameTimeStamps,sounds];
      }
      
      protected function getTextureName() : String
      {
         var textureName:String = null;
         if(this.mDamageSprites.length == 0)
         {
            if(this.mLuaObject.sprite)
            {
               textureName = this.mLuaObject.sprite;
            }
            else if(this.mLuaObject.themeTexture)
            {
               textureName = this.mLuaObject.themeTexture;
            }
         }
         else
         {
            textureName = this.mDamageSprites[0].spriteName;
         }
         return textureName;
      }
      
      private function getTextureInternal() : PivotTexture
      {
         var textureName:String = this.getTextureName();
         return AngryBirdsEngine.smLevelMain.textureManager.getTexture(textureName);
      }
      
      private function getCompositeSpriteInternal() : DisplayObject
      {
         var textureName:String = this.getTextureName();
         return CompositeSpriteParser.getCompositeSprite(textureName,AngryBirdsEngine.smLevelMain.textureManager,true);
      }
      
      private function getGraphicsDimensions() : Rectangle
      {
         var texture:PivotTexture = this.getTextureInternal();
         if(texture)
         {
            return new Rectangle(0,0,texture.width,texture.height);
         }
         var sprite:DisplayObject = this.getCompositeSpriteInternal();
         if(sprite)
         {
            return new Rectangle(0,0,sprite.width,sprite.height);
         }
         throw new Error("Texture / composite sprite \'" + this.getTextureName() + "\' doesn\'t exist.");
      }
      
      public function getProperty(propertyName:String, ... childProperties) : String
      {
         var childProperty:String = null;
         var array:Array = null;
         if(childProperties.length == 0)
         {
            return this.mLuaObject[propertyName];
         }
         var currentObj:Object = this.mLuaObject[propertyName];
         for each(childProperty in childProperties)
         {
            currentObj = currentObj[childProperty];
            if(currentObj === null)
            {
               return null;
            }
         }
         if(currentObj is Array)
         {
            array = currentObj as Array;
            if(array.length == 1)
            {
               currentObj = array[0];
            }
         }
         return String(currentObj);
      }
      
      public function getNumberProperty(propertyName:String, ... childProperties) : Number
      {
         var value:String = this.getProperty.apply(this,[propertyName].concat(childProperties));
         if(value)
         {
            return parseFloat(value);
         }
         return NaN;
      }
      
      public function getBooleanProperty(propertyName:String, ... childProperties) : Boolean
      {
         var value:String = this.getProperty.apply(this,[propertyName].concat(childProperties));
         if(value)
         {
            return value.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get materialBouncesLaser() : Boolean
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).bouncesLaser;
         }
         return false;
      }
      
      public function get materialParticlesDestroyed() : String
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.materialCollisionSound;
      }
      
      public function get materialCollisionSound() : String
      {
         var collisionSound:String = this.mCollisionSound;
         if(collisionSound == null)
         {
            if(mMaterial is LevelItemMaterialSpace)
            {
               collisionSound = (mMaterial as LevelItemMaterialSpace).collisionSound;
            }
         }
         return collisionSound;
      }
      
      public function get damageSound() : String
      {
         return this.materialDamageSound;
      }
      
      public function get materialDamageSound() : String
      {
         var damageSound:String = this.mDamageSound;
         if(damageSound == null)
         {
            if(mMaterial is LevelItemMaterialSpace)
            {
               damageSound = (mMaterial as LevelItemMaterialSpace).damageSound;
            }
         }
         return damageSound;
      }
      
      public function get materialDestroyedSound() : String
      {
         var destroyedSound:String = this.mDestroyedSound;
         if(destroyedSound == null)
         {
            if(mMaterial is LevelItemMaterialSpace)
            {
               destroyedSound = (mMaterial as LevelItemMaterialSpace).destroyedSound;
            }
         }
         return destroyedSound;
      }
      
      public function get materialRollingSound() : String
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).rollingSound;
         }
         return null;
      }
      
      public function get soundChannel() : String
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).soundChannel;
         }
         return null;
      }
      
      public function get materialForceX() : Number
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).forceX;
         }
         return 0;
      }
      
      public function get materialForceY() : Number
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).forceY;
         }
         return 0;
      }
      
      public function get materialBouncesLaserTargeted() : Boolean
      {
         if(mMaterial is LevelItemMaterialSpace)
         {
            return (mMaterial as LevelItemMaterialSpace).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.mDensity))
         {
            return this.mDensity;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.mFriction))
         {
            return this.mFriction;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.mRestitution))
         {
            return this.mRestitution;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.mStrength))
         {
            return this.mStrength;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.mDefence))
         {
            return this.mDefence;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.mZOrder))
         {
            return this.mZOrder;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return LevelItemMaterial.BODY_TYPE_DYNAMIC;
         }
         return LevelItemMaterial.BODY_TYPE_STATIC;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function getGlowDefinition(glowColor:String) : String
      {
         var name:String = this.getProperty("definitionAffectedByForce");
         if(!name)
         {
            name = this.getProperty("definitionHeldByForce");
            if(!name)
            {
               name = "FORCE_GLOW_RED_CIRCLE_L";
            }
            if(glowColor)
            {
               name = name.replace("RED",glowColor);
            }
         }
         return name;
      }
      
      public function getGlowRotation() : Number
      {
         var rotation:Number = this.getNumberProperty("glowRotation");
         if(isNaN(rotation))
         {
            rotation = 0;
         }
         return rotation;
      }
      
      override public function hasGraphics() : Boolean
      {
         var texture:PivotTexture = this.getTextureInternal();
         if(texture)
         {
            return true;
         }
         var sprite:DisplayObject = this.getCompositeSpriteInternal();
         if(sprite)
         {
            return true;
         }
         return false;
      }
   }
}
