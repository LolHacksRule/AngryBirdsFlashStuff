package com.angrybirds.data.level.item
{
   public class LevelItemPigSpace extends LevelItemSpacePigLua
   {
      
      public static const DEFAULT_STATE:String = "idleState";
      
      public static const FREEZE_STATE:String = "freezeState";
       
      
      protected var mStateAnimations:Object;
      
      protected var mIdleTimeLow:Number;
      
      protected var mIdleTimeHigh:Number;
      
      public function LevelItemPigSpace(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false, soundManagerLua:LevelItemSoundManagerLua = null)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front);
         mSoundManagerLua = soundManagerLua;
         this.mStateAnimations = luaObject.stateAnimations;
      }
      
      public function getAnimationIdleTimes() : Array
      {
         return [this.mIdleTimeLow,this.mIdleTimeHigh];
      }
      
      protected function readStateAnimations(data:Object) : Array
      {
         var result:Array = null;
         var stateNames:Array = null;
         var state:* = null;
         var freezeAnimation:Array = null;
         var stateData:Object = null;
         var animations:Array = null;
         var i:int = 0;
         var animation:Array = null;
         var idleTime:Array = null;
         if(data)
         {
            result = [];
            stateNames = [DEFAULT_STATE];
            for(state in data)
            {
               if(state != DEFAULT_STATE)
               {
                  stateNames.push(state);
               }
            }
            for each(state in stateNames)
            {
               stateData = data[state];
               if(stateData)
               {
                  animations = [];
                  for(i = 0; i < stateData.sprites.length; i++)
                  {
                     animation = readAnimation(i,stateData);
                     animations.push(animation);
                  }
                  result.push([state,animations]);
                  if(state == DEFAULT_STATE && stateData.idleTime is Array)
                  {
                     idleTime = stateData.idleTime as Array;
                     if(idleTime.length == 2)
                     {
                        this.mIdleTimeLow = idleTime[0];
                        this.mIdleTimeHigh = idleTime[1];
                     }
                  }
               }
            }
            freezeAnimation = [["1",[mSpriteFreeze]]];
            result.push([FREEZE_STATE,freezeAnimation]);
            return result;
         }
         return null;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var definitions:Array = this.readStateAnimations(this.mStateAnimations);
         if(definitions)
         {
            return definitions;
         }
         return super.getAnimationDefinitions();
      }
   }
}
