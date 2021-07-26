package §?$%§
{
   import §"#z§.Texture;
   import §'!j§.§^$$§;
   import §6#H§.§<O§;
   import §6#H§.DisplayObject;
   import §6#H§.Stage;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §]!=§ extends §&"@§
   {
      
      private static const §<M§:int = 0;
      
      private static const §,#5§:int = 4;
      
      private static const §9#O§:int = 8;
      
      private static const §[#!§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §&"G§:int = 5;
      
      private static const §"C§:int = 6;
       
      
      private var §=!,§:Vector.<Number>;
      
      private var §0$9§:Vector.<Number>;
      
      private var §?"j§:Program3D;
      
      private var §[!e§:Program3D;
      
      private var § $5§:Program3D;
      
      private var §4#_§:Program3D;
      
      private var §;H§:Program3D;
      
      private var §9$B§:Program3D;
      
      private var §"$7§:Program3D;
      
      private var §<#Z§:Program3D;
      
      private var §"#!§:§3#5§;
      
      private var §2#L§:Boolean = false;
      
      private var § §:Boolean = false;
      
      private var §`F§:Number = 0.0;
      
      private var §^`§:Number = 0.0;
      
      public function §]!=§(param1:Number, param2:Number)
      {
         this.§=!,§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§0$9§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§`F§ = param1;
         this.§^`§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§?"j§,this.§[!e§,this.§ $5§,this.§4#_§,this.§;H§,this.§9$B§,this.§"$7§,this.§<#Z§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§?"j§ = null;
         this.§[!e§ = null;
         this.§ $5§ = null;
         this.§4#_§ = null;
         this.§;H§ = null;
         this.§9$B§ = null;
         this.§"$7§ = null;
         this.§<#Z§ = null;
         super.dispose();
      }
      
      public function set §5#A§(param1:§3#5§) : void
      {
         this.§"#!§ = param1;
      }
      
      public function §=!s§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§=!,§[§<M§ + 0] = param1;
         this.§=!,§[§<M§ + 1] = param2;
         this.§=!,§[§<M§ + 2] = param3;
         this.§=!,§[§<M§ + 3] = param4;
      }
      
      public function §>!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§=!,§[§9#O§ + 0] = param1;
         this.§=!,§[§9#O§ + 1] = param2;
         this.§=!,§[§9#O§ + 2] = param3;
         this.§=!,§[§9#O§ + 3] = param4;
         this.§=!,§[§[#!§ + 0] = 1 - param1;
         this.§=!,§[§[#!§ + 1] = 1 - param2;
         this.§=!,§[§[#!§ + 2] = 1 - param3;
         this.§=!,§[§[#!§ + 3] = 1 - param4;
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
         this.§?"j§ = §1"T§(fragmentProgramCodeColor,vertexShader);
         this.§ $5§ = §1"T§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§;H§ = §1"T§(fragmentProgramCodeMask,vertexShader);
         this.§"$7§ = §1"T§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§[!e§ = §1"T§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§4#_§ = §1"T§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§9$B§ = §1"T§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§<#Z§ = §1"T§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§!"b§,param2.§<"3§);
      }
      
      private function §`"t§(param1:Number, param2:Number) : void
      {
         this.§0$9§[PIXEL_1_OFFSET + 0] = 0;
         this.§0$9§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§0$9§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§0$9§[PIXEL_2_OFFSET + 1] = 0;
         this.§0$9§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§0$9§[PIXEL_3_OFFSET + 1] = 0;
         this.§0$9§[PIXEL_4_OFFSET + 0] = 0;
         this.§0$9§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§^$$§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§2D§ / this.§`F§,param2.§,P§ / this.§^`§);
         this.§`"t§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§=!,§,§&"G§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§0$9§,§"C§);
         if(!this.§"#!§ || !this.§"#!§.texture)
         {
            this.§'!@§(param2);
         }
         else
         {
            this.§%#A§(param2);
         }
         param2.§@!$§ = this.§=1§;
      }
      
      private function §'!@§(param1:§^$$§) : void
      {
         if(!this.§=1§)
         {
            if(!this.§#X§)
            {
               param1.§8$C§(this.§?"j§);
            }
            else
            {
               param1.§8$C§(this.§[!e§);
            }
         }
         else if(!this.§#X§)
         {
            param1.§8$C§(this.§ $5§);
         }
         else
         {
            param1.§8$C§(this.§4#_§);
         }
      }
      
      private function §%#A§(param1:§^$$§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§"#!§.texture.getBase(_loc2_));
         if(!this.§=1§)
         {
            if(!this.§#X§)
            {
               param1.§8$C§(this.§;H§);
            }
            else
            {
               param1.§8$C§(this.§9$B§);
            }
         }
         else if(!this.§#X§)
         {
            param1.§8$C§(this.§"$7§);
         }
         else
         {
            param1.§8$C§(this.§<#Z§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§^$$§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setTextureAt(1,null);
         param2.§@!$§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§=1§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§^$$§, param3:Number) : void
      {
         if(!this.§=1§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§5!#§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§5!#§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§^$$§, param3:Boolean, param4:Number, param5:Texture) : §<O§
      {
         if(!this.§=1§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §=1§(param1:Boolean) : void
      {
         this.§2#L§ = param1;
      }
      
      public function get §=1§() : Boolean
      {
         return this.§2#L§;
      }
      
      public function set §#X§(param1:Boolean) : void
      {
         this.§ § = param1;
      }
      
      public function get §#X§() : Boolean
      {
         return this.§ § && this.§[!e§ != null && this.§4#_§ != null && this.§9$B§ != null && this.§<#Z§ != null;
      }
   }
}
