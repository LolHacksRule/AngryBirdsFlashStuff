package com.AngryBirds.LevelItemsData
{
   public class LevelThemeBackground
   {
       
      
      public var mName:String;
      
      public var mTextureName:String;
      
      public var mTextureStrokeColor:Number;
      
      public var mLayers:Array;
      
      public var mColorSky:Number;
      
      public var mColorGround:Number;
      
      public var mAmbientSoundName:String;
      
      public var mIconName:String;
      
      public function LevelThemeBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String)
      {
         var _loc9_:XML = null;
         super();
         this.mName = param1;
         this.mLayers = new Array();
         this.mColorSky = param3;
         this.mColorGround = param4;
         this.mAmbientSoundName = param5;
         this.mTextureName = param6;
         this.mTextureStrokeColor = param7;
         this.mIconName = param8;
         for each(_loc9_ in param2.Layer)
         {
            this.newLayer(_loc9_.@id,_loc9_.@speed,-1,0,0,_loc9_.@foreground != 0);
         }
         this.mLayers.reverse();
      }
      
      public function newLayer(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         this.mLayers[this.mLayers.length] = new LevelThemeBackgroundLayer(param1,param2,param3,param4,param5,param6);
      }
      
      public function getCost() : Number
      {
         return 100;
      }
   }
}
