package com.angrybirds.data.level.item
{
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import com.angrybirds.engine.objects.LevelObjectBirdSpace;
   import com.angrybirds.engine.objects.LevelObjectBirdSpaceGeneral;
   
   public class LevelItemBirdSpace extends LevelItemSpaceBirdLua
   {
      
      protected static const PROPERTY_SPRITES:String = "sprites";
       
      
      public function LevelItemBirdSpace(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front,soundManagerLua);
         mSpriteScore = getProperty(PROPERTY_SPRITES,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var definitions:Array = this.getCommonAnimationDefinitions();
         var timerDefinitions:Array = this.getTimerAnimationDefinition();
         if(timerDefinitions)
         {
            definitions.push([LevelObjectBirdSpaceGeneral.ANIMATION_TIMER,[["1",timerDefinitions[0],timerDefinitions[1]]]]);
         }
         return definitions;
      }
      
      protected function getCommonAnimationDefinitions() : Array
      {
         var normal:String = getProperty(PROPERTY_SPRITES,"default");
         var blink:String = getProperty(PROPERTY_SPRITES,"blink");
         var fly:String = getProperty(PROPERTY_SPRITES,"flying");
         var yell:String = getProperty(PROPERTY_SPRITES,"yell");
         var flyYell:String = getProperty(PROPERTY_SPRITES,"flying");
         var collision:String = getProperty(PROPERTY_SPRITES,"collision");
         return [[LevelObject.ANIMATION_NORMAL,[["1",[normal]]]],[LevelObject.ANIMATION_BLINK,[["1",[blink]]]],[LevelObjectBird.ANIMATION_FLY,[["1",[fly]]]],[LevelObject.ANIMATION_SCREAM,[["1",[yell]]]],[LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[flyYell]]]],[LevelObjectBirdSpace.ANIMATION_COLLISION,[["1",[collision]]]]];
      }
      
      protected function getTimerAnimationDefinition() : Array
      {
         var frames:Array = null;
         var times:Array = null;
         var i:int = 0;
         var frame:String = null;
         var result:Array = null;
         var timerFrameCount:int = getNumberProperty(PROPERTY_SPRITES,"timer","length");
         if(timerFrameCount > 0)
         {
            frames = [];
            times = [];
            result = [frames,times];
            for(i = 0; i < timerFrameCount; i++)
            {
               frame = getProperty(PROPERTY_SPRITES,"timer",i);
               frames.push(frame);
               times.push(70);
            }
         }
         return result;
      }
   }
}
