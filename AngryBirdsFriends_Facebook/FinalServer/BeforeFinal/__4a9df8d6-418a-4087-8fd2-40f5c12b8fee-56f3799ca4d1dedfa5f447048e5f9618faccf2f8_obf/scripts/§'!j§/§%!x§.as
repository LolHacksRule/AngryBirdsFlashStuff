package §'!j§
{
   import §"#z§.Texture;
   import §6#H§.§,"$§;
   import flash.geom.Matrix;
   
   public class §%!x§
   {
       
      
      public var sortValue:Number;
      
      public var §#I§:§,"$§;
      
      public var §-#c§:Number;
      
      public var texture:Texture;
      
      public var smoothing:int;
      
      public var §1$%§:Matrix;
      
      public var blendMode:int;
      
      public function §%!x§()
      {
         super();
         this.§1$%§ = new Matrix();
      }
      
      public function §@&§(param1:§,"$§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         this.sortValue = param1.sortValue;
         this.§#I§ = param1;
         this.§-#c§ = param2;
         this.texture = param3;
         this.smoothing = param4;
         this.§1$%§.a = param5.a;
         this.§1$%§.b = param5.b;
         this.§1$%§.c = param5.c;
         this.§1$%§.d = param5.d;
         this.§1$%§.tx = param5.tx;
         this.§1$%§.ty = param5.ty;
         this.blendMode = param6;
      }
   }
}
