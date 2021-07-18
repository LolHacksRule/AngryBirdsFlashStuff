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
      
      public var mCost:Number;
      
      public function LevelThemeBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number)
      {
         var _loc10_:XML = null;
         super();
         this.mName = param1;
         this.mLayers = new Array();
         this.mColorSky = param3;
         this.mColorGround = param4;
         this.mAmbientSoundName = param5;
         this.mTextureName = param6;
         this.mTextureStrokeColor = param7;
         this.mIconName = param8;
         for each(_loc10_ in param2.Layer)
         {
            this.newLayer(_loc10_.@id,_loc10_.@speed,-1,0,0,_loc10_.@foreground != 0,_loc10_.@static == "true",_loc10_.@scale,_loc10_.@tileable != "false",_loc10_.@xOffset);
         }
         this.mLayers.reverse();
         this.mCost = param9;
      }
      
      public function newLayer(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number) : void
      {
         this.mLayers[this.mLayers.length] = new LevelThemeBackgroundLayer(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public function getCost() : Number
      {
         return this.mCost;
      }
   }
}
