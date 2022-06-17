package §]"P§
{
   import §!6§.§4";§;
   import §""'§.Texture;
   import flash.geom.Matrix;
   
   public class §5#o§
   {
       
      
      public var sortValue:Number;
      
      public var §8$<§:§4";§;
      
      public var §1" §:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §'"[§:Matrix;
      
      public var blendMode:int;
      
      public function §5#o§()
      {
         super();
         this.§'"[§ = new Matrix();
      }
      
      public function §<!Q§(param1:§4";§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§8$<§ = param1;
         this.§1" § = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§'"[§.a = param5.a;
         this.§'"[§.b = param5.b;
         this.§'"[§.c = param5.c;
         this.§'"[§.d = param5.d;
         this.§'"[§.tx = param5.tx;
         this.§'"[§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
