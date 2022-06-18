package §&I§
{
   import §&!7§.Texture;
   import §->§.§7d§;
   import §<§.§46§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5!6§ extends §?!§
   {
       
      
      private var §`!>§:BitmapData;
      
      private var §"T§:int = 0;
      
      private var §;#§:int = 0;
      
      private var §?X§:Number = 1.0;
      
      private var §=h§:Number = 1.0;
      
      private var §#!+§:BitmapData;
      
      private var § !+§:Vector.<Number>;
      
      private var §>]§:Matrix;
      
      private var §%R§:ColorTransform;
      
      public function §5!6§()
      {
         this.§ !+§ = new Vector.<Number>(16);
         this.§>]§ = new Matrix();
         this.§%R§ = new ColorTransform();
         super();
         this.§#!+§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`!>§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§#!+§)
         {
            this.§#!+§.dispose();
            this.§#!+§ = null;
         }
      }
      
      override public function batchQuad(param1:§7d§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`!>§)
         {
            §[!'§.copyRawDataTo(this.§ !+§,0);
            this.§>]§.setTo(this.§ !+§[0],this.§ !+§[1],this.§ !+§[4],this.§ !+§[5],this.§ !+§[12],this.§ !+§[13]);
            this.§>]§.scale(this.§?X§,this.§=h§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§%R§).redMultiplier = §46§.§+!A§(_loc5_) / 255;
               _loc6_.greenMultiplier = §46§.§8!-§(_loc5_) / 255;
               _loc6_.blueMultiplier = §46§.§4-§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§%R§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§#!+§.setPixel(0,0,param1.color);
               _loc7_ = this.§#!+§;
               this.§>]§.a *= param1.initialWidth;
               this.§>]§.b *= param1.initialWidth;
               this.§>]§.c *= param1.initialHeight;
               this.§>]§.d *= param1.initialHeight;
            }
            this.§`!>§.draw(_loc7_,this.§>]§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`!>§)
         {
            if(this.§`!>§.width != this.§"T§ || this.§`!>§.height != this.§;#§)
            {
               this.§`!>§.dispose();
               this.§`!>§ = null;
            }
            else
            {
               this.§`!>§.fillRect(this.§`!>§.rect,4278190080 | param2);
            }
         }
         if(this.§`!>§ == null && this.§"T§ > 0 && this.§;#§ > 0)
         {
            this.§`!>§ = new BitmapData(this.§"T§,this.§;#§,true,4278190080 | param2);
         }
         if(this.§`!>§)
         {
            this.§`!>§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`!>§)
         {
            this.§`!>§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§"T§ = param1;
         this.§;#§ = param2;
         this.§?X§ = param3;
         this.§=h§ = param4;
      }
   }
}
