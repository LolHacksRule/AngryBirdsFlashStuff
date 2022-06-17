package §3!"§
{
   import §!6§.§9$'§;
   import §!6§.DisplayObject;
   import §!6§.Stage;
   import §""'§.Texture;
   import §]"P§.§4!9§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §%"'§ extends §&!Q§
   {
      
      private static const §?#O§:int = 0;
      
      private static const §["P§:int = 4;
      
      private static const §9#_§:int = 8;
      
      private static const §7"'§:int = 12;
      
      private static const PIXEL_1_OFFSET:int = 8;
      
      private static const PIXEL_2_OFFSET:int = 12;
      
      private static const PIXEL_3_OFFSET:int = 16;
      
      private static const PIXEL_4_OFFSET:int = 20;
      
      private static const §1#3§:int = 5;
      
      private static const §,#z§:int = 6;
       
      
      private var §&K§:Vector.<Number>;
      
      private var §[#7§:Vector.<Number>;
      
      private var §-"+§:Program3D;
      
      private var §[!L§:Program3D;
      
      private var §#"P§:Program3D;
      
      private var §0#b§:Program3D;
      
      private var §<!,§:Program3D;
      
      private var §8#0§:Program3D;
      
      private var §4#^§:Program3D;
      
      private var §;!c§:Program3D;
      
      private var §<t§:§"!'§;
      
      private var §4%§:Boolean = false;
      
      private var §@#2§:Boolean = false;
      
      private var §5#B§:Number = 0.0;
      
      private var §'@§:Number = 0.0;
      
      public function §%"'§(param1:Number, param2:Number)
      {
         this.§&K§ = new <Number>[1,1,1,1,0,0,0,0.001,0,0,0,0,1,1,1,1,0.2,0.2,0.2,0.2];
         this.§[#7§ = new <Number>[0.5,-0.5,0,0,0.5,0.5,0,0,0,-1,0,0,-1,0,0,0,1,0,0,0,0,1,0,0];
         super();
         this.§5#B§ = param1;
         this.§'@§ = param2;
      }
      
      override public function dispose() : void
      {
         var _loc2_:Program3D = null;
         var _loc1_:Array = [this.§-"+§,this.§[!L§,this.§#"P§,this.§0#b§,this.§<!,§,this.§8#0§,this.§4#^§,this.§;!c§];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_)
            {
               _loc2_.dispose();
            }
         }
         this.§-"+§ = null;
         this.§[!L§ = null;
         this.§#"P§ = null;
         this.§0#b§ = null;
         this.§<!,§ = null;
         this.§8#0§ = null;
         this.§4#^§ = null;
         this.§;!c§ = null;
         super.dispose();
      }
      
      public function set §%@§(param1:§"!'§) : void
      {
         this.§<t§ = param1;
      }
      
      public function §'#o§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&K§[§?#O§ + 0] = param1;
         this.§&K§[§?#O§ + 1] = param2;
         this.§&K§[§?#O§ + 2] = param3;
         this.§&K§[§?#O§ + 3] = param4;
      }
      
      public function §-$$§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&K§[§9#_§ + 0] = param1;
         this.§&K§[§9#_§ + 1] = param2;
         this.§&K§[§9#_§ + 2] = param3;
         this.§&K§[§9#_§ + 3] = param4;
         this.§&K§[§7"'§ + 0] = 1 - param1;
         this.§&K§[§7"'§ + 1] = 1 - param2;
         this.§&K§[§7"'§ + 2] = 1 - param3;
         this.§&K§[§7"'§ + 3] = 1 - param4;
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
         this.§-"+§ = §`!Z§(fragmentProgramCodeColor,vertexShader);
         this.§#"P§ = §`!Z§(fragmentProgramCodeColor,vertexShaderDirect);
         this.§<!,§ = §`!Z§(fragmentProgramCodeMask,vertexShader);
         this.§4#^§ = §`!Z§(fragmentProgramCodeMask,vertexShaderDirect);
         try
         {
            this.§[!L§ = §`!Z§(fragmentProgramCodeColorAntiAlias,vertexShaderAntiAlias);
            this.§0#b§ = §`!Z§(fragmentProgramCodeColorAntiAlias,vertexShaderDirectAntiAlias);
            this.§8#0§ = §`!Z§(fragmentProgramCodeMaskAntiAlias,vertexShaderAntiAlias);
            this.§;!c§ = §`!Z§(fragmentProgramCodeMaskAntiAlias,vertexShaderDirectAntiAlias);
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§>!!§,param2.§&!n§);
      }
      
      private function §0!a§(param1:Number, param2:Number) : void
      {
         this.§[#7§[PIXEL_1_OFFSET + 0] = 0;
         this.§[#7§[PIXEL_1_OFFSET + 1] = -1 / param2;
         this.§[#7§[PIXEL_2_OFFSET + 0] = -1 / param1;
         this.§[#7§[PIXEL_2_OFFSET + 1] = 0;
         this.§[#7§[PIXEL_3_OFFSET + 0] = 1 / param1;
         this.§[#7§[PIXEL_3_OFFSET + 1] = 0;
         this.§[#7§[PIXEL_4_OFFSET + 0] = 0;
         this.§[#7§[PIXEL_4_OFFSET + 1] = 1 / param2;
      }
      
      override protected function activate(param1:int, param2:§4!9§, param3:Texture) : void
      {
         var _loc4_:Number = Math.max(param2.§&"7§ / this.§5#B§,param2.§?J§ / this.§'@§);
         this.§0!a§(2048 * _loc4_,2048 * _loc4_);
         var _loc5_:Context3D;
         (_loc5_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§&K§,§1#3§);
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,5,this.§[#7§,§,#z§);
         if(!this.§<t§ || !this.§<t§.texture)
         {
            this.§ 9§(param2);
         }
         else
         {
            this.§^$;§(param2);
         }
         param2.§,"g§ = this.§1#e§;
      }
      
      private function § 9§(param1:§4!9§) : void
      {
         if(!this.§1#e§)
         {
            if(!this.§;!5§)
            {
               param1.§=h§(this.§-"+§);
            }
            else
            {
               param1.§=h§(this.§[!L§);
            }
         }
         else if(!this.§;!5§)
         {
            param1.§=h§(this.§#"P§);
         }
         else
         {
            param1.§=h§(this.§0#b§);
         }
      }
      
      private function §^$;§(param1:§4!9§) : void
      {
         var _loc2_:Context3D = param1.context;
         _loc2_.setTextureAt(1,this.§<t§.texture.getBase(_loc2_));
         if(!this.§1#e§)
         {
            if(!this.§;!5§)
            {
               param1.§=h§(this.§<!,§);
            }
            else
            {
               param1.§=h§(this.§8#0§);
            }
         }
         else if(!this.§;!5§)
         {
            param1.§=h§(this.§4#^§);
         }
         else
         {
            param1.§=h§(this.§;!c§);
         }
      }
      
      override protected function deactivate(param1:int, param2:§4!9§, param3:Texture) : void
      {
         param2.context.setTextureAt(1,null);
         param2.§,"g§ = false;
      }
      
      override protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         if(!this.§1#e§)
         {
            super.updateBuffersAndTextures(param1,param2);
         }
      }
      
      override protected function renderDisplayObject(param1:DisplayObject, param2:§4!9§, param3:Number) : void
      {
         if(!this.§1#e§)
         {
            super.renderDisplayObject(param1,param2,param3);
         }
         else
         {
            param2.§%"6§();
            this.activate(0,param2,null);
            param1.render(param2,param3);
            param2.§%"6§();
            this.deactivate(0,param2,null);
         }
      }
      
      override protected function renderFilter(param1:DisplayObject, param2:§4!9§, param3:Boolean, param4:Number, param5:Texture) : §9$'§
      {
         if(!this.§1#e§)
         {
            return super.renderFilter(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      public function set §1#e§(param1:Boolean) : void
      {
         this.§4%§ = param1;
      }
      
      public function get §1#e§() : Boolean
      {
         return this.§4%§;
      }
      
      public function set §;!5§(param1:Boolean) : void
      {
         this.§@#2§ = param1;
      }
      
      public function get §;!5§() : Boolean
      {
         return this.§@#2§ && this.§[!L§ != null && this.§0#b§ != null && this.§8#0§ != null && this.§;!c§ != null;
      }
   }
}
