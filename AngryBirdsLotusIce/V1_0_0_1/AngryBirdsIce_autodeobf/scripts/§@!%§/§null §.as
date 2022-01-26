package §@!%§
{
   import §%?§.Texture;
   import §5!3§.§%F§;
   import §@!=§.§4G§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §null § extends §]A§
   {
       
      
      private var §9e§:BitmapData;
      
      private var §5e§:int = 0;
      
      private var §4X§:int = 0;
      
      private var §,<§:Number = 1.0;
      
      private var §`^§:Number = 1.0;
      
      private var §"7§:BitmapData;
      
      private var §4!F§:Vector.<Number>;
      
      private var § a§:Matrix;
      
      private var §=1§:ColorTransform;
      
      public function §null §()
      {
         this.§4!F§ = new Vector.<Number>(16);
         this.§ a§ = new Matrix();
         this.§=1§ = new ColorTransform();
         super();
         this.§"7§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§9e§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§"7§)
         {
            this.§"7§.dispose();
            this.§"7§ = null;
         }
      }
      
      override public function batchQuad(param1:§4G§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§9e§)
         {
            §]!+§.copyRawDataTo(this.§4!F§,0);
            this.§ a§.setTo(this.§4!F§[0],this.§4!F§[1],this.§4!F§[4],this.§4!F§[5],this.§4!F§[12],this.§4!F§[13]);
            this.§ a§.scale(this.§,<§,this.§`^§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§=1§).redMultiplier = §%F§.§%!8§(_loc5_) / 255;
               _loc6_.greenMultiplier = §%F§.§1!;§(_loc5_) / 255;
               _loc6_.blueMultiplier = §%F§.§`!6§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§=1§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§"7§.setPixel(0,0,param1.color);
               _loc7_ = this.§"7§;
               this.§ a§.a *= param1.§',§;
               this.§ a§.b *= param1.§',§;
               this.§ a§.c *= param1.§5s§;
               this.§ a§.d *= param1.§5s§;
            }
            this.§9e§.draw(_loc7_,this.§ a§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§9e§)
         {
            if(this.§9e§.width != this.§5e§ || this.§9e§.height != this.§4X§)
            {
               this.§9e§.dispose();
               this.§9e§ = null;
            }
            else
            {
               this.§9e§.fillRect(this.§9e§.rect,4278190080 | param2);
            }
         }
         if(this.§9e§ == null && this.§5e§ > 0 && this.§4X§ > 0)
         {
            this.§9e§ = new BitmapData(this.§5e§,this.§4X§,true,4278190080 | param2);
         }
         if(this.§9e§)
         {
            this.§9e§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§9e§)
         {
            this.§9e§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§5e§ = param1;
         this.§4X§ = param2;
         this.§,<§ = param3;
         this.§`^§ = param4;
      }
   }
}
