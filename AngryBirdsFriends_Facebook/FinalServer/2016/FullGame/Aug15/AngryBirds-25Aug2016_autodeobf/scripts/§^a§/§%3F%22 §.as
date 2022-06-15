package §^a§
{
   import §1&§.Texture;
   import §9$§.§],§;
   import flash.geom.Matrix;
   
   public class §?" §
   {
       
      
      public var sortValue:Number;
      
      public var §9#"§:§],§;
      
      public var §@"h§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §?!@§:Matrix;
      
      public var blendMode:int;
      
      public function §?" §()
      {
         super();
         this.§?!@§ = new Matrix();
      }
      
      public function §,$-§(param1:§],§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§9#"§ = param1;
         this.§@"h§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§?!@§.a = param5.a;
         this.§?!@§.b = param5.b;
         this.§?!@§.c = param5.c;
         this.§?!@§.d = param5.d;
         this.§?!@§.tx = param5.tx;
         this.§?!@§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
