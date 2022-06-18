package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemFriends;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.HashMap;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectBranded extends LevelObjectBlockSpace
   {
      
      private static var sCachedAnimations:HashMap = new HashMap();
       
      
      private var mTournamentName:String;
      
      public function FacebookLevelObjectBranded(tournamentName:String, sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, aParticleJSONId:String = "", aParticleVariationCount:int = 1)
      {
         this.mTournamentName = tournamentName;
         var animationName:String = levelItem.itemName;
         var brandedAnimation:Animation = AngryBirdsEngine.smLevelMain.animationManager.getAnimation(animationName);
         if(!brandedAnimation)
         {
            brandedAnimation = this.createBrandedAnimation(levelItem,animationName);
         }
         super(sprite,brandedAnimation,world,levelItem,levelObjectModel,scale);
      }
      
      private function createBrandedAnimation(levelItem:LevelItem, animationName:String) : Animation
      {
         var animationDefinitions:Array = levelItem.getAnimationDefinitions();
         var animationManager:AnimationManager = AngryBirdsEngine.smLevelMain.animationManager;
         animationManager.addContainerAnimation(animationName,animationDefinitions);
         return animationManager.getAnimation(animationName);
      }
      
      override public function isTnt() : Boolean
      {
         var result:* = Boolean(super.isTnt());
         if(!result)
         {
            result = itemName.indexOf("MISC_THEMED_EXPLOSIVE_") != -1;
         }
         return result;
      }
      
      override protected function playScreamSound() : void
      {
         var screamSound:String = (levelItem as LevelItemFriends).idleSound;
         var soundChannel:String = (levelItem as LevelItemFriends).soundChannel;
         if(screamSound)
         {
            SoundEngine.playSoundFromVariation(screamSound,soundChannel == null ? SoundEngine.DEFAULT_CHANNEL_NAME : soundChannel);
         }
      }
      
      override public function playFearSound() : SoundEffect
      {
         var fearSound:String = (levelItem as LevelItemFriends).fearSound;
         var soundChannel:String = (levelItem as LevelItemFriends).soundChannel;
         var soundEffect:SoundEffect = null;
         if(fearSound)
         {
            soundEffect = SoundEngine.playSoundFromVariation(fearSound,soundChannel == null ? SoundEngine.DEFAULT_CHANNEL_NAME : soundChannel);
         }
         return soundEffect;
      }
   }
}
