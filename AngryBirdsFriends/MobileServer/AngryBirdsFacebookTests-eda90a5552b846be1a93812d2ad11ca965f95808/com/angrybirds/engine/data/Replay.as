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
      
      public function Replay(levelName:String)
      {
         this.mShots = new Vector.<Shot>();
         this.mBirdPowers = new Vector.<BirdPower>();
         super();
         this.mLevelName = levelName;
         this.mSpeed = 1;
      }
      
      public static function initialize(source:String) : Replay
      {
         var replay:Replay = null;
         var shotData:Array = null;
         var birdPowerData:Array = null;
         var shotSource:String = null;
         var birdPowerSource:String = null;
         var shot:Shot = null;
         var birdPower:BirdPower = null;
         var data:Array = source.split(DELIM);
         if(data.length == 3)
         {
            replay = new Replay(data[0]);
            shotData = data[1].split(INTERNAL_DELIM);
            birdPowerData = data[2].split(INTERNAL_DELIM);
            for each(shotSource in shotData)
            {
               shot = Shot.initialize(shotSource);
               if(shot)
               {
                  replay.mShots.push(shot);
               }
            }
            for each(birdPowerSource in birdPowerData)
            {
               birdPower = BirdPower.initialize(birdPowerSource);
               if(birdPower)
               {
                  replay.mBirdPowers.push(birdPower);
               }
            }
         }
         return replay;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.mPlaying;
      }
      
      public function get levelName() : String
      {
         return this.mLevelName;
      }
      
      public function set speed(value:Number) : void
      {
         this.mSpeed = value;
      }
      
      public function get speed() : Number
      {
         return this.mSpeed;
      }
      
      protected function get currentStep() : int
      {
         return this.mStep;
      }
      
      public function shootBird(step:int, x:Number, y:Number, power:Number, angle:Number) : void
      {
         if(!this.mPlaying)
         {
            this.mShots.push(new Shot(step,x,y,power,angle));
         }
      }
      
      public function activateBirdPower(step:int, targetX:Number, targetY:Number) : void
      {
         if(!this.mPlaying)
         {
            if(this.mBirdPowers.length > 0)
            {
               if(this.mBirdPowers[this.mBirdPowers.length - 1].step == step)
               {
                  return;
               }
            }
            this.mBirdPowers.push(new BirdPower(step,targetX,targetY));
         }
      }
      
      public function play() : void
      {
         this.mPlaying = true;
      }
      
      public function step(levelMain:LevelMain) : void
      {
         var shot:Shot = null;
         var specialPower:BirdPower = null;
         if(this.mShots.length > this.mShotIndex)
         {
            shot = this.mShots[this.mShotIndex];
            if(shot.step == this.currentStep)
            {
               levelMain.slingshot.shootCurrentBirdFromPosition(shot.x,shot.y,shot.power,shot.angle);
               ++this.mShotIndex;
            }
         }
         if(this.mBirdPowers.length > this.mBirdPowerIndex)
         {
            specialPower = this.mBirdPowers[this.mBirdPowerIndex];
            if(specialPower.step == this.currentStep)
            {
               levelMain.activateSpecialPower(specialPower.targetX,specialPower.targetY);
               ++this.mBirdPowerIndex;
            }
         }
         ++this.mStep;
      }
      
      public function toString() : String
      {
         var result:String = Capabilities.version.substr(0,3);
         return result + (this.mLevelName + DELIM + this.getShotsString() + DELIM + this.getBirdPowerString());
      }
      
      private function getShotsString() : String
      {
         var result:String = "";
         result += this.mShots.length.toString();
         for(var i:int = 0; i < this.mShots.length; i++)
         {
            result += INTERNAL_DELIM;
            result += this.mShots[i].toString();
         }
         return result;
      }
      
      private function getBirdPowerString() : String
      {
         var result:String = "";
         result += this.mBirdPowers.length.toString();
         for(var i:int = 0; i < this.mBirdPowers.length; i++)
         {
            result += INTERNAL_DELIM;
            result += this.mBirdPowers[i].toString();
         }
         return result;
      }
   }
}
