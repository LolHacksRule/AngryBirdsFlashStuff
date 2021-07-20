package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public interface ILevelObjectUpdateManager
   {
       
      
      function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void;
      
      function addCustomExplosion(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void;
      
      function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : LevelObjectBase;
      
      function addObjectWithArea(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : LevelObjectBase;
      
      function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void;
      
      function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void;
      
      function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void;
      
      function removeObject(param1:LevelObjectBase, param2:Boolean = false) : void;
      
      function get objectCount() : int;
      
      function getLevelItem(param1:String) : LevelItem;
      
      function getObject(param1:int) : LevelObjectBase;
      
      function getObjectFromPoint(param1:Number, param2:Number) : LevelObject;
      
      function setShadingEffect(param1:Boolean) : void;
      
      function setCameraShaking(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void;
      
      function destroyAllJoints() : void;
      
      function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2;
      
      function get timeSpeedMultiplier() : Number;
      
      function get damageScoreMultiplier() : int;
   }
}
