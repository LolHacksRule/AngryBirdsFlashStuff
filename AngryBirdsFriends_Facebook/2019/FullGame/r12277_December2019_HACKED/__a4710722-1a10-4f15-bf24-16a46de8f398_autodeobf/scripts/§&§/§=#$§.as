package §&§#8
{
   import §""4§.Texture;
   import §#Z§.§6J§;
   import flash.geom.Matrix;
   
   public class §=#$§
   {
       
      
      public var sortValue:Number;
      
      public var §"K§:§6J§;
      
      public var §,"s§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §5P§:Matrix;
      
      public var blendMode:int;
      
      public function §=#$§()
      {
         super();
         this.§5P§ = new Matrix();
      }
      
      public function §,#T§(param1:§6J§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§"K§ = param1;
         this.§,"s§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§5P§.a = param5.a;
         this.§5P§.b = param5.b;
         this.§5P§.c = param5.c;
         this.§5P§.d = param5.d;
         this.§5P§.tx = param5.tx;
         this.§5P§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
