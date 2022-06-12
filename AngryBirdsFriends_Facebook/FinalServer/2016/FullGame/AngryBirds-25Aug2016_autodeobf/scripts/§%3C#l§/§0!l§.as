package §<#l§
{
   import §1&§.Texture;
   import §9$§.DisplayObject;
   import §9$§.Stage;
   import §^a§.§'"1§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §0!l§ extends §+"i§
   {
       
      
      private var §?"C§:Program3D;
      
      private var §"$3§:Vector.<Number>;
      
      public function §0!l§()
      {
         this.§"$3§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§?"C§ = §%#_§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^"p§,param2.§4"O§);
      }
      
      override protected function activate(param1:int, param2:§'"1§, param3:Texture) : void
      {
         param2.context.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§"$3§);
         param2.§0#0§(this.§?"C§);
      }
      
      public function get texture() : Texture
      {
         return §0!@§;
      }
   }
}
