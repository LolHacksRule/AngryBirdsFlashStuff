package com.angrybirds.engine.objects
{
   import com.angrybirds.engine.Tuner;
   
   public class FacebookLevelExplosion extends LevelExplosion
   {
      
      public static const TYPE_BOMB_POWERUP:int = 6;
      
      public static const TYPE_SNOW_BALL_EXPLOSION:int = 7;
      
      public static const TYPE_POWERUP_BOOMBOX_NORMAL:int = 8;
      
      public static const TYPE_POWERUP_BOOMBOX_SUPER_SEED:int = 9;
      
      private static var BOMB_POWERUP:LevelExplosion = new FacebookLevelExplosion(0,0,Tuner.POWERUP_BOMB_PUSH_RADIUS,Tuner.POWERUP_BOMB_PUSH,Tuner.POWERUP_BOMB_DAMAGA_RADIUS,Tuner.POWERUP_BOMB_DAMAGE,TYPE_BOMB_POWERUP);
      
      private static var SNOW_BALL_EXPLOSION:LevelExplosion = new FacebookLevelExplosion(0,0,2,3,1,2.5,TYPE_SNOW_BALL_EXPLOSION);
      
      private static var POWERUP_BOOMBOX_NORMAL_EXPLOSION:LevelExplosion = new FacebookLevelExplosion(0,0,15,1500,5,800,TYPE_POWERUP_BOOMBOX_NORMAL);
      
      private static var POWERUP_BOOMBOX_SUPER_SEED_EXPLOSION:LevelExplosion = new FacebookLevelExplosion(0,0,25,1750,5,800,TYPE_POWERUP_BOOMBOX_SUPER_SEED);
       
      
      public function FacebookLevelExplosion(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0, ignoredObjectId:int = -1)
      {
         super(x,y,pushRadius,push,damageRadius,damage,explosionType,ignoredObjectId);
      }
      
      public static function createExplosion(type:int, x:Number, y:Number, ignoredObjectId:int) : LevelExplosion
      {
         var base:LevelExplosion = null;
         switch(type)
         {
            case TYPE_BOMB_POWERUP:
               base = BOMB_POWERUP;
               break;
            case TYPE_SNOW_BALL_EXPLOSION:
               base = SNOW_BALL_EXPLOSION;
               break;
            case TYPE_POWERUP_BOOMBOX_NORMAL:
               base = POWERUP_BOOMBOX_NORMAL_EXPLOSION;
               break;
            case TYPE_POWERUP_BOOMBOX_SUPER_SEED:
               base = POWERUP_BOOMBOX_SUPER_SEED_EXPLOSION;
               break;
            default:
               return LevelExplosion.createExplosion(type,x,y);
         }
         return new LevelExplosion(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type,ignoredObjectId);
      }
   }
}
