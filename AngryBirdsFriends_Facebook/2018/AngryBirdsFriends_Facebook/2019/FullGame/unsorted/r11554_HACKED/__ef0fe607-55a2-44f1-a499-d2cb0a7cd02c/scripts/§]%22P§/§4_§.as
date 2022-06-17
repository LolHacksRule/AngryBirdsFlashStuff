package §]"P§
{
   import §!6§.§4";§;
   import §""'§.Texture;
   import §#"l§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §4_§ extends §4!9§
   {
       
      
      private var § $"§:BitmapData;
      
      private var §&4§:int = 0;
      
      private var §1m§:int = 0;
      
      private var §=w§:Number = 1.0;
      
      private var §"#P§:Number = 1.0;
      
      private var §5"P§:BitmapData;
      
      private var §=#D§:Vector.<Number>;
      
      private var §2#_§:Matrix;
      
      private var §3$ §:ColorTransform;
      
      public function §4_§()
      {
         this.§=#D§ = new Vector.<Number>(16);
         this.§2#_§ = new Matrix();
         this.§3$ § = new ColorTransform();
         super();
         this.§5"P§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§ $"§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§5"P§)
         {
            this.§5"P§.dispose();
            this.§5"P§ = null;
         }
      }
      
      override public function batchQuad(param1:§4";§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§ $"§)
         {
            this.§2#_§.copyFrom(§'"[§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3$ §).redMultiplier = Color.§1"M§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§%"i§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§ !Y§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3$ §).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§5"P§.setPixel(0,0,param1.color);
               _loc7_ = this.§5"P§;
               this.§2#_§.a *= param1.width;
               this.§2#_§.b *= param1.width;
               this.§2#_§.c *= param1.height;
               this.§2#_§.d *= param1.height;
            }
            this.§ $"§.draw(_loc7_,this.§2#_§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§ $"§)
         {
            if(this.§ $"§.width != this.§&4§ || this.§ $"§.height != this.§1m§)
            {
               this.§ $"§.dispose();
               this.§ $"§ = null;
            }
            else
            {
               this.§ $"§.fillRect(this.§ $"§.rect,4278190080 | param2);
            }
         }
         if(this.§ $"§ == null && this.§&4§ > 0 && this.§1m§ > 0)
         {
            this.§ $"§ = new BitmapData(this.§&4§,this.§1m§,true,4278190080 | param2);
         }
         if(this.§ $"§)
         {
            this.§ $"§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§ $"§)
         {
            this.§ $"§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§&4§ = param1;
         this.§1m§ = param2;
         this.§=w§ = param3;
         this.§"#P§ = param4;
      }
   }
}
