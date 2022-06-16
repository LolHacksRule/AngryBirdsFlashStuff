package com.angrybirds.data.level.item.behaviors.transformation
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.data.level.item.behaviors.IItemSpecialBehavior;
   import com.angrybirds.data.level.item.behaviors.IItemSpecialBehaviorVO;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelObjectModelBehaviorData;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.leveleventmanager.ILevelEventSubscriber;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.sound.SoundEngine;
   
   public class TransformationBehavior implements IItemSpecialBehavior, IItemSpecialBehaviorVO, ILevelEventSubscriber
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var mLevelMain:LevelMain;
      
      private var mPendingTransformations:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.mPendingTransformations = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(levelMain:LevelMain) : void
      {
         this.mLevelMain = levelMain;
      }
      
      public function canHandleEvent(behaviorType:String) : Boolean
      {
         return behaviorType == TYPE;
      }
      
      public function update(dt:int) : void
      {
         var toRemove:Vector.<PendingTransformData> = null;
         var i:int = 0;
         var removeObject:Boolean = false;
         var transData:PendingTransformData = null;
         var j:int = 0;
         var data:PendingTransformData = null;
         if(this.mPendingTransformations.length > 0)
         {
            for(i = 0; i < this.mPendingTransformations.length; i++)
            {
               removeObject = false;
               transData = this.mPendingTransformations[i];
               if(transData.object && this.mLevelMain.objects.hasObject(transData.object))
               {
                  transData.update(dt);
                  if(transData.readyToTransform)
                  {
                     this.transform(transData);
                     removeObject = true;
                  }
               }
               else
               {
                  removeObject = true;
               }
               if(removeObject)
               {
                  if(toRemove == null)
                  {
                     toRemove = new Vector.<PendingTransformData>();
                  }
                  toRemove.push(transData);
               }
            }
            if(toRemove)
            {
               for(j = 0; j < toRemove.length; j++)
               {
                  data = toRemove[j];
                  this.mPendingTransformations.splice(this.mPendingTransformations.indexOf(data),1);
               }
            }
         }
      }
      
      private function transform(transData:PendingTransformData) : void
      {
         var objPosition:b2Vec2 = null;
         var obj:LevelObject = transData.object;
         var behaviorData:TransformationData = transData.transformationData;
         var levelObjectManager:LevelObjectManager = this.mLevelMain.objects;
         var targetBlockName:String = behaviorData.targetBlockName;
         if(behaviorData.soundName != null)
         {
            SoundEngine.playSoundFromVariation(behaviorData.soundName,"ChannelExplosions");
         }
         var objNew:LevelObjectBase = levelObjectManager.replaceObject(obj,targetBlockName);
         if(behaviorData.hasExplosion)
         {
            objPosition = objNew.getBody().GetPosition();
            levelObjectManager.addCustomExplosion(objPosition.x,objPosition.y,behaviorData.explosionPushRadius,behaviorData.explosionPush,behaviorData.explosionDamageRadius,behaviorData.explosionDamage,(objNew as LevelObject).id,false,false);
         }
         this.showParticleEffect(objNew,behaviorData,levelObjectManager);
         if(objNew.isLevelGoal)
         {
            (AngryBirdsEngine.controller as GameLogicController).resetEndLevelVariables();
         }
      }
      
      public function performAction(eventName:String, behaviorType:String) : void
      {
      }
      
      private function showParticleEffect(obj:LevelObjectBase, behaviorData:TransformationData, levelObjectManager:LevelObjectManager) : void
      {
         var particlesId:String = null;
         var body:b2Body = obj.getBody();
         var x:Number = body.GetPosition().x;
         var y:Number = body.GetPosition().y;
         var angle:Number = body.GetAngle();
         var levelItem:LevelItem = obj.levelItem;
         var shape:ShapeDefinition = levelItem.shape;
         var width:Number = shape.getWidth() * 1;
         var height:Number = shape.getHeight() * 1;
         var particleCount:int = behaviorData.particleCount;
         for(var i:int = 0; i < particleCount; i++)
         {
            particlesId = behaviorData.getParticle(i);
            if(particlesId)
            {
               levelObjectManager.addObjectWithArea(particlesId,x,y,angle,LevelObjectManager.ID_NEXT_FREE,width,height,1);
            }
         }
      }
      
      private function getTransformBehaviorData(obj:LevelObject, eventName:String, behaviorType:String) : LevelObjectModelBehaviorData
      {
         var levelObjectModel:LevelObjectModel = null;
         var behaviorsData:Vector.<LevelObjectModelBehaviorData> = null;
         var i:int = 0;
         var data:LevelObjectModelBehaviorData = null;
         var objBehaviorType:String = null;
         var objBehaviorEventName:String = null;
         var behaviorData:LevelObjectModelBehaviorData = null;
         if(obj && obj.hasSpecialBehavior && obj.health > 0)
         {
            levelObjectModel = obj.levelObjectModel;
            behaviorsData = levelObjectModel.getBehaviorsData();
            for(i = 0; i < behaviorsData.length; i++)
            {
               data = behaviorsData[i];
               objBehaviorType = data.type;
               objBehaviorEventName = data.event;
               if(objBehaviorEventName == eventName && objBehaviorType == behaviorType)
               {
                  behaviorData = data;
                  break;
               }
            }
         }
         return behaviorData;
      }
      
      public function get behaviorType() : String
      {
         return TYPE;
      }
      
      public function onLevelEvent(event:LevelEvent) : void
      {
         var obj:LevelObject = null;
         var objBehaviorData:LevelObjectModelBehaviorData = null;
         var behaviorData:TransformationData = null;
         var eventName:String = event.eventName;
         var levelObjectManager:LevelObjectManager = this.mLevelMain.objects;
         var totalObjects:int = levelObjectManager.getObjectCount();
         for(var i:int = totalObjects - 1; i >= 0; i--)
         {
            obj = LevelObject(levelObjectManager.getObject(i));
            objBehaviorData = this.getTransformBehaviorData(obj,eventName,this.behaviorType);
            if(objBehaviorData)
            {
               behaviorData = TransformationData(this.mLevelMain.levelItemManager.getSpecialBehaviorData(objBehaviorData.name));
               this.mPendingTransformations.push(new PendingTransformData(obj,behaviorData));
            }
         }
      }
      
      public function clear() : void
      {
         this.mPendingTransformations = new Vector.<PendingTransformData>();
      }
   }
}

import com.angrybirds.data.level.item.behaviors.transformation.TransformationData;
import com.angrybirds.engine.objects.LevelObject;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:LevelObject;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:TransformationData;
   
   function PendingTransformData(object:LevelObject, transformationData:TransformationData)
   {
      super();
      this.object = object;
      this.maxDelayInMillis = this.randRange(transformationData.minDelay * 1000,transformationData.maxDelay * 1000);
      this.transformationData = transformationData;
   }
   
   public function update(dt:int) : void
   {
      this.timeInMillis += dt;
      if(this.timeInMillis >= this.maxDelayInMillis)
      {
         this.readyToTransform = true;
      }
   }
   
   private function randRange(minNum:Number, maxNum:Number) : Number
   {
      return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
   }
}
