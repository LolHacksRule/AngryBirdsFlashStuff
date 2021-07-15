package com.angrybirds.data.level.theme
{
   public class LevelThemeBackground
   {
      
      public static const GROUND_TYPE:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var mTextureName:String;
      
      protected var mColorSky:int;
      
      protected var mColorGround:int;
      
      protected var mLayers:Vector.<LevelThemeBackgroundLayer>;
      
      protected var mAmbientSoundName:String;
      
      protected var mIconName:String;
      
      public function LevelThemeBackground(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.mId = param1;
         this.mLayers = new Vector.<LevelThemeBackgroundLayer>();
         this.mColorSky = param2;
         this.mColorGround = param3;
         this.mAmbientSoundName = param4;
         this.mTextureName = param5;
         this.mIconName = param6;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get ambientSoundName() : String
      {
         return this.mAmbientSoundName;
      }
      
      public function get colorSky() : int
      {
         return this.mColorSky;
      }
      
      public function get colorGround() : int
      {
         return this.mColorGround;
      }
      
      public function get textureName() : String
      {
         return this.mTextureName;
      }
      
      public function get layerCount() : int
      {
         return this.mLayers.length;
      }
      
      public function initLayersFromXML(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:LevelThemeBackgroundLayer = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.initializeParticleEmittersFromXML(_loc2_.ParticleEmitter);
         }
         this.mLayers.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : LevelThemeBackgroundLayer
      {
         var _loc11_:LevelThemeBackgroundLayer = new LevelThemeBackgroundLayer(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.mLayers.push(_loc11_);
         return _loc11_;
      }
      
      public function getLayer(param1:int) : LevelThemeBackgroundLayer
      {
         return this.mLayers[param1];
      }
   }
}
