package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.AnimationData;
   import starling.display.Sprite;
   
   public class AnimationFactory
   {
      
      private static const ANIMATION_TYPE_MOVE:String = "move";
      
      private static const ANIMATION_TYPE_SCALE:String = "scale";
       
      
      public function AnimationFactory()
      {
         super();
      }
      
      public static function createAnimation(sprite:Sprite, levelBackgroundLayer:LevelBackgroundLayer, data:AnimationData) : AbsLayerAnimation
      {
         var animation:AbsLayerAnimation = null;
         switch(data.type)
         {
            case ANIMATION_TYPE_MOVE:
               animation = new MoveAnimation(sprite,levelBackgroundLayer,data);
               break;
            case ANIMATION_TYPE_SCALE:
               animation = new ScaleAnimation(sprite,levelBackgroundLayer,data);
         }
         return animation;
      }
   }
}
