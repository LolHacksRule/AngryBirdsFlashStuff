package §,k§
{
   import §&!v§.DisplayObject;
   import §&!v§.Stage;
   import §&!v§.§^"L§;
   import §-"+§.Texture;
   import §9+§.§]"+§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §13§ extends §!=§
   {
      
      private static const §0"7§:int = 0;
      
      private static const §8"!§:int = 4;
      
      private static const §&B§:int = 8;
      
      private static const §^"G§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §1##§:int = 5;
      
      private static const §7#]§:int = 6;
       
      
      private var §,$'§:Vector.<Number>;
      
      private var §4Z§:Vector.<Number>;
      
      private var §&#l§:Program3D;
      
      private var §1!x§:Program3D;
      
      private var §6"n§:Program3D;
      
      private var §8$#§:Program3D;
      
      private var §!#%§:Program3D;
      
      private var §8#C§:Program3D;
      
      private var §9"$§:Program3D;
      
      private var §;!o§:Program3D;
      
      private var §0"^§:§9"!§;
      
      private var §-!H§:Boolean = false;
      
      private var §3i§:Boolean = false;
      
      private var §]#W§:Number = 0.0;
      
      private var §1"g§:Number = 0.0;
      
      public function §13§(param1:Number, param2:Number)
      {
         this.§,$'§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§4Z§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§]#W§ = param1;
         this.§1"g§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§&#l§,this.§1!x§,this.§6"n§,this.§8$#§,this.§!#%§,this.§8#C§,this.§9"$§,this.§;!o§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§&#l§ = null;
         this.§1!x§ = null;
         this.§6"n§ = null;
         this.§8$#§ = null;
         this.§!#%§ = null;
         this.§8#C§ = null;
         this.§9"$§ = null;
         this.§;!o§ = null;
         super.dispose();
      }
      
      public function set §^!d§(param1:§9"!§) : void
      {
         this.§0"^§ = param1;
      }
      
      public function §4"H§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§,$'§[§0"7§ + 0] = param1;
         this.§,$'§[§0"7§ + 1] = param2;
         this.§,$'§[§0"7§ + 2] = param3;
         this.§,$'§[§0"7§ + 3] = param4;
      }
      
      public function §`#z§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§,$'§[§&B§ + 0] = param1;
         this.§,$'§[§&B§ + 1] = param2;
         this.§,$'§[§&B§ + 2] = param3;
         this.§,$'§[§&B§ + 3] = param4;
         this.§,$'§[§^"G§ + 0] = 1 - param1;
         this.§,$'§[§^"G§ + 1] = 1 - param2;
         this.§,$'§[§^"G§ + 2] = 1 - param3;
         this.§,$'§[§^"G§ + 3] = 1 - param4;
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
         this.§&#l§ = §5!6§(fragmentProgramCodeColor,vertexShader);
         this.§6"n§ = §5!6§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§!#%§ = §5!6§(fragmentProgramCodeMask,vertexShader);
         this.§9"$§ = §5!6§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§1!x§ = §5!6§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§8$#§ = §5!6§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§8#C§ = §5!6§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§;!o§ = §5!6§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^#5§,param2.§,#A§);
      }
      
      private function §%"L§(param1:Number, param2:Number) : void
      {
         this.§4Z§[PIXEL_1_OFFSET + 0] = 0;
         this.§4Z§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§4Z§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§4Z§[PIXEL_2_OFFSET + 1] = 0;
         this.§4Z§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§4Z§[PIXEL_3_OFFSET + 1] = 0;
         this.§4Z§[PIXEL_4_OFFSET + 0] = 0;
         this.§4Z§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§]"+§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§4#B§ / this.§]#W§,param2.§'"5§ / this.§1"g§);
         this.§%"L§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§,$'§,§1##§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§4Z§,§7#]§);
         if(!this.§0"^§ || !this.§0"^§.texture)
         {
            this.§1$<§(param2);
         }
         else
         {
            this.§?$+§(param2);
         }
         param2.§'#,§ = this.§"A§;
      }
      
      private function §1$<§(param1:§]"+§) : void
      {
         if(!this.§"A§)
         {
            if(!this.§'"y§)
            {
               param1.§<$3§(this.§&#l§);
            }
            else
            {
               param1.§<$3§(this.§1!x§);
            }
         }
         else if(!this.§'"y§)
         {
            param1.§<$3§(this.§6"n§);
         }
         else
         {
            param1.§<$3§(this.§8$#§);
         }
      }
      
      private function §?$+§(param1:§]"+§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§0"^§.texture.getBase(_loc2_));
         if(!this.§"A§)
         {
            if(!this.§'"y§)
            {
               param1.§<$3§(this.§!#%§);
            }
            else
            {
               param1.§<$3§(this.§8#C§);
            }
         }
         else if(!this.§'"y§)
         {
            param1.§<$3§(this.§9"$§);
         }
         else
         {
            param1.§<$3§(this.§;!o§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§]"+§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setTextureAt(1,null);
         param2.§'#,§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§"A§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§]"+§, param3:Number) : void
      {
         if(!this.§"A§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§&!K§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§&!K§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§]"+§, param3:Boolean, param4:Number, param5:Texture) : §^"L§
      {
         if(!this.§"A§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §"A§(param1:Boolean) : void
      {
         this.§-!H§ = param1;
      }
      
      public function get §"A§() : Boolean
      {
         return this.§-!H§;
      }
      
      public function set §'"y§(param1:Boolean) : void
      {
         this.§3i§ = param1;
      }
      
      public function get §'"y§() : Boolean
      {
         return this.§3i§ && this.§1!x§ != null && this.§8$#§ != null && this.§8#C§ != null && this.§;!o§ != null;
      }
   }
}
