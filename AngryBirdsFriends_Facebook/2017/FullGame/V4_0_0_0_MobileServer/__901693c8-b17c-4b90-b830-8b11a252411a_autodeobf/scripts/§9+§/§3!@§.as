package §9+§
{
   import §&!v§.§0"s§;
   import §-"+§.Texture;
   import flash.geom.Matrix;
   
   public class §3!@§
   {
       
      
      public var sortValue:Number;
      
      public var §1S§:§0"s§;
      
      public var §0Z§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §]!l§:Matrix;
      
      public var blendMode:int;
      
      public function §3!@§()
      {
         super();
         this.§]!l§ = new Matrix();
      }
      
      public function §`"x§(param1:§0"s§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§1S§ = param1;
         this.§0Z§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§]!l§.a = param5.a;
         this.§]!l§.b = param5.b;
         this.§]!l§.c = param5.c;
         this.§]!l§.d = param5.d;
         this.§]!l§.tx = param5.tx;
         this.§]!l§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
