package com.angrybirds.engine.data
{
   import com.angrybirds.engine.LevelMain;
   import flash.system.Capabilities;
   
   public class Replay
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var mLevelName:String;
      
      private var mStep:int;
      
      private var mSpeed:Number;
      
      private var mTime:Number;
      
      protected var mPlaying:Boolean;
      
      protected var mShots:Vector.<Shot>;
      
      protected var mBirdPowers:Vector.<BirdPower>;
      
      private var mShotIndex:int;
      
      private var mBirdPowerIndex:int;
      
      public function Replay(param1:String)
      {
         this.mShots = new Vector.<Shot>();
         this.mBirdPowers = new Vector.<BirdPower>();
         super();
         this.mLevelName = param1;
         this.mSpeed = 1;
      }
      
      public static function initialize(param1:String) : Replay
      {
         var _loc2_:Replay = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Shot = null;
         var _loc9_:BirdPower = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new Replay(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = Shot.initialize(_loc6_))
               {
                  _loc2_.mShots.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = BirdPower.initialize(_loc7_))
               {
                  _loc2_.mBirdPowers.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.mPlaying;
      }
      
      public function get levelName() : String
      {
         return this.mLevelName;
      }
      
      public function set speed(param1:Number) : void
      {
         this.mSpeed = param1;
      }
      
      public function get speed() : Number
      {
         return this.mSpeed;
      }
      
      protected function get currentStep() : int
      {
         return this.mStep;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.mPlaying)
         {
            this.mShots.push(new Shot(param1,param2,param3,param4,param5));
         }
      }
      
      public function activateBirdPower(param1:int, param2:Number, param3:Number) : void
      {
         if(!this.mPlaying)
         {
            if(this.mBirdPowers.length > 0)
            {
               if(this.mBirdPowers[this.mBirdPowers.length - 1].step == param1)
               {
                  return;
               }
            }
            this.mBirdPowers.push(new BirdPower(param1,param2,param3));
         }
      }
      
      public function play() : void
      {
         this.mPlaying = true;
      }
      
      public function step(param1:LevelMain) : void
      {
         var _loc2_:Shot = null;
         var _loc3_:BirdPower = null;
         if(this.mShots.length > this.mShotIndex)
         {
            _loc2_ = this.mShots[this.mShotIndex];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.shootCurrentBirdFromPosition(_loc2_.x,_loc2_.y,_loc2_.power,_loc2_.angle);
               ++this.mShotIndex;
            }
         }
         if(this.mBirdPowers.length > this.mBirdPowerIndex)
         {
            _loc3_ = this.mBirdPowers[this.mBirdPowerIndex];
            if(_loc3_.step == this.currentStep)
            {
               param1.activateSpecialPower(_loc3_.targetX,_loc3_.targetY);
               ++this.mBirdPowerIndex;
            }
         }
         ++this.mStep;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.mLevelName + DELIM + this.getShotsString() + DELIM + this.getBirdPowerString());
      }
      
      private function getShotsString() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.mShots.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.mShots.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.mShots[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function getBirdPowerString() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.mBirdPowers.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirdPowers.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.mBirdPowers[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
