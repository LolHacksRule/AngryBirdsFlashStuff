package §9!<§
{
   import §9$;§.Texture;
   import §?"e§.§[!Z§;
   import §^"S§.§9$=§;
   import §^"S§.DisplayObject;
   import §^"S§.Stage;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §^",§ extends §-!_§
   {
      
      private static const §="J§:int = 0;
      
      private static const §@"y§:int = 4;
      
      private static const §<!`§:int = 8;
      
      private static const §@$8§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §4#s§:int = 5;
      
      private static const §7#l§:int = 6;
       
      
      private var §"#3§:Vector.<Number>;
      
      private var §3!n§:Vector.<Number>;
      
      private var §%$?§:Program3D;
      
      private var §`!s§:Program3D;
      
      private var § "9§:Program3D;
      
      private var §!q§:Program3D;
      
      private var §8#B§:Program3D;
      
      private var §5!$§:Program3D;
      
      private var §!!2§:Program3D;
      
      private var §+!Z§:Program3D;
      
      private var §="0§:§5$@§;
      
      private var § !I§:Boolean = false;
      
      private var §>6§:Boolean = false;
      
      private var §'$9§:Number = 0.0;
      
      private var §6$-§:Number = 0.0;
      
      public function §^",§(param1:Number, param2:Number)
      {
         this.§"#3§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§3!n§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§'$9§ = param1;
         this.§6$-§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§%$?§,this.§`!s§,this.§ "9§,this.§!q§,this.§8#B§,this.§5!$§,this.§!!2§,this.§+!Z§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§%$?§ = null;
         this.§`!s§ = null;
         this.§ "9§ = null;
         this.§!q§ = null;
         this.§8#B§ = null;
         this.§5!$§ = null;
         this.§!!2§ = null;
         this.§+!Z§ = null;
         super.dispose();
      }
      
      public function set §-"Q§(param1:§5$@§) : void
      {
         this.§="0§ = param1;
      }
      
      public function § $,§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§"#3§[§="J§ + 0] = param1;
         this.§"#3§[§="J§ + 1] = param2;
         this.§"#3§[§="J§ + 2] = param3;
         this.§"#3§[§="J§ + 3] = param4;
      }
      
      public function §6"K§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§"#3§[§<!`§ + 0] = param1;
         this.§"#3§[§<!`§ + 1] = param2;
         this.§"#3§[§<!`§ + 2] = param3;
         this.§"#3§[§<!`§ + 3] = param4;
         this.§"#3§[§@$8§ + 0] = 1 - param1;
         this.§"#3§[§@$8§ + 1] = 1 - param2;
         this.§"#3§[§@$8§ + 2] = 1 - param3;
         this.§"#3§[§@$8§ + 3] = 1 - param4;
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
         this.§%$?§ = §?"r§(fragmentProgramCodeColor,vertexShader);
         this.§ "9§ = §?"r§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§8#B§ = §?"r§(fragmentProgramCodeMask,vertexShader);
         this.§!!2§ = §?"r§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§`!s§ = §?"r§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§!q§ = §?"r§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§5!$§ = §?"r§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§+!Z§ = §?"r§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§0!§,param2.§53§);
      }
      
      private function §2!m§(param1:Number, param2:Number) : void
      {
         this.§3!n§[PIXEL_1_OFFSET + 0] = 0;
         this.§3!n§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§3!n§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§3!n§[PIXEL_2_OFFSET + 1] = 0;
         this.§3!n§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§3!n§[PIXEL_3_OFFSET + 1] = 0;
         this.§3!n§[PIXEL_4_OFFSET + 0] = 0;
         this.§3!n§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§[!Z§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§?D§ / this.§'$9§,param2.§<"M§ / this.§6$-§);
         this.§2!m§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§"#3§,§4#s§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§3!n§,§7#l§);
         if(!this.§="0§ || !this.§="0§.texture)
         {
            this.§8#R§(param2);
         }
         else
         {
            this.§&&§(param2);
         }
         param2.§%"I§ = this.§9";§;
      }
      
      private function §8#R§(param1:§[!Z§) : void
      {
         if(!this.§9";§)
         {
            if(!this.§;!+§)
            {
               param1.§5U§(this.§%$?§);
            }
            else
            {
               param1.§5U§(this.§`!s§);
            }
         }
         else if(!this.§;!+§)
         {
            param1.§5U§(this.§ "9§);
         }
         else
         {
            param1.§5U§(this.§!q§);
         }
      }
      
      private function §&&§(param1:§[!Z§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§="0§.texture.getBase(_loc2_));
         if(!this.§9";§)
         {
            if(!this.§;!+§)
            {
               param1.§5U§(this.§8#B§);
            }
            else
            {
               param1.§5U§(this.§5!$§);
            }
         }
         else if(!this.§;!+§)
         {
            param1.§5U§(this.§!!2§);
         }
         else
         {
            param1.§5U§(this.§+!Z§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§[!Z§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setTextureAt(1,null);
         param2.§%"I§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§9";§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§[!Z§, param3:Number) : void
      {
         if(!this.§9";§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§>#s§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§>#s§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§[!Z§, param3:Boolean, param4:Number, param5:Texture) : §9$=§
      {
         if(!this.§9";§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §9";§(param1:Boolean) : void
      {
         this.§ !I§ = param1;
      }
      
      public function get §9";§() : Boolean
      {
         return this.§ !I§;
      }
      
      public function set §;!+§(param1:Boolean) : void
      {
         this.§>6§ = param1;
      }
      
      public function get §;!+§() : Boolean
      {
         return this.§>6§ && this.§`!s§ != null && this.§!q§ != null && this.§5!$§ != null && this.§+!Z§ != null;
      }
   }
}
