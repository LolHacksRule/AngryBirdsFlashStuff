package §[!_§
{
   import §"#k§.§79§;
   import §,#e§.DisplayObject;
   import §,#e§.Stage;
   import §-#]§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §2" § extends §`#!§
   {
       
      
      private var §>$'§:Program3D;
      
      private var §+!o§:Vector.<Number>;
      
      public function §2" §()
      {
         this.§+!o§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§>$'§ = §[!U§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§ ,§,param2.§8I§);
      }
      
      override protected function activate(param1:int, param2:§79§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§+!o§);
         param2.§"!§(this.§>$'§);
      }
      
      public function get texture() : Texture
      {
         return §&#U§;
      }
   }
}
