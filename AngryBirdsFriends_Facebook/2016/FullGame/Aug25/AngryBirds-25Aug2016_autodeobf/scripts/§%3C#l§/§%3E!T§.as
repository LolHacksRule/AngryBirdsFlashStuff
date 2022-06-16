package §<#l§
{
   import §1&§.Texture;
   import §9$§.§3f§;
   import §9$§.DisplayObject;
   import §9$§.Stage;
   import §^a§.§'"1§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §>!T§ extends §+"i§
   {
      
      private static const §'"Z§:int = 0;
      
      private static const §!"N§:int = 4;
      
      private static const §"!O§:int = 8;
      
      private static const §+!N§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §`"B§:int = 5;
      
      private static const §@#%§:int = 6;
       
      
      private var §;#G§:Vector.<Number>;
      
      private var §'#B§:Vector.<Number>;
      
      private var §5#r§:Program3D;
      
      private var §@$2§:Program3D;
      
      private var §+$+§:Program3D;
      
      private var §]![§:Program3D;
      
      private var §&#P§:Program3D;
      
      private var §+!#§:Program3D;
      
      private var §2"!§:Program3D;
      
      private var §5#f§:Program3D;
      
      private var §5!7§:§0!l§;
      
      private var §8V§:Boolean = false;
      
      private var §+#O§:Boolean = false;
      
      private var §,#b§:Number = 0.0;
      
      private var §'"$§:Number = 0.0;
      
      public function §>!T§(param1:Number, param2:Number)
      {
         this.§;#G§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§'#B§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§,#b§ = param1;
         this.§'"$§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§5#r§,this.§@$2§,this.§+$+§,this.§]![§,this.§&#P§,this.§+!#§,this.§2"!§,this.§5#f§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§5#r§ = null;
         this.§@$2§ = null;
         this.§+$+§ = null;
         this.§]![§ = null;
         this.§&#P§ = null;
         this.§+!#§ = null;
         this.§2"!§ = null;
         this.§5#f§ = null;
         super.dispose();
      }
      
      public function set §]"v§(param1:§0!l§) : void
      {
         this.§5!7§ = param1;
      }
      
      public function §"#t§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;#G§[§'"Z§ + 0] = param1;
         this.§;#G§[§'"Z§ + 1] = param2;
         this.§;#G§[§'"Z§ + 2] = param3;
         this.§;#G§[§'"Z§ + 3] = param4;
      }
      
      public function §;q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;#G§[§"!O§ + 0] = param1;
         this.§;#G§[§"!O§ + 1] = param2;
         this.§;#G§[§"!O§ + 2] = param3;
         this.§;#G§[§"!O§ + 3] = param4;
         this.§;#G§[§+!N§ + 0] = 1 - param1;
         this.§;#G§[§+!N§ + 1] = 1 - param2;
         this.§;#G§[§+!N§ + 2] = 1 - param3;
         this.§;#G§[§+!N§ + 3] = 1 - param4;
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
         this.§5#r§ = §%#_§(fragmentProgramCodeColor,vertexShader);
         this.§+$+§ = §%#_§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§&#P§ = §%#_§(fragmentProgramCodeMask,vertexShader);
         this.§2"!§ = §%#_§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§@$2§ = §%#_§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§]![§ = §%#_§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§+!#§ = §%#_§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§5#f§ = §%#_§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^"p§,param2.§4"O§);
      }
      
      private function §-!Y§(param1:Number, param2:Number) : void
      {
         this.§'#B§[PIXEL_1_OFFSET + 0] = 0;
         this.§'#B§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§'#B§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§'#B§[PIXEL_2_OFFSET + 1] = 0;
         this.§'#B§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§'#B§[PIXEL_3_OFFSET + 1] = 0;
         this.§'#B§[PIXEL_4_OFFSET + 0] = 0;
         this.§'#B§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§'"1§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§!#'§ / this.§,#b§,param2.§?"W§ / this.§'"$§);
         this.§-!Y§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§;#G§,§`"B§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§'#B§,§@#%§);
         if(!this.§5!7§ || !this.§5!7§.texture)
         {
            this.§#a§(param2);
         }
         else
         {
            this.§<#g§(param2);
         }
         param2.§5#m§ = this.§!!7§;
      }
      
      private function §#a§(param1:§'"1§) : void
      {
         if(!this.§!!7§)
         {
            if(!this.§%"0§)
            {
               param1.§0#0§(this.§5#r§);
            }
            else
            {
               param1.§0#0§(this.§@$2§);
            }
         }
         else if(!this.§%"0§)
         {
            param1.§0#0§(this.§+$+§);
         }
         else
         {
            param1.§0#0§(this.§]![§);
         }
      }
      
      private function §<#g§(param1:§'"1§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§5!7§.texture.getBase(_loc2_));
         if(!this.§!!7§)
         {
            if(!this.§%"0§)
            {
               param1.§0#0§(this.§&#P§);
            }
            else
            {
               param1.§0#0§(this.§+!#§);
            }
         }
         else if(!this.§%"0§)
         {
            param1.§0#0§(this.§2"!§);
         }
         else
         {
            param1.§0#0§(this.§5#f§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§'"1§, param3:Texture) : void
      {
         param2.context.setTextureAt(1,null);
         param2.§5#m§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§!!7§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§'"1§, param3:Number) : void
      {
         if(!this.§!!7§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§^!u§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§^!u§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§'"1§, param3:Boolean, param4:Number, param5:Texture) : §3f§
      {
         if(!this.§!!7§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §!!7§(param1:Boolean) : void
      {
         this.§8V§ = param1;
      }
      
      public function get §!!7§() : Boolean
      {
         return this.§8V§;
      }
      
      public function set §%"0§(param1:Boolean) : void
      {
         this.§+#O§ = param1;
      }
      
      public function get §%"0§() : Boolean
      {
         return this.§+#O§ && this.§@$2§ != null && this.§]![§ != null && this.§+!#§ != null && this.§5#f§ != null;
      }
   }
}
