package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItemSpace;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.PivotTexture;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class LevelObjectGravitySensor extends LevelObjectSensor
   {
      
      public static const NAME:String = "SENSOR_GRAVITATION";
      
      private static const MAGIC_SCALE:Number = 0.057;
       
      
      protected var mGravitationMinForce:Number = 0.0;
      
      protected var mGravitationMaxForce:Number = 0.0;
      
      protected var mSprite:Sprite;
      
      protected var mOuterSprite:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var mInitialScale:Number = 0.0;
      
      protected var mRadius:Number;
      
      public function LevelObjectGravitySensor(sprite:Sprite, world:b2World, levelObjectModel:LevelObjectModel, levelItem:LevelItemSpace, overrideRadius:Number, minForce:Number, maxForce:Number, multiplier:Number, outerPivotTexture:PivotTexture, innerPivotTexture:PivotTexture)
      {
         this.mRadius = overrideRadius;
         super(sprite,world,levelItem,levelItem.shape,levelObjectModel);
         this.mSprite = sprite;
         this.mInitialScale = this.mRadius * MAGIC_SCALE;
         if(outerPivotTexture)
         {
            this.mOuterSprite = this.createGravityCircle(outerPivotTexture,this.mInitialScale);
            this.mSprite.addChild(this.mOuterSprite);
         }
         if(innerPivotTexture)
         {
            this.mInnerSprite1 = this.createGravityCircle(innerPivotTexture,this.mInitialScale);
            this.mSprite.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.createGravityCircle(innerPivotTexture,this.mInitialScale / 2);
            this.mSprite.addChild(this.mInnerSprite2);
         }
         this.mGravitationMinForce = minForce;
         this.mGravitationMaxForce = maxForce;
         mGravityMultiplier = multiplier;
         this.updateGraphics();
      }
      
      override protected function get scale() : Number
      {
         var shape:CircleShapeDefinition = mLevelItem.shape as CircleShapeDefinition;
         if(shape)
         {
            return this.mRadius / shape.radius;
         }
         return super.scale;
      }
      
      private function createGravityCircle(texture:PivotTexture, scale:Number) : Sprite
      {
         var image:Image = null;
         var sprite:Sprite = new Sprite();
         sprite.scaleX = scale;
         sprite.scaleY = scale;
         for(var i:int = 0; i < 8; i++)
         {
            image = new Image(texture.texture);
            image.pivotX = -texture.pivotX;
            image.pivotY = -texture.pivotY;
            image.rotation = 45 * i / 180 * Math.PI;
            sprite.addChild(image);
         }
         return sprite;
      }
      
      override public function collidedWith(object:LevelObjectBase) : void
      {
         super.collidedWith(object);
         if(object.gravityFilter == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            object.gravityFilter = GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT;
         }
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         super.dispose(b);
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         this.mOuterSprite = null;
         this.mInnerSprite1 = null;
      }
      
      public function getForceAt(position:b2Vec2, radius:Number, resultForce:b2Vec2 = null, gravityMultiplier:Number = 0.0) : b2Vec2
      {
         if(!resultForce)
         {
            resultForce = getBody().GetPosition().Copy();
         }
         else
         {
            resultForce.SetV(getBody().GetPosition());
         }
         resultForce.Subtract(position);
         if(resultForce.Length() > this.mRadius + radius)
         {
            resultForce.x = 0;
            resultForce.y = 0;
            return resultForce;
         }
         var resultLength:Number = resultForce.Length();
         if(resultLength == 0)
         {
            return new b2Vec2(0,0);
         }
         var forceValue:Number = this.mGravitationMaxForce - resultLength / this.mRadius * (this.mGravitationMaxForce - this.mGravitationMinForce);
         if(gravityMultiplier == 0)
         {
            gravityMultiplier = mGravityMultiplier;
         }
         forceValue *= gravityMultiplier * 0.1;
         resultForce.Multiply(forceValue / resultLength);
         return resultForce;
      }
      
      override public function update(deltaTime:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var object:LevelObjectBase = null;
         var objectRadius:Number = NaN;
         var multiplier:Number = NaN;
         this.updateGraphics();
         super.update(deltaTime,updateManager);
         var force:b2Vec2 = null;
         for(var i:int = 0; i < mSensedObjects.length; i++)
         {
            object = mSensedObjects[i];
            if(!(!object || !object.getBody() || !object.applyGravity() || !object.shape))
            {
               if(!(object.gravityFilter != -1 && !(object.gravityFilter & this.gravityFiltersMask) && object.gravityFilter != GravityFilterCategory.LEIA_FORCE_OBJECT))
               {
                  objectRadius = 0;
                  if(object.shape is b2CircleShape)
                  {
                     objectRadius = b2CircleShape(object.shape).GetRadius();
                  }
                  else
                  {
                     objectRadius = Math.max(object.shape.getWidth(),object.shape.getHeight());
                  }
                  force = this.getForceAt(object.getBody().GetPosition(),objectRadius,force,object.getGravityMultiplier(mGravityMultiplier));
                  if(force.x != 0 || force.y != 0)
                  {
                     multiplier = object.getBody().GetMass();
                     force.Multiply(multiplier);
                     object.getBody().ApplyForce(force,object.getBody().GetPosition());
                  }
               }
            }
         }
      }
      
      private function updateGravitySpriteScale(sprite:Sprite) : void
      {
         sprite.scaleX -= MAGIC_SCALE / 6;
         sprite.scaleY -= MAGIC_SCALE / 6;
         if(sprite.scaleX / MAGIC_SCALE < 5)
         {
            sprite.scaleX = this.mInitialScale;
            sprite.scaleY = this.mInitialScale;
         }
      }
      
      protected function updateGraphics() : void
      {
         var xb2:Number = getBody().GetPosition().x;
         var yb2:Number = getBody().GetPosition().y;
         this.mSprite.x = xb2 / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSprite.y = yb2 / LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mInnerSprite1)
         {
            this.updateGravitySpriteScale(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.updateGravitySpriteScale(this.mInnerSprite2);
         }
      }
      
      public function get gravityFiltersMask() : int
      {
         return GravityFilterCategory.FORCE_OBJECT;
      }
   }
}
