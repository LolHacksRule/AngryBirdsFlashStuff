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
      
      public function LevelThemeBackgroundLayer(aName:String, speed:Number, color:Number, top:Number, bottom:Number, foreground:Boolean)
      {
         super();
         this.mName = aName;
         this.mYtop = top;
         this.mYbottom = bottom;
         this.mColor = color;
         this.mSpeed = speed / 1000;
         this.mForeground = foreground;
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
