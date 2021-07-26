package §?$%§
{
   import §"#z§.Texture;
   import §'!j§.§^$$§;
   import §6#H§.DisplayObject;
   import §6#H§.Stage;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §3#5§ extends §&"@§
   {
       
      
      private var §?A§:Program3D;
      
      private var §`#W§:Vector.<Number>;
      
      public function §3#5§()
      {
         this.§`#W§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§?A§ = §1"T§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§!"b§,param2.§<"3§);
      }
      
      override protected function activate(param1:int, param2:§^$$§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§`#W§);
         param2.§8$C§(this.§?A§);
      }
      
      public function get texture() : Texture
      {
         return §<"a§;
      }
   }
}
