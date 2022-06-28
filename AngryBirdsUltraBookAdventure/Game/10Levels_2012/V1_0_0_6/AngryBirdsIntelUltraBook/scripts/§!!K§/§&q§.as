package §!!K§
{
   import §4>§.Texture;
   import §7!B§.§;R§;
   import §9!k§.§46§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §&q§ extends §?%§
   {
       
      
      private var § !j§:BitmapData;
      
      private var §&!@§:int = 0;
      
      private var §3]§:int = 0;
      
      private var §1!x§:Number = 1.0;
      
      private var §@!Y§:Number = 1.0;
      
      private var §<e§:BitmapData;
      
      private var §#!F§:Vector.<Number>;
      
      private var §;!r§:Matrix;
      
      private var §+F§:ColorTransform;
      
      public function §&q§()
      {
         this.§#!F§ = new Vector.<Number>(16);
         this.§;!r§ = new Matrix();
         this.§+F§ = new ColorTransform();
         super();
         this.§<e§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§ !j§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<e§)
         {
            this.§<e§.dispose();
            this.§<e§ = null;
         }
      }
      
      override public function batchQuad(param1:§;R§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§ !j§)
         {
            §%u§.copyRawDataTo(this.§#!F§,0);
            this.§;!r§.setTo(this.§#!F§[0],this.§#!F§[1],this.§#!F§[4],this.§#!F§[5],this.§#!F§[12],this.§#!F§[13]);
            this.§;!r§.scale(this.§1!x§,this.§@!Y§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+F§).redMultiplier = §46§.§'!'§(_loc5_) / 255;
               _loc6_.greenMultiplier = §46§.§1!U§(_loc5_) / 255;
               _loc6_.blueMultiplier = §46§.§[]§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+F§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<e§.setPixel(0,0,param1.color);
               _loc7_ = this.§<e§;
               this.§;!r§.a *= param1.§9!m§;
               this.§;!r§.b *= param1.§9!m§;
               this.§;!r§.c *= param1.§;+§;
               this.§;!r§.d *= param1.§;+§;
            }
            this.§ !j§.draw(_loc7_,this.§;!r§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§ !j§)
         {
            if(this.§ !j§.width != this.§&!@§ || this.§ !j§.height != this.§3]§)
            {
               this.§ !j§.dispose();
               this.§ !j§ = null;
            }
            else
            {
               this.§ !j§.fillRect(this.§ !j§.rect,4278190080 | param2);
            }
         }
         if(this.§ !j§ == null && this.§&!@§ > 0 && this.§3]§ > 0)
         {
            this.§ !j§ = new BitmapData(this.§&!@§,this.§3]§,true,4278190080 | param2);
         }
         if(this.§ !j§)
         {
            this.§ !j§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§ !j§)
         {
            this.§ !j§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§&!@§ = param1;
         this.§3]§ = param2;
         this.§1!x§ = param3;
         this.§@!Y§ = param4;
      }
   }
}
