package §9!<§
{
   import §9$;§.Texture;
   import §?"e§.§[!Z§;
   import §^"S§.DisplayObject;
   import §^"S§.Stage;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Rectangle;
   
   public class §5$@§ extends §-!_§
   {
       
      
      private var §]#;§:Program3D;
      
      private var §,!9§:Vector.<Number>;
      
      public function §5$@§()
      {
         this.§,!9§ = new <Number>[0.5,0.5,0.5,0.5];
         super();
      }
      
      override protected function createPrograms() : void
      {
         var _loc1_:* = "tex ft0, v0, fs0 <2d, clamp, linear, mipnearest>  \n" + "mul oc, ft0, fc0 \n";
         this.§]#;§ = §?"r§(_loc1_);
      }
      
      override protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         param4.setTo(0,0,param2.§0!§,param2.§53§);
      }
      
      override protected function activate(param1:int, param2:§[!Z§, param3:Texture) : void
      {
         var _loc4_:Context3D;
         (_loc4_ = param2.context).setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,this.§,!9§);
         param2.§5U§(this.§]#;§);
      }
      
      public function get texture() : Texture
      {
         return §;"Q§;
      }
   }
}
