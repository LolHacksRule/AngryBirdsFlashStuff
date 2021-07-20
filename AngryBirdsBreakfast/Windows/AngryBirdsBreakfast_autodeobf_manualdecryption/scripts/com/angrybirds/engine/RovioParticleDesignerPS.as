package com.angrybirds.engine
{
   import starling.textures.Texture;
   import starling.extensions.ParticleDesignerPS;
   
   public class RovioParticleDesignerPS extends ParticleDesignerPS
   {
       
      
      public function RovioParticleDesignerPS(param1:XML, param2:Texture)
      {
         super(param1,param2);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
