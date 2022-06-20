package com.angrybirds.engine.objects
{
   import com.angrybirds.engine.LevelMain;
   
   public class LevelExplosion
   {
      
      public static const TYPE_DEFAULT:int = 0;
      
      public static const TYPE_WHITE_BIRD_EGG:int = 1;
      
      public static const TYPE_TNT:int = 2;
      
      public static const TYPE_BLACK_BIRD:int = 3;
      
      public static const TYPE_SMALL_EXPLOSION:int = 4;
      
      public static const TYPE_ORANGE_BIRD:int = 5;
      
      public static const TYPE_CUSTOM:int = 10;
      
      private static var DEFAULT:LevelExplosion = new LevelExplosion(0,0,10,500,7.5,600,TYPE_DEFAULT);
      
      private static var WHITE_BIRD_EGG:LevelExplosion = new LevelExplosion(0,0,10,500,7.5,600,TYPE_WHITE_BIRD_EGG);
      
      private static var BLACK_BIRD:LevelExplosion = new LevelExplosion(0,0,15,2000,5,300,TYPE_BLACK_BIRD);
      
      private static var ORANGE_BIRD:LevelExplosion = new LevelExplosion(0,0,8,2250,0,0,TYPE_ORANGE_BIRD);
      
      private static var TNT:LevelExplosion = new LevelExplosion(0,0,10,1500,5,150,TYPE_TNT);
      
      private static var SMALL_EXPLOSION:LevelExplosion = new LevelExplosion(0,0,5,10,7,275,TYPE_SMALL_EXPLOSION);
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mPushRadius:Number;
      
      private var mPush:Number;
      
      private var mDamageRadius:Number;
      
      private var mDamage:Number;
      
      private var mType:int;
      
      private var mIgnoredObjectId:int = -1;
      
      private var mShowParticleEffect:Boolean = true;
      
      public function LevelExplosion(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0, ignoredObjectId:int = -1, showParticleEffect:Boolean = true)
      {
         super();
         this.mX = x;
         this.mY = y;
         this.mPushRadius = pushRadius;
         this.mPush = push;
         this.mDamageRadius = damageRadius;
         this.mDamage = damage;
         this.mType = explosionType;
         this.mIgnoredObjectId = ignoredObjectId;
         this.mShowParticleEffect = showParticleEffect;
      }
      
      public static function createExplosion(type:int, x:Number, y:Number, ignoredObjectId:int = -1) : LevelExplosion
      {
         var base:LevelExplosion = null;
         switch(type)
         {
            case TYPE_WHITE_BIRD_EGG:
               base = WHITE_BIRD_EGG;
               break;
            case TYPE_TNT:
               base = TNT;
               break;
            case TYPE_BLACK_BIRD:
               base = BLACK_BIRD;
               break;
            case TYPE_SMALL_EXPLOSION:
               base = SMALL_EXPLOSION;
               break;
            case TYPE_ORANGE_BIRD:
               base = ORANGE_BIRD;
               break;
            default:
               base = DEFAULT;
         }
         return new LevelExplosion(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type,ignoredObjectId);
      }
      
      public static function createCustomExplosion(x:Number, y:Number, pushRadius:Number, pushMultipliedByWorldScale:Number, damageRadius:Number, damage:Number, ignoredObjectId:int = -1, showParticleEffect:Boolean = true) : LevelExplosion
      {
         return new LevelExplosion(x,y,pushRadius,pushMultipliedByWorldScale * LevelMain.PIXEL_TO_B2_SCALE,damageRadius,damage,TYPE_CUSTOM,ignoredObjectId,showParticleEffect);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get pushRadius() : Number
      {
         return this.mPushRadius;
      }
      
      public function get push() : Number
      {
         return this.mPush;
      }
      
      public function get damageRadius() : Number
      {
         return this.mDamageRadius;
      }
      
      public function get damage() : Number
      {
         return this.mDamage;
      }
      
      public function get type() : int
      {
         return this.mType;
      }
      
      public function get ignoredObjectId() : int
      {
         return this.mIgnoredObjectId;
      }
      
      public function get showParticleEffect() : Boolean
      {
         return this.mShowParticleEffect;
      }
   }
}
