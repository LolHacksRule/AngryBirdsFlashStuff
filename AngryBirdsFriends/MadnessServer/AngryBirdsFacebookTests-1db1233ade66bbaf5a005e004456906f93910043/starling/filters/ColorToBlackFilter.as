package starling.filters
{
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   import starling.core.RenderSupport;
   import starling.display.DisplayObject;
   import starling.display.QuadBatch;
   import starling.display.Stage;
   import starling.textures.Texture;
   
   public class ColorToBlackFilter extends FragmentFilter
   {
      
      private static const THRESHOLD_COLOR_OFFSET:int = 0;
      
      private static const THRESHOLD_ALPHA_OFFSET:int = 4;
      
      private static const BASE_COLOR_OFFSET:int = 8;
      
      private static const FILTERED_COLOR_OFFSET:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const FRAGMENT_VALUE_COUNT:int = 5;
      
      private static const VERTEX_VALUE_COUNT:int = 6;
       
      
      private var mFragmentData:Vector.<Number>;
      
      private var mVertexData:Vector.<Number>;
      
      private var mShaderProgramColor:Program3D;
      
      private var mShaderProgramColorAntiAlias:Program3D;
      
      private var mShaderProgramColorDirect:Program3D;
      
      private var mShaderProgramColorDirectAntiAlias:Program3D;
      
      private var mShaderProgramMask:Program3D;
      
      private var mShaderProgramMaskAntiAlias:Program3D;
      
      private var mShaderProgramMaskDirect:Program3D;
      
      private var mShaderProgramMaskDirectAntiAlias:Program3D;
      
      private var mMaskFilter:CacheAsTextureFilter;
      
      private var mDirectRender:Boolean = false;
      
      private var mAntiAliasing:Boolean = false;
      
      private var mBaseBackBufferWidth:Number = 0.0;
      
      private var mBaseBackBufferHeight:Number = 0.0;
      
      public function ColorToBlackFilter(baseCanvasWidth:Number, baseCanvasHeight:Number)
      {
         this.mFragmentData = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.mVertexData = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.mBaseBackBufferWidth = baseCanvasWidth;
         this.mBaseBackBufferHeight = baseCanvasHeight;
      }
      
      override public function dispose() : void
      {
         var program:Program3D = null;
         var programs:Array = [this.mShaderProgramColor,this.mShaderProgramColorAntiAlias,this.mShaderProgramColorDirect,this.mShaderProgramColorDirectAntiAlias,this.mShaderProgramMask,this.mShaderProgramMaskAntiAlias,this.mShaderProgramMaskDirect,this.mShaderProgramMaskDirectAntiAlias];
         for each(program in programs)
         {
            if(program)
            {
               program.dispose();
            }
         }
         this.mShaderProgramColor = null;
         this.mShaderProgramColorAntiAlias = null;
         this.mShaderProgramColorDirect = null;
         this.mShaderProgramColorDirectAntiAlias = null;
         this.mShaderProgramMask = null;
         this.mShaderProgramMaskAntiAlias = null;
         this.mShaderProgramMaskDirect = null;
         this.mShaderProgramMaskDirectAntiAlias = null;
         super.dispose();
      }
      
      public function set maskFilter(filter:CacheAsTextureFilter) : void
      {
         this.mMaskFilter = filter;
      }
      
      public function setThresholdColor(red:Number, green:Number, blue:Number, alpha:Number) : void
      {
         this.mFragmentData[THRESHOLD_COLOR_OFFSET + 0] = red;
         this.mFragmentData[THRESHOLD_COLOR_OFFSET + 1] = green;
         this.mFragmentData[THRESHOLD_COLOR_OFFSET + 2] = blue;
         this.mFragmentData[THRESHOLD_COLOR_OFFSET + 3] = alpha;
      }
      
      public function setBaseColor(red:Number, green:Number, blue:Number, alpha:Number) : void
      {
         this.mFragmentData[BASE_COLOR_OFFSET + 0] = red;
         this.mFragmentData[BASE_COLOR_OFFSET + 1] = green;
         this.mFragmentData[BASE_COLOR_OFFSET + 2] = blue;
         this.mFragmentData[BASE_COLOR_OFFSET + 3] = alpha;
         this.mFragmentData[FILTERED_COLOR_OFFSET + 0] = 1 - red;
         this.mFragmentData[FILTERED_COLOR_OFFSET + 1] = 1 - green;
         this.mFragmentData[FILTERED_COLOR_OFFSET + 2] = 1 - blue;
         this.mFragmentData[FILTERED_COLOR_OFFSET + 3] = 1 - alpha;
      }
      
      override protected function createPrograms() : void
      {
         var fragmentProgramCodeColor:String = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft2, ft0, fc0 \n" + "mul ft3.xyz, ft2.xyz, ft2.yxy \n" + "mul ft2.xyz, ft3.xyz, ft3.zzx \n" + "mul ft2, ft2, fc3 \n" + "mul ft2, ft0, ft2 \n" + "mul ft1, ft0, fc2 \n" + "add oc, ft1, ft2 \n";
         var fragmentProgramCodeColorAntiAlias:String = "tex ft0, v1, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft2, ft0, fc0 \n" + "mul ft3.xyz, ft2.xyz, ft2.yxy \n" + "mul ft2.xyz, ft3.xyz, ft3.zzx \n" + "tex ft0, v2, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v3, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v4, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "mul ft2, ft2, fc4 \n" + "mul ft3, ft2, fc3 \n" + "mul ft1, ft0, ft3 \n" + "mul ft2, ft0, fc2 \n" + "add oc, ft1, ft2 \n";
         var fragmentProgramCodeMask:String = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft2, ft0, fc0 \n" + "mul ft3.xyz, ft2.xyz, ft2.yxy \n" + "mul ft2.xyz, ft3.xyz, ft3.zzx \n" + "tex ft1, v5, fs1 <2d, clamp, linear, mipnearest>  \n" + "sge ft3, ft1, fc1 \n" + "mul ft3.xyz, ft3.xyz, ft3.www \n" + "max ft3, ft3, ft2 \n" + "mul ft3, ft3, fc3 \n" + "max ft2.x, ft2.x, ft1.w \n" + "mul ft3.xyz, ft3.xyz, ft2.xxx \n" + "mul ft1, ft0, ft3 \n" + "mul ft2, ft0, fc2 \n" + "add oc, ft1, ft2 \n";
         var fragmentProgramCodeMaskAntiAlias:String = "tex ft0, v1, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft2, ft0, fc0 \n" + "mul ft3.xyz, ft2.xyz, ft2.yxy \n" + "mul ft2.xyz, ft3.xyz, ft3.zzx \n" + "tex ft0, v2, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v3, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v4, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "sge ft1, ft0, fc0 \n" + "mul ft3.xyz, ft1.xyz, ft1.yxy \n" + "mul ft1.xyz, ft3.xyz, ft3.zzx \n" + "add ft2, ft2, ft1 \n" + "mul ft2, ft2, fc4 \n" + "tex ft1, v5, fs1 <2d, clamp, linear, mipnearest>  \n" + "sge ft3, ft1, fc1 \n" + "mul ft3.xyz, ft3.xyz, ft3.www \n" + "max ft3, ft3, ft2 \n" + "mul ft3, ft3, fc3 \n" + "max ft2.x, ft2.x, ft1.w \n" + "mul ft3.xyz, ft3.xyz, ft2.xxx \n" + "mul ft1, ft0, ft3 \n" + "mul ft2, ft0, fc2 \n" + "add oc, ft1, ft2 \n";
         var vertexShader:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2 \n" + "mov v5, va2 \n";
         var vertexShaderAntiAlias:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2 \n" + "add v1, va2, vc7 \n" + "add v2, va2, vc8 \n" + "add v3, va2, vc9 \n" + "add v4, va2, vc10 \n" + "mov v5, va2 \n";
         var vertexShaderDirect:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mul vt1, vt1, vc5 \n" + "add vt1, vt1, vc6 \n" + "mov v0, va2 \n" + "mov v5, vt1 \n";
         var vertexShaderDirectAntiAlias:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mul vt1, vt1, vc5 \n" + "add vt1, vt1, vc6 \n" + "mov v0, va2 \n" + "add v1, va2, vc7 \n" + "add v2, va2, vc8 \n" + "add v3, va2, vc9 \n" + "add v4, va2, vc10 \n" + "mov v5, vt1 \n";
         this.mShaderProgramColor = assembleAgal(fragmentProgramCodeColor,vertexShader);
         this.mShaderProgramColorDirect = assembleAgal(fragmentProgramCodeColor,vertexShaderDirect);
         this.mShaderProgramMask = assembleAgal(fragmentProgramCodeMask,vertexShader);
         this.mShaderProgramMaskDirect = assembleAgal(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.mShaderProgramColorAntiAlias = assembleAgal(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.mShaderProgramColorDirectAntiAlias = assembleAgal(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.mShaderProgramMaskAntiAlias = assembleAgal(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.mShaderProgramMaskDirectAntiAlias = assembleAgal(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(object:DisplayObject, stage:Stage, intersectWithStage:Boolean, resultRect:Rectangle) : void
      {
         resultRect.setTo(0,0,stage.projectionCanvasWidth,stage.projectionCanvasHeight);
      }
      
      private function updateParameters(width:Number, height:Number) : void
      {
         this.mVertexData[PIXEL_1_OFFSET + 0] = 0;
         this.mVertexData[PIXEL_1_OFFSET + 1] = -1 / height;
         this.mVertexData[PIXEL_2_OFFSET + 0] = -1 / width;
         this.mVertexData[PIXEL_2_OFFSET + 1] = 0;
         this.mVertexData[PIXEL_3_OFFSET + 0] = 1 / width;
         this.mVertexData[PIXEL_3_OFFSET + 1] = 0;
         this.mVertexData[PIXEL_4_OFFSET + 0] = 0;
         this.mVertexData[PIXEL_4_OFFSET + 1] = 1 / height;
      }
      
      override protected function activate(pass:int, support:RenderSupport, texture:Texture) : void
      {
         var scale:Number = Math.max(support.backBufferWidth / this.mBaseBackBufferWidth,support.backBufferHeight / this.mBaseBackBufferHeight);
         this.updateParameters(2048 * scale,2048 * scale);
         var context:Context3D = support.context;
         context.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.mFragmentData,FRAGMENT_VALUE_COUNT);
         context.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.mVertexData,VERTEX_VALUE_COUNT);
         if(!this.mMaskFilter || !this.mMaskFilter.texture)
         {
            this.activateProgramNoMask(support);
         }
         else
         {
            this.activateProgramMask(support);
         }
         support.renderProgramLocked = this.directRender;
      }
      
      private function activateProgramNoMask(support:RenderSupport) : void
      {
         if(!this.directRender)
         {
            if(!this.antiAliasing)
            {
               support.setRenderProgram(this.mShaderProgramColor);
            }
            else
            {
               support.setRenderProgram(this.mShaderProgramColorAntiAlias);
            }
         }
         else if(!this.antiAliasing)
         {
            support.setRenderProgram(this.mShaderProgramColorDirect);
         }
         else
         {
            support.setRenderProgram(this.mShaderProgramColorDirectAntiAlias);
         }
      }
      
      private function activateProgramMask(support:RenderSupport) : void
      {
         var context:Context3D = support.context;
         context.setTextureAt(1,this.mMaskFilter.texture.getBase(context));
         if(!this.directRender)
         {
            if(!this.antiAliasing)
            {
               support.setRenderProgram(this.mShaderProgramMask);
            }
            else
            {
               support.setRenderProgram(this.mShaderProgramMaskAntiAlias);
            }
         }
         else if(!this.antiAliasing)
         {
            support.setRenderProgram(this.mShaderProgramMaskDirect);
         }
         else
         {
            support.setRenderProgram(this.mShaderProgramMaskDirectAntiAlias);
         }
      }
      
      override protected function deactivate(pass:int, support:RenderSupport, texture:Texture) : void
      {
         var context:Context3D = support.context;
         context.setTextureAt(1,null);
         support.renderProgramLocked = false;
      }
      
      override protected function updateBuffersAndTextures(context:Context3D, scale:Number) : void
      {
         if(!this.directRender)
         {
            super.updateBuffersAndTextures(context,scale);
         }
      }
      
      override protected function renderDisplayObject(object:DisplayObject, support:RenderSupport, parentAlpha:Number) : void
      {
         if(!this.directRender)
         {
            super.renderDisplayObject(object,support,parentAlpha);
         }
         else
         {
            support.finishQuadBatch();
            this.activate(0,support,null);
            object.render(support,parentAlpha);
            support.finishQuadBatch();
            this.deactivate(0,support,null);
         }
      }
      
      override protected function renderFilter(object:DisplayObject, support:RenderSupport, intoCache:Boolean, scale:Number, previousRenderTarget:Texture) : QuadBatch
      {
         if(!this.directRender)
         {
            return super.renderFilter(object,support,intoCache,scale,previousRenderTarget);
         }
         return null;
      }
      
      public function set directRender(directRender:Boolean) : void
      {
         this.mDirectRender = directRender;
      }
      
      public function get directRender() : Boolean
      {
         return this.mDirectRender;
      }
      
      public function set antiAliasing(antiAliasing:Boolean) : void
      {
         this.mAntiAliasing = antiAliasing;
      }
      
      public function get antiAliasing() : Boolean
      {
         return this.mAntiAliasing && this.mShaderProgramColorAntiAlias != null && this.mShaderProgramColorDirectAntiAlias != null && this.mShaderProgramMaskAntiAlias != null && this.mShaderProgramMaskDirectAntiAlias != null;
      }
   }
}
