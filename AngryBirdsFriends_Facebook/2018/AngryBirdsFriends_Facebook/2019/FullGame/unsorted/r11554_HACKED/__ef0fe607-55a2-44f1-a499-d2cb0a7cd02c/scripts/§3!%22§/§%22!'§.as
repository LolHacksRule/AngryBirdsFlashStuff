package §3!"§
{
   import §!6§.DisplayObject;
   import §!6§.Stage;
   import §""'§.Texture;
   import §]"P§.§4!9§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §"!'§ extends §&!Q§
   {
       
      
      private var §<!`§:Program3D;
      
      private var §@t§:Vector.<Number>;
      
      public function §"!'§()
      {
         this.§@t§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§<!`§ = §`!Z§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§>!!§,param2.§&!n§);
      }
      
      override protected function activate(param1:int, param2:§4!9§, param3:Texture) : void
      {
         param2.context.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§@t§);
         param2.§=h§(this.§<!`§);
      }
      
      public function get texture() : Texture
      {
         return §@!K§;
      }
   }
}
