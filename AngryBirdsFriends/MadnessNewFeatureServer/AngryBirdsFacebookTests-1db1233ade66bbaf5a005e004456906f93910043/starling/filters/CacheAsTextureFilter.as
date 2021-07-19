package starling.filters
{
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   import starling.core.RenderSupport;
   import starling.display.DisplayObject;
   import starling.display.Stage;
   import starling.textures.Texture;
   
   public class CacheAsTextureFilter extends FragmentFilter
   {
       
      
      private var mShaderProgram:Program3D;
      
      private var mAlpha:Vector.<Number>;
      
      public function CacheAsTextureFilter()
      {
         this.mAlpha = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var fragmentProgramCode:String = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.mShaderProgram = assembleAgal(fragmentProgramCode);
      }
      
      override protected function calculateBounds(object:DisplayObject, stage:Stage, intersectWithStage:Boolean, resultRect:Rectangle) : void
      {
         resultRect.setTo(0,0,stage.projectionCanvasWidth,stage.projectionCanvasHeight);
      }
      
      override protected function activate(pass:int, support:RenderSupport, texture:Texture) : void
      {
         var context:Context3D = support.context;
         context.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.mAlpha);
         support.setRenderProgram(this.mShaderProgram);
      }
      
      public function get texture() : Texture
      {
         return currentTexture;
      }
   }
}
