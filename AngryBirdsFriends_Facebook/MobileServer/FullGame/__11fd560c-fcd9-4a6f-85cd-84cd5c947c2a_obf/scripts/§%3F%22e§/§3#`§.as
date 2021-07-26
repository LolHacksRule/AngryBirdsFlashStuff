package §?"e§
{
   import §9$;§.Texture;
   import §^"S§.§'#E§;
   import flash.geom.Matrix;
   
   public class §3#`§
   {
       
      
      public var sortValue:Number;
      
      public var §%!]§:§'#E§;
      
      public var §=#y§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §9!$§:Matrix;
      
      public var blendMode:int;
      
      public function §3#`§()
      {
         super();
         this.§9!$§ = new Matrix();
      }
      
      public function § $;§(param1:§'#E§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§%!]§ = param1;
         this.§=#y§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§9!$§.a = param5.a;
         this.§9!$§.b = param5.b;
         this.§9!$§.c = param5.c;
         this.§9!$§.d = param5.d;
         this.§9!$§.tx = param5.tx;
         this.§9!$§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
