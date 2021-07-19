package com.angrybirds.data.level.item
{
   import com.angrybirds.data.level.item.behaviors.BehaviorData;
   import com.angrybirds.data.level.item.behaviors.transformation.TransformationData;
   import com.rovio.utils.HashMap;
   
   public class LevelItemSpecialBehaviorDataManager
   {
       
      
      private var mBehaviors:HashMap;
      
      public function LevelItemSpecialBehaviorDataManager()
      {
         super();
         this.mBehaviors = new HashMap();
      }
      
      public function initBehaviorsDefinition(behaviorData:Object) : void
      {
         var transformationName:* = null;
         var transformationObj:BehaviorData = null;
         var transformationsData:Object = behaviorData.transformations;
         for(transformationName in transformationsData)
         {
            transformationObj = TransformationData.createInstance(transformationName,transformationsData[transformationName]);
            if(this.mBehaviors[transformationObj.name] != null)
            {
            }
            this.mBehaviors[transformationObj.name] = transformationObj;
         }
      }
      
      public function getBehaviorData(name:String) : BehaviorData
      {
         return this.mBehaviors[name];
      }
   }
}
