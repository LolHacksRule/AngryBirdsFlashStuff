package com.angrybirds.engine
{
   import starling.extensions.ParticleDesignerPS;
   import starling.textures.Texture;
   
   public class RovioParticleDesignerPS extends ParticleDesignerPS
   {
       
      
      public function RovioParticleDesignerPS(config:XML, texture:Texture)
      {
         super(config,texture);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
