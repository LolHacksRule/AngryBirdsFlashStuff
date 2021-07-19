package com.angrybirds.data.level.item.behaviors
{
   import com.angrybirds.data.level.item.behaviors.transformation.TransformationBehavior;
   
   public class SpecialBehaviorFactory
   {
       
      
      public function SpecialBehaviorFactory()
      {
         super();
      }
      
      public static function createBehaviors() : Vector.<IItemSpecialBehavior>
      {
         var vec:Vector.<IItemSpecialBehavior> = new Vector.<IItemSpecialBehavior>();
         vec.push(new TransformationBehavior());
         return vec;
      }
   }
}
