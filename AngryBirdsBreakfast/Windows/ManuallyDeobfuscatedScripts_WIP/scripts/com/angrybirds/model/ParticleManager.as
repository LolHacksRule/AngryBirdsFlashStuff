package com.angrybirds.model
{
   import com.rovio.graphics.TextureManager;
   import starling.textures.Texture;
   import com.angrybirds.engine.RovioParticleDesignerPS;
   import starling.core.Starling;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var sParticleResources:Object = {};
      
      private static var sTextures:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function registerParticleEmitter(param1:String, param2:XML, param3:BitmapData) : void
      {
         sParticleResources[param1] = new ParticleResource(param2,param3);
      }
      
      public static function createParticleEmitter(param1:String, param2:TextureManager) : RovioParticleDesignerPS
      {
         var _loc3_:ParticleResource = getParticleResource(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(sTextures.indexOf(_loc5_) < 0)
         {
            sTextures.push(_loc5_);
         }
         return new RovioParticleDesignerPS(_loc3_.config,_loc5_);
      }
      
      private static function getParticleResource(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!Starling.isSoftware)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = sParticleResources[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = sParticleResources[param1] as ParticleResource;
         }
         return _loc3_;
      }
   }
}
}

import flash.display.BitmapData;

class ParticleResource
{
    
   
   public var config:XML;
   
   public var bitmapData:BitmapData;
   
   function ParticleResource(param1:XML, param2:BitmapData)
   {
      super();
      this.config = param1;
      this.bitmapData = param2;
   }
}
