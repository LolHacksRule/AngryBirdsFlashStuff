package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.AnimationData;
   import starling.display.Sprite;
   
   public class SetVisibleAnimation extends AbsLayerAnimation
   {
       
      
      private var mLevelBackgroundLayer:LevelBackgroundLayer;
      
      private var mLayerVisibility:Boolean;
      
      public function SetVisibleAnimation(sprite:Sprite, levelBackgroundLayer:LevelBackgroundLayer, data:AnimationData)
      {
         super(sprite,data.trigger,data.tween,data.sound,data.soundVolume,data.soundLoop);
         this.mLevelBackgroundLayer = levelBackgroundLayer;
         this.mLayerVisibility = data.visible;
      }
      
      override protected function onStart() : void
      {
         this.mLevelBackgroundLayer.setVisibility(this.mLayerVisibility);
         animCompleted();
      }
   }
}
