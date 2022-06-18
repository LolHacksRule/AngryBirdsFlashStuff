package §,k§
{
   import §&!v§.DisplayObject;
   import §&!v§.Stage;
   import §-"+§.Texture;
   import §9+§.§]"+§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §9"!§ extends §!=§
   {
       
      
      private var §>!R§:Program3D;
      
      private var § $ §:Vector.<Number>;
      
      public function §9"!§()
      {
         this.§ $ § = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§>!R§ = §5!6§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§^#5§,param2.§,#A§);
      }
      
      override protected function activate(param1:int, param2:§]"+§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§ $ §);
         param2.§<$3§(this.§>!R§);
      }
      
      public function get texture() : Texture
      {
         return §?"o§;
      }
   }
}
