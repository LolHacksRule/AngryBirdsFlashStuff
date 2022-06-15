package §"#k§
{
   import §,#e§.§;!`§;
   import §-#]§.Texture;
   import flash.geom.Matrix;
   
   public class §8"3§
   {
       
      
      public var sortValue:Number;
      
      public var §9,§:§;!`§;
      
      public var §#!F§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §4"b§:Matrix;
      
      public var blendMode:int;
      
      public function §8"3§()
      {
         super();
         this.§4"b§ = new Matrix();
      }
      
      public function §!!5§(param1:§;!`§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§9,§ = param1;
         this.§#!F§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§4"b§.a = param5.a;
         this.§4"b§.b = param5.b;
         this.§4"b§.c = param5.c;
         this.§4"b§.d = param5.d;
         this.§4"b§.tx = param5.tx;
         this.§4"b§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
