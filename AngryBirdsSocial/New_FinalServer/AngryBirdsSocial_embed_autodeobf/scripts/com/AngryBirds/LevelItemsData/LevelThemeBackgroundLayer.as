package com.AngryBirds.LevelItemsData
{
   public class LevelThemeBackgroundLayer
   {
       
      
      public var mName:String;
      
      public var mYtop:Number;
      
      public var mYbottom:Number;
      
      public var mColor:Number;
      
      public var mSpeed:Number;
      
      public var mForeground:Boolean;
      
      public function LevelThemeBackgroundLayer(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean)
      {
         super();
         this.mName = param1;
         this.mYtop = param4;
         this.mYbottom = param5;
         this.mColor = param3;
         this.mSpeed = param2 / 1000;
         this.mForeground = param6;
      }
      
      public function getName() : String
      {
         return this.mName;
      }
      
      public function getTopLine() : Number
      {
         return this.mYtop;
      }
      
      public function getBottomLine() : Number
      {
         return this.mYbottom;
      }
      
      public function getSpeed() : Number
      {
         return this.mSpeed;
      }
      
      public function isForeground() : Boolean
      {
         return this.mForeground;
      }
   }
}
