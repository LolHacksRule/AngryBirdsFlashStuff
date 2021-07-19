package starling.core
{
   import flash.geom.Matrix;
   import starling.display.Quad;
   import starling.textures.Texture;
   
   public class BatchInstance
   {
       
      
      public var sortValue:Number;
      
      public var quad:Quad;
      
      public var parentAlpha:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var modelViewMatrix:Matrix;
      
      public var blendMode:int;
      
      public function BatchInstance()
      {
         super();
         this.modelViewMatrix = new Matrix();
      }
      
      public function assign(quad:Quad, parentAlpha:Number, texture:Texture, smoothing:int, modelViewMatrix:Matrix, blendMode:int) : void
      {
         this.sortValue = quad.sortValue;
         this.quad = quad;
         this.parentAlpha = parentAlpha;
         this.texture = texture;
         this.smoothing = smoothing;
         this.modelViewMatrix.a = modelViewMatrix.a;
         this.modelViewMatrix.b = modelViewMatrix.b;
         this.modelViewMatrix.c = modelViewMatrix.c;
         this.modelViewMatrix.d = modelViewMatrix.d;
         this.modelViewMatrix.tx = modelViewMatrix.tx;
         this.modelViewMatrix.ty = modelViewMatrix.ty;
         this.blendMode = blendMode;
      }
   }
}
