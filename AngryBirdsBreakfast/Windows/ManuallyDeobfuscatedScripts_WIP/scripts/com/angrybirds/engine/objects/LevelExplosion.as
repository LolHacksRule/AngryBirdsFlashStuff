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
      
      public static const TYPE_ORANGE_BIRD:int = 10;
      
      private static var DEFAULT:LevelExplosion = new LevelExplosion(0,0,10,500,7.5,600,TYPE_DEFAULT);
      
      private static var WHITE_BIRD_EGG:LevelExplosion = new LevelExplosion(0,0,10,500,7.5,600,TYPE_WHITE_BIRD_EGG);
      
      private static var BLACK_BIRD:LevelExplosion = new LevelExplosion(0,0,15,2000,5,300,TYPE_BLACK_BIRD);
      
      private static var ORANGE_BIRD:LevelExplosion = new LevelExplosion(0,0,8,1500,0,0,TYPE_ORANGE_BIRD);
      
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
      
      public function LevelExplosion(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.mX = param1;
         this.mY = param2;
         this.mPushRadius = param3;
         this.mPush = param4;
         this.mDamageRadius = param5;
         this.mDamage = param6;
         this.mType = param7;
         this.mIgnoredObjectId = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : LevelExplosion
      {
         var _loc4_:LevelExplosion = null;
         switch(param1)
         {
            case TYPE_WHITE_BIRD_EGG:
               _loc4_ = ITutorialTitleSolver;
               break;
            case TYPE_TNT:
               _loc4_ = TNT;
               break;
            case TYPE_BLACK_BIRD:
               _loc4_ = BLACK_BIRD;
               break;
            case TYPE_SMALL_EXPLOSION:
               _loc4_ = SMALL_EXPLOSION;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new LevelExplosion(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
      }
      
      public static function createCustomExplosion(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : LevelExplosion
      {
         return new LevelExplosion(param1,param2,param3,param4 * LevelMain.PIXEL_TO_B2_SCALE,param5,param6,TYPE_ORANGE_BIRD);
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
   }
}
