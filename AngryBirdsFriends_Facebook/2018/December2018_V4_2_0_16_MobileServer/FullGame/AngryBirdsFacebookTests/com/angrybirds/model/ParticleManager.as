package com.angrybirds.model
{
   import com.angrybirds.engine.RovioParticleDesignerPS;
   import com.rovio.graphics.TextureManager;
   import flash.display.BitmapData;
   import starling.core.Starling;
   import starling.textures.Texture;
   
   public class ParticleManager
   {
      
      private static var sParticleResources:Object = {};
      
      private static var sTextures:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function registerParticleEmitter(id:String, config:XML, bitmapData:BitmapData) : void
      {
         sParticleResources[id] = new ParticleResource(config,bitmapData);
      }
      
      public static function createParticleEmitter(id:String, textureManager:TextureManager) : RovioParticleDesignerPS
      {
         var particleResource:ParticleResource = getParticleResource(id);
         if(!particleResource)
         {
            return null;
         }
         var generateMipMaps:* = true;
         if(particleResource.config.disableMipMapping.length() == 1)
         {
            generateMipMaps = parseFloat(particleResource.config.disableMipMapping) == 0;
         }
         var texture:Texture = textureManager.getTextureFromBitmapData(particleResource.bitmapData,generateMipMaps);
         if(sTextures.indexOf(texture) < 0)
         {
            sTextures.push(texture);
         }
         return new RovioParticleDesignerPS(particleResource.config,texture);
      }
      
      private static function getParticleResource(id:String) : ParticleResource
      {
         var particleResource:ParticleResource = null;
         var primaryId:* = id;
         if(!Starling.isSoftware)
         {
            primaryId += "_gpu";
         }
         else
         {
            primaryId += "_cpu";
         }
         particleResource = sParticleResources[primaryId] as ParticleResource;
         if(!particleResource)
         {
            particleResource = sParticleResources[id] as ParticleResource;
         }
         return particleResource;
      }
   }
}

import flash.display.BitmapData;

class ParticleResource
{
    
   
   public var config:XML;
   
   public var bitmapData:BitmapData;
   
   function ParticleResource(config:XML, bitmapData:BitmapData)
   {
      super();
      this.config = config;
      this.bitmapData = bitmapData;
   }
}
