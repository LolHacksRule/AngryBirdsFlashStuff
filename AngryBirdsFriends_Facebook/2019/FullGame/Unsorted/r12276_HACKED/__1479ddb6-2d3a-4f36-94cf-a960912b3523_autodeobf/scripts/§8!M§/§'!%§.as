package §8!M§
{
   import §""4§.Texture;
   import §#Z§.DisplayObject;
   import §#Z§.Stage;
   import §&§.§""F§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §'!%§ extends §07§
   {
       
      
      private var §&$3§:Program3D;
      
      private var §9$'§:Vector.<Number>;
      
      public function §'!%§()
      {
         this.§9$'§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§&$3§ = §'$7§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^!?§,param2.§@#p§);
      }
      
      override protected function activate(param1:int, param2:§""F§, param3:Texture) : void
      {
         param2.context.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§9$'§);
         param2.§?#5§(this.§&$3§);
      }
      
      public function get texture() : Texture
      {
         return §^!L§;
      }
   }
}
