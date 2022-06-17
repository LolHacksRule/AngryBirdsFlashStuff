package §8!M§
{
   import §""4§.Texture;
   import §#Z§.§6!`§;
   import §#Z§.DisplayObject;
   import §#Z§.Stage;
   import §&§.§""F§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §&"5§ extends §07§
   {
      
      private static const §0#z§:int = 0;
      
      private static const §9#^§:int = 4;
      
      private static const §8#[§:int = 8;
      
      private static const §[!m§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §1!i§:int = 5;
      
      private static const §5$6§:int = 6;
       
      
      private var §^!!§:Vector.<Number>;
      
      private var §3!-§:Vector.<Number>;
      
      private var §7;§:Program3D;
      
      private var §8#$§:Program3D;
      
      private var §+$=§:Program3D;
      
      private var §,"K§:Program3D;
      
      private var §&$=§:Program3D;
      
      private var §5%§:Program3D;
      
      private var §1%§:Program3D;
      
      private var § <§:Program3D;
      
      private var §!$6§:§'!%§;
      
      private var §-]§:Boolean = false;
      
      private var §5q§:Boolean = false;
      
      private var §#3§:Number = 0.0;
      
      private var §!""§:Number = 0.0;
      
      public function §&"5§(param1:Number, param2:Number)
      {
         this.§^!!§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§3!-§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§#3§ = param1;
         this.§!""§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§7;§,this.§8#$§,this.§+$=§,this.§,"K§,this.§&$=§,this.§5%§,this.§1%§,this.§ <§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§7;§ = null;
         this.§8#$§ = null;
         this.§+$=§ = null;
         this.§,"K§ = null;
         this.§&$=§ = null;
         this.§5%§ = null;
         this.§1%§ = null;
         this.§ <§ = null;
         super.dispose();
      }
      
      public function set §5#9§(param1:§'!%§) : void
      {
         this.§!$6§ = param1;
      }
      
      public function §<#_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§^!!§[§0#z§ + 0] = param1;
         this.§^!!§[§0#z§ + 1] = param2;
         this.§^!!§[§0#z§ + 2] = param3;
         this.§^!!§[§0#z§ + 3] = param4;
      }
      
      public function §2!5§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§^!!§[§8#[§ + 0] = param1;
         this.§^!!§[§8#[§ + 1] = param2;
         this.§^!!§[§8#[§ + 2] = param3;
         this.§^!!§[§8#[§ + 3] = param4;
         this.§^!!§[§[!m§ + 0] = 1 - param1;
         this.§^!!§[§[!m§ + 1] = 1 - param2;
         this.§^!!§[§[!m§ + 2] = 1 - param3;
         this.§^!!§[§[!m§ + 3] = 1 - param4;
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
         this.§7;§ = §'$7§(fragmentProgramCodeColor,vertexShader);
         this.§+$=§ = §'$7§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§&$=§ = §'$7§(fragmentProgramCodeMask,vertexShader);
         this.§1%§ = §'$7§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§8#$§ = §'$7§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§,"K§ = §'$7§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§5%§ = §'$7§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§ <§ = §'$7§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^!?§,param2.§@#p§);
      }
      
      private function §]!!§(param1:Number, param2:Number) : void
      {
         this.§3!-§[PIXEL_1_OFFSET + 0] = 0;
         this.§3!-§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§3!-§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§3!-§[PIXEL_2_OFFSET + 1] = 0;
         this.§3!-§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§3!-§[PIXEL_3_OFFSET + 1] = 0;
         this.§3!-§[PIXEL_4_OFFSET + 0] = 0;
         this.§3!-§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§""F§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§9I§ / this.§#3§,param2.§6!"§ / this.§!""§);
         this.§]!!§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§^!!§,§1!i§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§3!-§,§5$6§);
         if(!this.§!$6§ || !this.§!$6§.texture)
         {
            this.§`§(param2);
         }
         else
         {
            this.§ #'§(param2);
         }
         param2.§]y§ = this.§<">§;
      }
      
      private function §`§(param1:§""F§) : void
      {
         if(!this.§<">§)
         {
            if(!this.§>$3§)
            {
               param1.§?#5§(this.§7;§);
            }
            else
            {
               param1.§?#5§(this.§8#$§);
            }
         }
         else if(!this.§>$3§)
         {
            param1.§?#5§(this.§+$=§);
         }
         else
         {
            param1.§?#5§(this.§,"K§);
         }
      }
      
      private function § #'§(param1:§""F§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§!$6§.texture.getBase(_loc2_));
         if(!this.§<">§)
         {
            if(!this.§>$3§)
            {
               param1.§?#5§(this.§&$=§);
            }
            else
            {
               param1.§?#5§(this.§5%§);
            }
         }
         else if(!this.§>$3§)
         {
            param1.§?#5§(this.§1%§);
         }
         else
         {
            param1.§?#5§(this.§ <§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§""F§, param3:Texture) : void
      {
         param2.context.setTextureAt(1,null);
         param2.§]y§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§<">§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§""F§, param3:Number) : void
      {
         if(!this.§<">§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§&"!§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§&"!§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§""F§, param3:Boolean, param4:Number, param5:Texture) : §6!`§
      {
         if(!this.§<">§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §<">§(param1:Boolean) : void
      {
         this.§-]§ = param1;
      }
      
      public function get §<">§() : Boolean
      {
         return this.§-]§;
      }
      
      public function set §>$3§(param1:Boolean) : void
      {
         this.§5q§ = param1;
      }
      
      public function get §>$3§() : Boolean
      {
         return this.§5q§ && this.§8#$§ != null && this.§,"K§ != null && this.§5%§ != null && this.§ <§ != null;
      }
   }
}
