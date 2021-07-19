package com.angrybirds.engine
{
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.camera.LevelCamera;
   
   public class LevelBorders
   {
      
      public static const LEVEL_BORDER_GROUND_THICKNESS:Number = 50;
      
      public static const LEVEL_GROUND_LEVEL_IN_BOX2D:Number = 0;
       
      
      protected var mBorderLeft_B2:Number;
      
      protected var mBorderRight_B2:Number;
      
      protected var mBorderSky_B2:Number;
      
      protected var mBorderGround_B2:Number;
      
      public var mMinScale:Number;
      
      public var mLevelMain:LevelMain;
      
      public function LevelBorders(newLevelMain:LevelMain, level:LevelModel)
      {
         var i:int = 0;
         var margin:Number = NaN;
         var camera:LevelCameraModel = null;
         var width:Number = NaN;
         var left:int = 0;
         var right:int = 0;
         var item:LevelObjectModel = null;
         super();
         this.mLevelMain = newLevelMain;
         if(level.borderTop || level.borderGround || level.borderLeft || level.borderRight)
         {
            if(level.borderTop)
            {
               this.mBorderSky_B2 = level.borderTop;
            }
            else
            {
               this.mBorderSky_B2 = 0;
            }
            if(level.borderGround)
            {
               this.mBorderGround_B2 = level.borderGround;
            }
            else
            {
               this.mBorderGround_B2 = 0;
            }
            if(level.borderLeft)
            {
               this.mBorderLeft_B2 = level.borderLeft;
            }
            else
            {
               this.mBorderLeft_B2 = 0;
            }
            if(level.borderRight)
            {
               this.mBorderRight_B2 = level.borderRight;
            }
            else
            {
               this.mBorderRight_B2 = 0;
            }
         }
         else if(level.name == "BACKGROUND_BLUE_GRASS")
         {
            this.mBorderLeft_B2 = -150;
            this.mBorderRight_B2 = 200;
            this.mBorderSky_B2 = -160;
            this.mBorderGround_B2 = 50;
         }
         else
         {
            this.mBorderLeft_B2 = -200;
            this.mBorderRight_B2 = 200;
            i = 0;
            for(i = 0; i < level.cameraCount; i++)
            {
               camera = level.getCamera(i);
               width = 0;
               if(camera.left.toString() != "NaN")
               {
                  width = (camera.right - camera.left) * 4;
               }
               else
               {
                  width = LevelMain.LEVEL_WIDTH_PIXEL * 4 * LevelMain.PIXEL_TO_B2_SCALE;
               }
               left = camera.x - width / 2;
               right = camera.x + width / 2;
               if(left < this.mBorderLeft_B2)
               {
                  this.mBorderLeft_B2 = left;
               }
               if(right > this.mBorderRight_B2)
               {
                  this.mBorderRight_B2 = right;
               }
            }
            for(i = 0; i < level.objectCount; i++)
            {
               item = level.getObject(i);
               if(item.x < this.mBorderLeft_B2)
               {
                  this.mBorderLeft_B2 = item.x;
               }
               if(item.x > this.mBorderRight_B2)
               {
                  this.mBorderRight_B2 = item.x;
               }
            }
            margin = 0.1 * LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
            this.mBorderLeft_B2 -= margin;
            this.mBorderRight_B2 += margin;
            this.mBorderSky_B2 = level.slingshotY - 160;
            this.mBorderGround_B2 = level.slingshotY + 160;
         }
         this.mMinScale = LevelMain.LEVEL_WIDTH_PIXEL * LevelMain.PIXEL_TO_B2_SCALE / (this.mBorderRight_B2 - this.mBorderLeft_B2);
         this.mMinScale = Math.max(this.mMinScale,LevelCamera.SCALE_MIN);
         this.mLevelMain.setLevelBorders(this.mBorderSky_B2,this.mBorderGround_B2,this.mBorderLeft_B2,this.mBorderRight_B2);
      }
      
      public function get leftBorder() : Number
      {
         return this.mBorderLeft_B2;
      }
      
      public function get rightBorder() : Number
      {
         return this.mBorderRight_B2;
      }
      
      public function get skyBorder() : Number
      {
         return this.mBorderSky_B2;
      }
      
      public function get groundBorder() : Number
      {
         return this.mBorderGround_B2;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function isOutOfLevel(aX:Number, aY:Number) : Boolean
      {
         if(aY < this.mBorderSky_B2 || aY > this.mBorderGround_B2 || aX < this.mBorderLeft_B2 || aX > this.mBorderRight_B2)
         {
            return true;
         }
         return false;
      }
      
      public function setLevelBorders(sky:Number, ground:Number, left:Number, right:Number) : void
      {
         this.mBorderSky_B2 = sky;
         this.mBorderGround_B2 = ground;
         this.mBorderLeft_B2 = left;
         this.mBorderRight_B2 = right;
      }
   }
}
