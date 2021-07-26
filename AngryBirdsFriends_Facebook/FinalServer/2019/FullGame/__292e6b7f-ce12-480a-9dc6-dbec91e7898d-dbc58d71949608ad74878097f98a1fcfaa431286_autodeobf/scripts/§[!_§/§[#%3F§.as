package §[!_§
{
   import §"#k§.§79§;
   import §,#e§.DisplayObject;
   import §,#e§.Stage;
   import §,#e§.§^n§;
   import §-#]§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §[#?§ extends §`#!§
   {
      
      private static const §^#U§:int = 0;
      
      private static const §=#B§:int = 4;
      
      private static const §2!>§:int = 8;
      
      private static const §'!#§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §?v§:int = 5;
      
      private static const §6+§:int = 6;
       
      
      private var §6$9§:Vector.<Number>;
      
      private var §?#9§:Vector.<Number>;
      
      private var §!!R§:Program3D;
      
      private var §;$0§:Program3D;
      
      private var §-#^§:Program3D;
      
      private var §5!V§:Program3D;
      
      private var §8"o§:Program3D;
      
      private var §6#X§:Program3D;
      
      private var §'k§:Program3D;
      
      private var §>$B§:Program3D;
      
      private var §[#3§:§2" §;
      
      private var §7h§:Boolean = false;
      
      private var §3$$§:Boolean = false;
      
      private var §4"G§:Number = 0.0;
      
      private var §6#;§:Number = 0.0;
      
      public function §[#?§(param1:Number, param2:Number)
      {
         this.§6$9§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§?#9§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§4"G§ = param1;
         this.§6#;§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§!!R§,this.§;$0§,this.§-#^§,this.§5!V§,this.§8"o§,this.§6#X§,this.§'k§,this.§>$B§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§!!R§ = null;
         this.§;$0§ = null;
         this.§-#^§ = null;
         this.§5!V§ = null;
         this.§8"o§ = null;
         this.§6#X§ = null;
         this.§'k§ = null;
         this.§>$B§ = null;
         super.dispose();
      }
      
      public function set §5;§(param1:§2" §) : void
      {
         this.§[#3§ = param1;
      }
      
      public function §<_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§6$9§[§^#U§ + 0] = param1;
         this.§6$9§[§^#U§ + 1] = param2;
         this.§6$9§[§^#U§ + 2] = param3;
         this.§6$9§[§^#U§ + 3] = param4;
      }
      
      public function §<$§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§6$9§[§2!>§ + 0] = param1;
         this.§6$9§[§2!>§ + 1] = param2;
         this.§6$9§[§2!>§ + 2] = param3;
         this.§6$9§[§2!>§ + 3] = param4;
         this.§6$9§[§'!#§ + 0] = 1 - param1;
         this.§6$9§[§'!#§ + 1] = 1 - param2;
         this.§6$9§[§'!#§ + 2] = 1 - param3;
         this.§6$9§[§'!#§ + 3] = 1 - param4;
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
         this.§!!R§ = §[!U§(fragmentProgramCodeColor,vertexShader);
         this.§-#^§ = §[!U§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§8"o§ = §[!U§(fragmentProgramCodeMask,vertexShader);
         this.§'k§ = §[!U§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§;$0§ = §[!U§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§5!V§ = §[!U§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§6#X§ = §[!U§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§>$B§ = §[!U§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§ ,§,param2.§8I§);
      }
      
      private function §'#4§(param1:Number, param2:Number) : void
      {
         this.§?#9§[PIXEL_1_OFFSET + 0] = 0;
         this.§?#9§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§?#9§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§?#9§[PIXEL_2_OFFSET + 1] = 0;
         this.§?#9§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§?#9§[PIXEL_3_OFFSET + 1] = 0;
         this.§?#9§[PIXEL_4_OFFSET + 0] = 0;
         this.§?#9§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§79§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§3!x§ / this.§4"G§,param2.§ !O§ / this.§6#;§);
         this.§'#4§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§6$9§,§?v§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§?#9§,§6+§);
         if(!this.§[#3§ || !this.§[#3§.texture)
         {
            this.§6"x§(param2);
         }
         else
         {
            this.§[$7§(param2);
         }
         param2.§9w§ = this.§'5§;
      }
      
      private function §6"x§(param1:§79§) : void
      {
         if(!this.§'5§)
         {
            if(!this.§,"^§)
            {
               param1.§"!§(this.§!!R§);
            }
            else
            {
               param1.§"!§(this.§;$0§);
            }
         }
         else if(!this.§,"^§)
         {
            param1.§"!§(this.§-#^§);
         }
         else
         {
            param1.§"!§(this.§5!V§);
         }
      }
      
      private function §[$7§(param1:§79§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§[#3§.texture.getBase(_loc2_));
         if(!this.§'5§)
         {
            if(!this.§,"^§)
            {
               param1.§"!§(this.§8"o§);
            }
            else
            {
               param1.§"!§(this.§6#X§);
            }
         }
         else if(!this.§,"^§)
         {
            param1.§"!§(this.§'k§);
         }
         else
         {
            param1.§"!§(this.§>$B§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§79§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setTextureAt(1,null);
         param2.§9w§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§'5§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§79§, param3:Number) : void
      {
         if(!this.§'5§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§6@§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§6@§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§79§, param3:Boolean, param4:Number, param5:Texture) : §^n§
      {
         if(!this.§'5§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §'5§(param1:Boolean) : void
      {
         this.§7h§ = param1;
      }
      
      public function get §'5§() : Boolean
      {
         return this.§7h§;
      }
      
      public function set §,"^§(param1:Boolean) : void
      {
         this.§3$$§ = param1;
      }
      
      public function get §,"^§() : Boolean
      {
         return this.§3$$§ && this.§;$0§ != null && this.§5!V§ != null && this.§6#X§ != null && this.§>$B§ != null;
      }
   }
}
